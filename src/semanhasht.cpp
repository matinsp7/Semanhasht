#include "semanhasht.h"
#include <QGuiApplication>
#include <fstream>
#include <sstream>

using namespace std;

Semanhasht::Semanhasht(QObject *parent) 
    : QObject{parent}
{
    ifstream file("../Semanhasht/files/distanceList.txt");
    if (file.is_open()){
        string line;
        while (getline(file, line)) {
            istringstream iss(line);
            string token;
            vector<path> currentPaths;
            while (getline(iss, token, '$')) {
                istringstream pathStream(token);
                path instancePath;
                pathStream >> instancePath.start;
                pathStream.ignore();
                pathStream >> instancePath.end;
                pathStream.ignore();
                pathStream >> instancePath.length;
                pathStream.ignore();
                pathStream >> instancePath.tp;
                if (instancePath.tp/10 == 2){ // It includes both subway and taxi
                    path instancePath2; //subway
                    instancePath2.start = instancePath.start;
                    instancePath2.end = instancePath.end;
                    instancePath2.length = instancePath.length;
                    instancePath2.tp = instancePath.tp + 10;
                    currentPaths.push_back(instancePath2);
                }
                currentPaths.push_back(instancePath);
            }
            distance_data.push_back(currentPaths);
        }
        file.close();
    }
    else {
        cout << "Unable to open the file." << endl;
    }
}

void Semanhasht::set_objects(QObject* object, int start, int end){
    objects[start][end] = object;
    objects[end][start] = object;
    //cout << object->property("ali").toInt() << endl;
    objects2[start].push_back(object);
    objects2[end].push_back(object);
}


void Semanhasht::direction (int src, int end){
    //First calculate the shortest distance
    //distance_path = distance.dijkstra(src);
    //show_path(src, end, 1);
}

//It shows the path
//Type variable represents distance(1), cost(2) or time(3)
void Semanhasht::show_path (int src, int end, int type){
    int tst = end;
    if (type == 1){
        while (distance_path[tst] != src){
            objects[tst][distance_path[tst]]->setProperty("color" , "purple");
            tst = distance_path[tst];
        }
        objects[tst][distance_path[tst]]->setProperty("color" , "purple");
    }
}
