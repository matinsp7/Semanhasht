//This class is responsible for the communication between backend and UI.
#ifndef SEMANHASHT_H
#define SEMANHASHT_H

#include <QObject>

class Semanhasht : public QObject
{
    Q_OBJECT
public:
    explicit Semanhasht(QObject *parent = nullptr);

public slots: 
    void set_objects(QObject*, int, int);

signals:

private:
    int v = 59;
    QObject* objects[59][59];
};

#endif // SEMANHASHT_H
