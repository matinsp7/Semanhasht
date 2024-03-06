#include "ttime.h"

TTime::TTime(const int &h, const int &m) {
    hour = h;
    minute = m;
}


int TTime::traffic_time (const int &t){
    int h = hour + (minute + t)/60;
    int m = minute + (minute + t)%60;
    if (h > 24){
        h = h % 24;
    }
    if (m > 60){
        m = 60 % m;
    }
    if ((6 <= h && h < 8) || (h==8 && m==0)) return 1;  
    if ((18 <= h && h < 20) || (h==20 && m==0)) return 2;
    return 0;
}
