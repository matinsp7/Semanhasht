#include "semanhasht.h"
#include <QGuiApplication>
#include <fstream>
#include <sstream>
#include <iostream>

using namespace std;

void toLower(string &s){
    for(unsigned i{0}; i < s.length(); i++){
        s[i] = tolower(s[i]);
    }
}

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

    // Input Test index number please
    // const vector<path>& pathVector = distance_data[30];
    // for (const path& path2 : pathVector) {
    //     cout << "Start = " << path2.start << ", End = " << path2.end << ", Length = " << path2.length << ", TP = " << path2.tp << endl;}        cout << "-----" << endl;}
}

void Semanhasht::set_objects(QObject* object, int start, int end){
    static int a=0;
    objects[start][end] = object;
    objects[end][start] = object;
    //cout << object->property("ali").toInt() << endl;
    objects2[start].push_back(object);
    objects2[end].push_back(object);
    //Q_OBJECT ss = &object;
}

void Semanhasht::set_map(const QString &station, const int &index){
    string Sstation = station.toStdString();

    toLower(Sstation);
    stationToIndex[Sstation] = index+1;
}

//هf the station is available, it returns its index, otherwise -1
int Semanhasht::check_station_validation(const QString& station){
    string Sstation = station.toStdString();
    toLower(Sstation);
    return stationToIndex[Sstation] ? (stationToIndex[Sstation]-1) : -1;
}

void Semanhasht::direction (int src, int end){
    //First calculate the shortest distance
    //distance_path = distance.dijkstra(src);
    //show_path(src, end, 1);
    cost_path = cost.dijkstra(distance_data, src);
    time_path = best_time.dijkstra(distance_data, src);
    show_path (src, end, 3);
    // pair <path, int> dd = cost_path[end][0];
    // while (dd.first.start != src) {
    //     cout << dd.first.start << " " << dd.first.tp << endl;
    //     for (int i=0 ; i<cost_path[dd.first.start].size() ; i++){
    //         if (cost_path[dd.first.start][i].first.tp == dd.second){
    //             dd = cost_path[dd.first.start][i];
    //             break;
    //         }
    //     }
    // }
    // cout << dd.first.start << " " << dd.first.tp << endl;
    
}

//It shows the path
//Type variable represents distance(1), cost(2) or time(3)
void Semanhasht::show_path (int src, int end, int type){
    
    int tst = end;

    if (type == 1){
        while (distance_path[tst] != src){
            //objects[tst][distance_path[tst]]->setProperty("color" , "purple");
            tst = distance_path[tst];
        }
        //objects[tst][distance_path[tst]]->setProperty("color" , "purple");
    }


    else if (type == 2){
        //cout << "Now " << 2 << endl;
        pair <path, int> dd = cost_path[end][0];

        while (dd.first.start != src) {
            for (int i=0 ; i<objects2[dd.first.start].size(); i++){
                if (dd.first.tp/10 == 1){
                    if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 2 &&
                        (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                         objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                        objects2[dd.first.start][i]-> setProperty("color" , "purple");
                        objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                        cout << "Now " << 2 << endl;
                        break;
                    }
                }
                else if (dd.first.tp/10 != 1){
                    if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 1 &&
                        (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                         objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                        objects2[dd.first.start][i]-> setProperty("color" , "purple");
                        objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                        cout << "Now " << 2 << endl;
                        break;
                    }
                }
            }
            for (int i=0 ; i<cost_path[dd.first.start].size() ; i++){
                if (cost_path[dd.first.start][i].first.tp == dd.second){
                    dd = cost_path[dd.first.start][i];
                    break;
                }
            }
        }
        //first edje
        for (int i=0 ; i<objects2[dd.first.start].size(); i++){
            if (dd.first.tp/10 == 1){
                if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 2 &&
                    (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                     objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                    objects2[dd.first.start][i]-> setProperty("color" , "purple");
                    objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                    cout << "Now " << 2 << endl;
                    break;
                }
            }
            else if (dd.first.tp/10 != 1){
                if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 1 &&
                    (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                     objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                    objects2[dd.first.start][i]-> setProperty("color" , "purple");
                    objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                    cout << "Now " << 2 << endl;
                    break;
                }
            }
        }
    }

    else if (type == 3){

        pair <path, int> dd = time_path[end][0];

        while (dd.first.start != src) {
            for (int i=0 ; i<objects2[dd.first.start].size(); i++){
                if (dd.first.tp/10 == 1){
                    if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 2 &&
                        (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                         objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                        objects2[dd.first.start][i]-> setProperty("color" , "purple");
                        objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                        break;
                    }
                }
                else if (dd.first.tp/10 != 1){
                    if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 1 &&
                        (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                         objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                        objects2[dd.first.start][i]-> setProperty("color" , "purple");
                        objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                        break;
                    }
                }
            }
            for (int i=0 ; i<time_path[dd.first.start].size() ; i++){
                if (cost_path[dd.first.start][i].first.tp == dd.second){
                    dd = time_path[dd.first.start][i];
                    break;
                }
            }
        }
        //first edje
        for (int i=0 ; i<objects2[dd.first.start].size(); i++){
            if (dd.first.tp/10 == 1){
                if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 2 &&
                    (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                     objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                    objects2[dd.first.start][i]-> setProperty("color" , "purple");
                    objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                    break;
                }
            }
            else if (dd.first.tp/10 != 1){
                if(objects2[dd.first.start][i]->property("strokeStyle").toInt() == 1 &&
                    (objects2[dd.first.start][i]->property("e").toInt() == dd.first.end ||
                     objects2[dd.first.start][i]->property("s").toInt() == dd.first.end)){
                    objects2[dd.first.start][i]-> setProperty("color" , "purple");
                    objects2[dd.first.start][i]-> setProperty("strokeWidth" , 9);
                    break;
                }
            }
        }
    }
}
