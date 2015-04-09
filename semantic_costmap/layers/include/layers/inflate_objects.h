#ifndef INFLATE_OBJECTS_H_
#define INFLATE_OBJECTS_H_

#include <costmap_2d/costmap_layer.h>
#include <costmap_2d/layered_costmap.h>
#include <costmap_2d/InflationPluginConfig.h>
#include <dynamic_reconfigure/server.h>
#include <queue>

using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::INSCRIBED_INFLATED_OBSTACLE;
using costmap_2d::NO_INFORMATION;

namespace semantic_costmap
{
  class CellData
  {
  public:
    CellData(double d, double i, unsigned int x, unsigned int y, unsigned int sx, unsigned int sy) :
            distance_(d), index_(i), x_(x), y_(y), src_x_(sx), src_y_(sy)
    {
    }
    double distance_;
    unsigned int index_;
    unsigned int x_, y_;
    unsigned int src_x_, src_y_;
  };

  inline bool operator<(const CellData &a, const CellData &b)
  {
    return a.distance_ > b.distance_;
  }


  class InflateObjects : public costmap_2d::CostmapLayer
  {
  public:

     InflateObjects();
    
     virtual ~InflateObjects();

     virtual void onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf, double inflation_radius, double weight);

     virtual void updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x, double* min_y, double* max_x, double* max_y);

     virtual void updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);

     virtual bool isDiscretized()
     {
	return true;
     }

     virtual void matchSize();

     virtual void reset() 
     { 
       //onInitialize(); 
     }

     void setupDynamicReconfigure(ros::NodeHandle& nh);

     inline unsigned char computeCost(double distance) const
     {
       unsigned char cost = 0;

       if (distance == 0)
         cost = costmap_2d::LETHAL_OBSTACLE;
       else if (distance * resolution_ <= inscribed_radius_)
         cost = costmap_2d::INSCRIBED_INFLATED_OBSTACLE;
       else
       {
	 //make sure cost falls off by Euclidean distance
	 double euclidean_distance = distance * resolution_;
	 double factor = exp(-1.0 * weight_ * (euclidean_distance - inscribed_radius_));
	 cost = (unsigned char)((costmap_2d::INSCRIBED_INFLATED_OBSTACLE - 1) * factor);
       }
	
       return cost;
     }

  protected:
    //virtual void onFootprintChanged();
    //boost::shared_mutex* access_;

  private:
  inline double distanceLookup(int mx, int my, int src_x, int src_y)
  {
    unsigned int dx = abs(mx - src_x);
    unsigned int dy = abs(my - src_y);
    return cached_distances_[dx][dy];
  }

  inline unsigned char costLookup(int mx, int my, int src_x, int src_y)
  {
    unsigned int dx = abs(mx - src_x);
    unsigned int dy = abs(my - src_y);
    return cached_costs_[dx][dy];
  }

  void deleteKernels();

   void computeCaches();

  //void inflate_area(int min_i, int min_j, int max_i, int max_j, unsigned char* master_grid);

  unsigned int cellDistance(double world_dist)
  {
    return layered_costmap_->getCostmap()->cellDistance(world_dist);
  }

  inline void enqueue(unsigned char* grid, unsigned int index, unsigned int mx, unsigned int my, unsigned int src_x, unsigned int src_y);

  double inflation_radius_, inscribed_radius_, weight_;
  unsigned int cell_inflation_radius_;
  unsigned int cached_cell_inflation_radius_;
  std::priority_queue<CellData> inflation_queue_;
  double resolution_;
  bool* seen_;
  int seen_size_;
  unsigned char** cached_costs_;
  double** cached_distances_;
  
//  costmap_2d::LayeredCostmap* layered_costmap_;
//  tf::TransformListener* tf_;


  dynamic_reconfigure::Server<costmap_2d::InflationPluginConfig> *dsrv_;

  void reconfigureCB(costmap_2d::InflationPluginConfig &config, uint32_t level);

  bool need_reinflation_; ///< Indicates that the entire costmap should be reinflated next time around.



  };

}
#endif
