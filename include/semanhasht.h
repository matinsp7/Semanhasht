//This class is responsible for the communication between backend and UI.
#ifndef SEMANHASHT_H
#define SEMANHASHT_H

#include <QObject>
#include <unordered_map>
#include "cost.h"
#include "best_time.h"
#include "distance.hpp"
#include "resetpath.h"
#include <stack>

class Semanhasht : public QObject
{
    Q_OBJECT
public:
    explicit Semanhasht(QObject *parent = nullptr);

public slots: 
    void set_objects(QObject*, int, int);
    void direction(int, int, const int&, const int&);
    void show_path (int, int, int);
    void set_map(const QString&, const int&);
    int check_station_validation(const QString&);
    void print_path(const int&, const int&);
    QString get_q_time_path();

signals:

private:
    //static const int v = 59;
    std::vector <std::vector<QObject*>>objects  = std::vector <std::vector<QObject*>>(59,std::vector<QObject*>(59));
    std::vector <std::vector<QObject*>>objects2  = std::vector <std::vector<QObject*>>(59);

    std::unordered_map <std::string, int> stationToIndex;
    std::unordered_map <int, std::string> indexToStation;

    std::vector<std::vector<path>> distance_data;

    Distance distance;
    std::vector <int> distance_path;

    Cost cost;
    std::vector <std::vector<std::pair<path, int>>> cost_path;

    Best_time best_time;
    std::vector <std::vector<std::pair<path, int>>> time_path;
    QString q_time_path; //prints the path

    std::stack<path> print_time_path;

    ResetPath RP;

};

#endif // SEMANHASHT_H
