//This class is responsible for the communication between backend and UI.
#ifndef SEMANHASHT_H
#define SEMANHASHT_H

#include <QObject>

class Semanhasht : public QObject
{
    Q_OBJECT
public:
    explicit Semanhasht(QObject *parent = nullptr);

signals:
};

#endif // SEMANHASHT_H
