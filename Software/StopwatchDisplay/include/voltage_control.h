#include <base.h>

#define pinOutputEnabled 5
#define pinVoltage A6
#define voltageDividerR1 99000.0
#define voltageDividerR2 10000.0
#define minimalVoltage 950

class VoltageControl
{
public:
    void Startup();
    void Check();
    void Output(char *output);

private:
    uint16_t inputVoltage();
};