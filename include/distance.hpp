#include <vector>
#include <fstream>
#include <iostream>
#include <sstream>

struct path
{
    int length;
    int type;
};

class Distance
{
public:
    Distance ();

private:
    path Matrix [59][59];    
};
