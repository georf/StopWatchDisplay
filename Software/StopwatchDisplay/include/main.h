#include <base.h>
#include <display.h>
#include <stop_watch.h>
#include <serial_control.h>

#define pinBtn1 11
#define pinBtn2 12
#define pinVoltage A6
#define voltageDividerR1 100000.0
#define voltageDividerR2 10000.0

void handleDisplay();
void handleSerialControl();
void handleBtns();

void stopWatchStart();
void stopWatchStop();
void waiting();

float inputVoltage();