#include <stop_watch.h>

void StopWatch::Start()
{
  time = 0;
  lastCentiSecond = millis();
}

boolean StopWatch::HasUpdate()
{
  unsigned long newCentiSecond = millis();
  if (newCentiSecond >= lastCentiSecond + 10)
  {
    lastCentiSecond = newCentiSecond;
    time++;
    return true;
  };
  return false;
}

void StopWatch::Output(char *output)
{
  output[0] = 48 + (time / 6000);
  output[1] = 48 + ((time / 100 % 60) / 10);
  output[2] = 48 + (time / 100 % 10);
  output[3] = 48 + (time / 10 % 10);
  output[4] = 48 + (time % 10);
}