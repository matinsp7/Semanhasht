#ifndef COST_H
#define COST_H

#include <vector>
#include "distance.hpp"


class Cost
{
public:
    Cost();
    std::vector <std::vector<std::pair<path, int>>> dijkstra(std::vector<std::vector<path>>, int);

private:
    int bus_cost;
    int subway_cost;
    int taxi_cost;

    int costi;
};

#endif // COST_H
