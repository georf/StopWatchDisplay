#include <base.h>
#include <display.h>
#include <stop_watch.h>
#include <serial_control.h>
#include <button.h>
#include <voltage_control.h>

#define pinBtn1 11
#define pinBtn2 12

void handleDisplay();

void stopWatchStart();
void stopWatchStop();
void waiting();
void showingCallback(uint32_t lastDeciTime, uint8_t lastLine);

void btn1Callback();
void btn2Callback();