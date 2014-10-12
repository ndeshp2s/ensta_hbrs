#ifndef _INFLATION_SEMANTIC_COSTMAP_
#define _INFLATION_SEMANTIC_COSTMAP_

#include "semantic_costmap_global/semantic_costmap.h"

class InflationSemanticCostmap:public SemanticCostmap {
	
public:
	InflationSemanticCostmap();
	virtual ~InflationSemanticCostmap();
        virtual bool buildSemanticCostmap();
};
#endif
