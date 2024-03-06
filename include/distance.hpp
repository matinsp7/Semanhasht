#ifndef DISTANCE_H
#define DISTANCE_H

#include <vector>
#include <fstream>
#include <iostream>
#include <sstream>

struct path {
    int start, end, length, tp;
    path(){}
    path (int s){
        start=s ; end=s ; length=0; tp=0;
    }
    bool operator<(const std::pair<int , path> & other1) const {
        return true;
    }
};

struct comparePairs {
    bool operator()(const std::pair<int, std::pair <path, int>>& p1, const std::pair<int, std::pair<path, int>>& p2) {
        return p1.first > p2.first;  // Sort in descending order
    }
};

class Distance
{
public:
    // Distance ();
    std::vector <int> dijkstra(int);
    std::vector <std::vector<std::pair<path, int>>> dijkstra(const std::vector<std::vector<path>>&, const int &, const int &);

private:
    int total_cost{0};
    //path matrix [59][59];    
};

#endif // DISTANCE_H
