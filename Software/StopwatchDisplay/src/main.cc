#include <main.h>

bool btn1Pressed = 0;
unsigned long btn1NextPress = 0;
bool btn2Pressed = 0;
unsigned long btn2NextPress = 0;

Display display;
SerialControl serial_control;
StopWatch stop_watch;
Modus modus;
Modus lines[2];

void setup()
{
  modus = BOOTING;
  lines[0] = BOOTING;
  lines[1] = BOOTING;

  display.Startup();
  serial_control.Startup();

  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, LOW);

  pinMode(pinBtn1, INPUT);
  pinMode(pinBtn2, INPUT);

  pinMode(pinVoltage, INPUT);
}

void loop()
{
  handleBtns();
  handleSerialControl();
  handleDisplay();

  display.ShowFrame();
}

void handleDisplay()
{
  char output[5];
  switch (modus)
  {
  case RUNNING:
    if (!stop_watch.HasUpdate())
    {
      return;
    }

    for (uint8_t i = 0; i < 2; i++)
    {
      if (lines[i] == RUNNING)
      {
        stop_watch.Output(output);
        display.SetOutput(i, output);
        return;
      }
    }
    modus = SHOWING;
    break;

  case WAITING:
    waiting();
    break;

  case BOOTING:
    if (millis() > 3000)
    {
      char voltage[5];
      uint16_t input_voltage = inputVoltage() * 100;

      voltage[0] = ' ';
      voltage[1] = 48 + (input_voltage / 1000 % 10);
      voltage[2] = 48 + (input_voltage / 100 % 10);
      voltage[3] = 48 + (input_voltage / 10 % 10);
      voltage[4] = 48 + (input_voltage % 10);
      display.SetOutput(0, voltage);
      display.SetOutput(1, "Volt");
    }

  default:
    break;
  }
}

void handleSerialControl()
{
  uint8_t last_line;
  switch (serial_control.Handle())
  {
  case STARTING:
    stopWatchStart();
    break;

  case WAITING:
    modus = WAITING;
    break;

  case SHOWING:
    last_line = serial_control.LastLine();
    display.SetOutput(last_line, serial_control.LastTime());
    lines[last_line] = SHOWING;
    break;

  default:
    break;
  }
}

void handleBtns()
{
  unsigned long current_millis = millis();
  if (!btn1Pressed && btn1NextPress < current_millis && digitalRead(pinBtn1) == LOW)
  {
    btn1Pressed = true;

    if (modus == RUNNING)
      stopWatchStop();
    else
      stopWatchStart();
  }
  else if (btn1Pressed && digitalRead(pinBtn1) == HIGH)
  {
    btn1NextPress = current_millis + 200;
    btn1Pressed = false;
  }
  if (!btn2Pressed && btn2NextPress < current_millis && digitalRead(pinBtn2) == LOW)
  {
    btn2Pressed = true;

    modus = WAITING;
  }
  else if (btn2Pressed && digitalRead(pinBtn2) == HIGH)
  {
    btn2NextPress = current_millis + 200;
    btn2Pressed = false;
  }
}

void stopWatchStart()
{
  stop_watch.Start();
  modus = RUNNING;
  lines[0] = RUNNING;
  lines[1] = RUNNING;
  display.SetOutput(0, "00000");
  display.SetOutput(1, "     ");
}

void stopWatchStop()
{
  char output[5];
  for (uint8_t i = 0; i < 2; i++)
  {
    if (lines[i] == RUNNING)
    {
      stop_watch.Output(output);
      display.SetOutput(i, output);
      lines[i] = SHOWING;
      return;
    }
  }
}

float inputVoltage()
{
  float vout = (analogRead(pinVoltage) * 5.0) / 1024.0;
  return vout / (voltageDividerR2 / (voltageDividerR1 + voltageDividerR2));
}

void waiting()
{
  uint8_t output_line = millis() / 1000 % 2;
  display.SetOutput((output_line + 1) % 2, "     ");
  switch (millis() % 1000 / 200)
  {
  case 0:
    display.SetOutput(output_line, "-    ");
    break;
  case 1:
    display.SetOutput(output_line, " -   ");
    break;
  case 2:
    display.SetOutput(output_line, "  -  ");
    break;
  case 3:
    display.SetOutput(output_line, "   - ");
    break;
  case 4:
    display.SetOutput(output_line, "    -");
    break;
  }
}