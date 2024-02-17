#include "semanhasht.h"
#include <QGuiApplication>

using namespace std;

Semanhasht::Semanhasht(QObject *parent)
    : QObject{parent}
{}

void Semanhasht::set_objects(QObject* object, int start, int end){
    objects[start][end] = object;
    objects[end][start] = object;
}


void Semanhasht::direction (int src, int end){
    //First calculate the shortest distance
    distance_path = distance.dijkstra(src);
    show_path(src, end, 1);
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
