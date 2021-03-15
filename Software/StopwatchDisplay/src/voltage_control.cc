#include <voltage_control.h>

void VoltageControl::Startup()
{
    pinMode(pinOutputEnabled, OUTPUT);
    digitalWrite(pinOutputEnabled, HIGH);
    pinMode(pinVoltage, INPUT);
}

void VoltageControl::Check()
{

    digitalWrite(pinOutputEnabled, inputVoltage() < minimalVoltage);
}
void VoltageControl::Output(char *output)
{
    uint16_t input_voltage = inputVoltage();

    output[0] = ' ';
    output[1] = 48 + (input_voltage / 1000 % 10);
    output[2] = 48 + (input_voltage / 100 % 10);
    output[3] = 48 + (input_voltage / 10 % 10);
    output[4] = 48 + (input_voltage % 10);
}

uint16_t VoltageControl::inputVoltage()
{
    double vout = (analogRead(pinVoltage) * 5.0) / 1024.0;
    uint16_t a = (uint16_t)(vout / (voltageDividerR2 / (voltageDividerR1 + voltageDividerR2)) * 100);
    return a;
}