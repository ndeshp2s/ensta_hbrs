#include <layers/inflate_objects.h>
#include <costmap_2d/costmap_math.h>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(semantic_costmap::InflateObjects, costmap_2d::Layer)


namespace semantic_costmap
{
   
  InflateObjects::InflateObjects()
    : inflation_radius_( 0 )
    , weight_( 0 )
    , cell_inflation_radius_(0)
    , cached_cell_inflation_radius_(0)
    , dsrv_(NULL)
    , seen_(NULL)
    , cached_costs_(NULL)
    , cached_distances_(NULL)
  {

  }
  
 // void InflateObjects::onInitialize(std::string name, double inflation_radius, double weight, costmap_2d::LayeredCostmap* parent)
  void InflateObjects::onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf, double inflation_radius, double weight)
  {
    layered_costmap_ = parent;
    name_ = name;
    tf_ = tf;

    inflation_radius_ = inflation_radius;
    weight_ = weight; 
    inscribed_radius_ = 0.38;

    //inflation_radius_ = 0.5;
    //weight_ = 10.0;  
    
    cell_inflation_radius_ = cellDistance(inflation_radius_); 
 
    ros::NodeHandle nh("~/" + name_), g_nh;
    current_ = true;

    seen_ = NULL;
    seen_size_ = 0;
    need_reinflation_ = false;

    cached_costs_ = NULL;
    cached_distances_ = NULL;

    matchSize();
    
    dsrv_ = NULL;
    setupDynamicReconfigure(nh);

    

  }

  InflateObjects::~InflateObjects()
  {
    if(dsrv_)
      delete dsrv_;  
  }

 
  void InflateObjects::setupDynamicReconfigure(ros::NodeHandle& nh)
  {
    dsrv_ = new dynamic_reconfigure::Server<costmap_2d::InflationPluginConfig>(nh);
   dynamic_reconfigure::Server<costmap_2d::InflationPluginConfig>::CallbackType cb = boost::bind(&InflateObjects::reconfigureCB, this, _1, _2);
   dsrv_->setCallback(cb);

  }

  void InflateObjects::reconfigureCB(costmap_2d::InflationPluginConfig &config, uint32_t level)
  {  
    //inflation_radius_ = 0.5;
   // weight_ = 10.0; 
    
   
    enabled_ = true;
    need_reinflation_ = true;
    computeCaches();
  }

  void InflateObjects::matchSize()
  {
    costmap_2d::Costmap2D* costmap = layered_costmap_->getCostmap();
    resolution_ = costmap->getResolution();
    cell_inflation_radius_ = cellDistance(inflation_radius_);
  //  computeCaches();

    unsigned int size_x = costmap->getSizeInCellsX(), size_y = costmap->getSizeInCellsY();

    if (seen_)
      delete[] seen_;

    seen_size_ = size_x * size_y;
    seen_ = new bool[seen_size_];
 
  }

  void InflateObjects::updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x, double* min_y, double* max_x, double* max_y)
  {
  //  matchSize();
    if( need_reinflation_ )
    {
      // For some reason when I make these -<double>::max() it does not
      // work with Costmap2D::worldToMapEnforceBounds(), so I'm using
      // -<float>::max() instead.
      *min_x = -std::numeric_limits<float>::max();
      *min_y = -std::numeric_limits<float>::max();
      *max_x = std::numeric_limits<float>::max();
      *max_y = std::numeric_limits<float>::max();
      need_reinflation_ = false;
    }
  }

  void InflateObjects::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j)
  {
  //  matchSize();
    unsigned char* master_array = master_grid.getCharMap();
    unsigned int size_x = master_grid.getSizeInCellsX(), size_y = master_grid.getSizeInCellsY();
    
    if (seen_ == NULL) {
      ROS_WARN("InflationLayer::updateCosts(): seen_ array is NULL");
      seen_size_ = size_x * size_y;
      seen_ = new bool[seen_size_];
    }

    else if (seen_size_ != size_x * size_y)
    {
      ROS_WARN("InflationLayer::updateCosts(): seen_ array size is wrong");
      delete[] seen_;
      seen_size_ = size_x * size_y;
      seen_ = new bool[seen_size_];
    }

    memset(seen_, false, size_x * size_y * sizeof(bool));
    // We need to include in the inflation cells outside the bounding
    // box min_i...max_j, by the amount cell_inflation_radius_. Cells
    // up to that distance outside the box can still influence the costs
    // stored in cells inside the box.
    min_i -= cell_inflation_radius_;
    min_j -= cell_inflation_radius_;
    max_i += cell_inflation_radius_;
    max_j += cell_inflation_radius_;
    min_i = std::max( 0, min_i );
    min_j = std::max( 0, min_j );
    max_i = std::min( int( size_x ), max_i );
    max_j = std::min( int( size_y ), max_j );

    for (int j = min_j; j < max_j; j++)
    {
      for (int i = min_i; i < max_i; i++)
      {
        int index = master_grid.getIndex(i, j);
        unsigned char cost = master_array[index];
        if (cost == LETHAL_OBSTACLE)
        {
          InflateObjects::enqueue(master_array, index, i, j, i, j);
        }
      }
    }

    while (!inflation_queue_.empty())
    {
      //get the highest priority cell and pop it off the priority queue
      const CellData& current_cell = inflation_queue_.top();
      unsigned int index = current_cell.index_;
      unsigned int mx = current_cell.x_;
      unsigned int my = current_cell.y_;
      unsigned int sx = current_cell.src_x_;
      unsigned int sy = current_cell.src_y_;

      //pop once we have our cell info
      inflation_queue_.pop();

      //attempt to put the neighbors of the current cell onto the queue
      if (mx > 0)
        enqueue(master_array, index - 1, mx - 1, my, sx, sy);
      if (my > 0)
        enqueue(master_array, index - size_x, mx, my - 1, sx, sy);
      if (mx < size_x - 1)
        enqueue(master_array, index + 1, mx + 1, my, sx, sy);
      if (my < size_y - 1)
        enqueue(master_array, index + size_x, mx, my + 1, sx, sy);
    }
  }

  inline void InflateObjects::enqueue(unsigned char* grid, unsigned int index, unsigned int mx, unsigned int my, unsigned int src_x, unsigned int src_y)
  {
    //set the cost of the cell being inserted
    if (!seen_[index])
    {
      //we compute our distance table one cell further than the inflation radius dictates so we can make the check below
      double distance = distanceLookup(mx, my, src_x, src_y);
      
      //we only want to put the cell in the queue if it is within the inflation radius of the obstacle point
      if (distance > cell_inflation_radius_)
        return;

      //assign the cost associated with the distance from an obstacle to the cell
      unsigned char cost = costLookup(mx, my, src_x, src_y);
      unsigned char old_cost = grid[index];

      if (old_cost == NO_INFORMATION && cost >= INSCRIBED_INFLATED_OBSTACLE)
        grid[index] = cost;

      else
        grid[index] = std::max(old_cost, cost);

      //push the cell data onto the queue and mark
      seen_[index] = true;
      CellData data(distance, index, mx, my, src_x, src_y);
      inflation_queue_.push(data);
    }

  }

  void InflateObjects::computeCaches()
  {
   
    if(cell_inflation_radius_ == 0)
      return;
    //based on the inflation radius... compute distance and cost caches
    if(cell_inflation_radius_ != cached_cell_inflation_radius_)
    {
      deleteKernels();
      cached_costs_ = new unsigned char*[cell_inflation_radius_ + 2];
      cached_distances_ = new double*[cell_inflation_radius_ + 2];

      for (unsigned int i = 0; i <= cell_inflation_radius_ + 1; ++i)
      {
        cached_costs_[i] = new unsigned char[cell_inflation_radius_ + 2];
        cached_distances_[i] = new double[cell_inflation_radius_ + 2];
        
        for (unsigned int j = 0; j <= cell_inflation_radius_ + 1; ++j)
        {
          cached_distances_[i][j] = hypot(i, j);
        }
      }

      cached_cell_inflation_radius_ = cell_inflation_radius_;
    }

    for (unsigned int i = 0; i <= cell_inflation_radius_ + 1; ++i)
    {
      for (unsigned int j = 0; j <= cell_inflation_radius_ + 1; ++j)
      {
        cached_costs_[i][j] = computeCost(cached_distances_[i][j]);
      }
    }

  }

  void InflateObjects::deleteKernels()
  {
    if (cached_distances_ != NULL)
    {
      for (unsigned int i = 0; i <= cached_cell_inflation_radius_ + 1; ++i)
      {
        if (cached_distances_[i])
	  delete[] cached_distances_[i];
      }
      if (cached_distances_)
        delete[] cached_distances_;
      cached_distances_ = NULL;
    }

    if (cached_costs_ != NULL)
    {
      for (unsigned int i = 0; i <= cached_cell_inflation_radius_ + 1; ++i)
      {
        if (cached_costs_[i])
          delete[] cached_costs_[i];
      }
      delete[] cached_costs_;
      cached_costs_ = NULL;
    }

   
  }

}
