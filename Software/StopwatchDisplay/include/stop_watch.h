#include <base.h>

class StopWatch
{
public:
    void Start();
    boolean HasUpdate();
    void Output(char *output);

private:
    uint16_t time;
    unsigned long lastCentiSecond;
};