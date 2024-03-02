#include "best_time.h"
#include <vector>
#include <map>
#include <queue>
using namespace std;

Best_time::Best_time() {
    bus_time = 4;
    subway_time = 1;
    taxi_time = 2;
}

vector <vector<pair<path, int>>> Best_time::dijkstra(vector<vector<path>>distance_data, int src){
    int V = 59;
    vector <vector<pair<path, int>>> ans(V);

    //int dist[V]; 

    map <pair <int , int> , bool> visited;

    priority_queue<pair<int, pair<path, int>>, vector<pair<int, pair<path, int>>>, comparePairs> z;

    path x(src);

    z.push(make_pair(0, make_pair(x , 0)));


    while (!z.empty()) {

        if (visited [make_pair(z.top().second.first.end, z.top().second.first.tp)] == false){
            ans[z.top().second.first.end].push_back (make_pair((z.top().second.first) , z.top().second.second));
            visited [make_pair(z.top().second.first.end, z.top().second.first.tp)] = true;
            visited [make_pair(z.top().second.first.start, z.top().second.first.tp)] = true;
        }
        //the number of edges of the desired vertex
        int edg_num = distance_data[z.top().second.first.end].size();
        for (int i=0 ; i<edg_num; i++) {
            int cost_time;
            switch (distance_data[z.top().second.first.end][i].tp/10){
                case 1:
                    cost_time = distance_data[z.top().second.first.end][i].length * bus_time;
                    break;
                case 2:
                    cost_time = distance_data[z.top().second.first.end][i].length * taxi_time;
                    break;
                case 3:
                    cost_time = distance_data[z.top().second.first.end][i].length * subway_time;
                    break;
            }
            if (distance_data[z.top().second.first.end][i].tp != z.top().second.first.tp){
                switch (distance_data[z.top().second.first.end][i].tp/10){
                    case 1:
                        cost_time += bus_dilay;
                        break;
                    case 2:
                        cost_time += taxi_dilay;
                        break;
                    case 3:
                        cost_time += subway_dilay;
                        break;
                }
            }
            cost_time += z.top().first;
            if (visited [make_pair(distance_data[z.top().second.first.end][i].end, distance_data[z.top().second.first.end][i].tp)] == false ){
                z.push(make_pair(cost_time, make_pair(distance_data[z.top().second.first.end][i] , z.top().second.first.tp)));
            }
        }
        
        z.pop();
    }
    return ans;
}