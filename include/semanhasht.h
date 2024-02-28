//This class is responsible for the communication between backend and UI.
#ifndef SEMANHASHT_H
#define SEMANHASHT_H

#include <QObject>
#include "distance.hpp"

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

    
    Distance distance;
    std::vector <int> distance_path;
};

#endif // SEMANHASHT_H
/*
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
using namespace std;
struct Path {
    int Start, End, Length, TP;
    Path() : Start(0), End(0), Length(0), TP(0) {}
    Path(const string& filename) {
        readAndStoreData(filename);
    }
    void readAndStoreData(const string& filename) {
        ifstream file(filename);
        vector<vector<Path>> Abass;
    if (file.is_open()) {
        string line;
        while (getline(file, line)) {
            istringstream iss(line);
            string token;
            vector<Path> currentPaths;
            while (getline(iss, token, '$')) {
                istringstream pathStream(token);
                Path path;
                pathStream >> path.Start;
                pathStream.ignore();
                pathStream >> path.End;
                pathStream.ignore();
                pathStream >> path.Length;
                pathStream.ignore();
                pathStream >> path.TP;
                currentPaths.push_back(path);
            }
            Abass.push_back(currentPaths);
        }
        file.close();
    } else {
        cout << "Unable to open the file." << endl;
    }
// Input Test index number please
        const vector<Path>& pathVector = Abass[6];
        for (const Path& path : pathVector) {
            cout << "Start = " << path.Start << ", End = " << path.End
                 << ", Length = " << path.Length << ", TP = " << path.TP << endl;
        }
        cout << "-----" << endl;
    }
};
*/