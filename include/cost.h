#ifndef COST_H
#define COST_H

#include "semanhasht.h"

class Cost
{
public:
    Cost();
    std::vector <std::vector<std::pair<path, int>>> dijkstra(std::vector<std::vector<path>>, int);

private:
    int bus_cost;
    int subway_cost;
    int taxi_cost;
};

#endif // COST_H
