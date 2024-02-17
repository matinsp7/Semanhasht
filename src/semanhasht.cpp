#include "semanhasht.h"

Semanhasht::Semanhasht(QObject *parent)
    : QObject{parent}
{}

void Semanhasht::set_objects(QObject* object, int start, int end){
    objects[start][end] = object;
    objects[end][start] = object;
}
