#include <main.h>

Display display;
SerialControl serialControl = SerialControl(&stopWatchStart, &waiting, &showingCallback);
StopWatch stopWatch;
Modus modus;
Modus lines[2];
Button btn1 = Button(pinBtn1, &btn1Callback);
Button btn2 = Button(pinBtn2, &btn2Callback);
VoltageControl voltageControl;

void setup()
{
  noInterrupts();

  //set timer1 interrupt at 1Hz
  TCCR1A = 0; // set entire TCCR1A register to 0
  TCCR1B = 0; // same for TCCR1B
  TCNT1 = 0;  //initialize counter value to 0
  // set compare match register for 1hz increments
  // OCR1A = 15624; // = (16*10^6) / (1*1024) - 1 (must be <65536)
  OCR1A = 14; // = (16*10^6) / (1*1024) - 1 (must be <65536)
  // // set compare match register for 1000hz increments
  // OCR1A = 14; // = (16*10^6) / (1000*1024) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS10 and CS12 bits for 1024 prescaler
  TCCR1B |= (1 << CS12) | (1 << CS10);
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);
  interrupts();

  modus = BOOTING;
  lines[0] = BOOTING;
  lines[1] = BOOTING;

  voltageControl.Startup();
  display.Startup();
  serialControl.Startup();
}

ISR(TIMER1_COMPA_vect)
{
  display.ShowFrame();
}

void loop()
{
  voltageControl.Check();
  btn1.read();
  btn2.read();
  serialControl.Handle();
  handleDisplay();
}

void handleDisplay()
{
  char output[5];
  uint32_t milliSeconds = millis();
  switch (modus)
  {
  case RUNNING:
    if (!stopWatch.HasUpdate())
    {
      return;
    }

    for (uint8_t i = 0; i < 2; i++)
    {
      if (lines[i] == RUNNING)
      {
        stopWatch.Output(output);
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

    if (milliSeconds > 1000 && milliSeconds < 4000)
    {
      voltageControl.Output(output);
      display.SetOutput(0, output);
      display.SetOutput(1, "Volt");
    }
    else if (milliSeconds >= 4000 && milliSeconds < 5000)
    {
      display.SetOutput(0, "88888");
      display.SetOutput(1, "88888");
    }
    else if (milliSeconds >= 5000)
    {
      waiting();
    }
    break;

  case SHOWING:
    break;
  }
}

void showingCallback(uint32_t lastDeciTime, uint8_t lastLine)
{
  char output[5];
  StopWatch::CentiSecondsToChars(lastDeciTime, output);
  display.SetOutput(lastLine, output, true, true);
  lines[lastLine] = SHOWING;
}

void btn1Callback()
{
  if (modus == WAITING)
  {
    stopWatchStart();
  }
  else if (modus == RUNNING)
  {
    stopWatchStop();
  }
}

void btn2Callback()
{
  waiting();
}

void stopWatchStart()
{
  stopWatch.Start();
  modus = RUNNING;
  lines[0] = RUNNING;
  lines[1] = RUNNING;
  display.SetOutput(0, empty);
  display.SetOutput(1, empty);
}

void stopWatchStop()
{
  char output[5];
  for (uint8_t i = 0; i < 2; i++)
  {
    if (lines[i] == RUNNING)
    {
      stopWatch.Output(output);
      display.SetOutput(i, output);
      lines[i] = SHOWING;
      return;
    }
  }
}

void waiting()
{
  uint8_t output_line = millis() / 1000 % 2;
  modus = WAITING;
  display.SetOutput((output_line + 1) % 2, empty);
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