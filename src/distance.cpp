#include "../include/distance.hpp"
#include <limits.h>


using namespace std;

Distance::Distance()
{
    ifstream reader;
    reader.open("../files/Matrix.txt", ios_base::in);
    if (reader.fail()) 
    {
    cout << "file read failed." << endl;
    }

    if (reader.is_open())
    {

        string   line;
        int i = 0;
        while(getline(reader, line) && i <= 58)
        {
            stringstream  lineStream(line);
            string value;

            int j= 0;
            while(lineStream >> value && j <= 58)
            {
                // assign first character to the type
                char temp = value[0] - 48;
                matrix[i][j].type = int(temp);

                // erasing the first character and then assign remaining characters to length
                value.erase(0, 1);
                matrix[i][j].length = stoi(value);
                
                j++;
            }
            i++;
        }
    }
    reader.close();
}

int minDistance(int dist[], bool sptSet[])
{

    int V = 59;

    // Initialize min value
    int min = INT_MAX, min_index;

    for (int v = 0; v < V; v++)
        if (sptSet[v] == false && dist[v] <= min)
            min = dist[v], min_index = v;

    return min_index;
}

// Function that implements Dijkstra's single source
// shortest path algorithm for a a represented using
// adjacency matrix representation
vector <int> Distance::dijkstra(int src, int end)
{
    int V = 59;
    vector <int> ans(V);
    int dist[V]; //dist[i] will hold the shortest
    // distance from src to i

    bool sptSet[V]; // sptSet[i] will be true if vertex i is
        // included in shortest
    // path tree or shortest distance from src to i is
    // finalized

    // Initialize all distances as INFINITE and stpSet[] as
    // false
    for (int i = 0; i < V; i++)
        dist[i] = INT_MAX, sptSet[i] = false;

    // Distance of source vertex from itself is always 0
    dist[src] = 0;

    // Find shortest path for all vertices
    for (int count = 0; count < V - 1; count++) {
        // Pick the minimum distance vertex from the set of
        // vertices not yet processed. u is always equal to
        // src in the first iteration.
        int u = minDistance(dist, sptSet);

        // Mark the picked vertex as processed
        sptSet[u] = true;

        // Update dist value of the adjacent vertices of the
        // picked vertex.
        for (int v = 0; v < V; v++)

            // Update dist[v] only if is not in sptSet,
            // there is an edge from u to v, and total
            // weight of path from src to v through u is
            // smaller than current value of dist[v]
            if (!sptSet[v] && matrix[u][v].length
                && dist[u] != INT_MAX
                && dist[u] + matrix[u][v].length < dist[v])
            {
                dist[v] = dist[u] + matrix[u][v].length;
                ans.at(v) = u;
            }
    }

    return ans;
}
