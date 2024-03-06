#ifndef TIME_H
#define TIME_H

class TTime
{
public:
    TTime(const int&, const int&);
    int traffic_time (const int&);

private:
    int hour;
    int minute;
};

#endif // TIME_H
