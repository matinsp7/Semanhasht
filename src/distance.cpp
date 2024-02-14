#include "../include/distance.hpp"

using namespace std;

Distance::Distance()
{
    ifstream reader;
    reader.open("../files/Matrix.txt", ios_base::in);
    if (reader.fail()) 
    {
    cout << "file read failed." << endl;
    }

    if (reader.is_open())
    {

        string   line;
        int i = 0;
        while(getline(reader, line) && i <= 58)
        {
            stringstream  lineStream(line);
            string value;

            int j= 0;
            while(lineStream >> value && j <= 58)
            {
                // assign first character to the type
                char temp = value[0] - 48;
                Matrix[i][j].type = int(temp);

                // erasing the first character and then assign remaining characters to length
                value.erase(0, 1);
                Matrix[i][j].length = stoi(value);
                
                j++;
            }
            i++;
        }
    }
    reader.close();
}