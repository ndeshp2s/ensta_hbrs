#ifndef SEMANTIC_COSTMAP
#define SEMANTIC_COSTMAP

class SemanticCostmap {
public:
	SemanticCostmap();
	virtual ~SemanticCostmap();

	virtual bool buildSemanticCostmap() = 0;
};

class InflationSemanticCostmap:public SemanticCostmap {
public:
	InflationSemanticCostmap();
	virtual ~InflationSemanticCostmap();

};

#endif
