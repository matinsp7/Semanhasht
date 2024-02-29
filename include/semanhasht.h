//This class is responsible for the communication between backend and UI.
#ifndef SEMANHASHT_H
#define SEMANHASHT_H

#include <QObject>
//#include <vector>
#include "distance.hpp"

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

class Semanhasht : public QObject
{
    Q_OBJECT
public:
    explicit Semanhasht(QObject *parent = nullptr);

public slots: 
    void set_objects(QObject*, int, int);
    void direction(int, int);
    void show_path (int, int, int);

signals:

private:
    //static const int v = 59;
    std::vector <std::vector<QObject*>>objects  = std::vector <std::vector<QObject*>>(59,std::vector<QObject*>(59));
    std::vector <std::vector<QObject*>>objects2  = std::vector <std::vector<QObject*>>(59);

    std::vector<std::vector<path>> distance_data;

    Distance distance;
    std::vector <int> distance_path;
};

#endif // SEMANHASHT_H