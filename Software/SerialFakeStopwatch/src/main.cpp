#include <Arduino.h>
#include <button.h>

uint32_t time = 0;
unsigned long lastMilliSecond = 0;

void wait()
{
  Serial.println("w");
}

void start()
{
  time = 0;
  lastMilliSecond = millis();
  Serial.println("s");
}

void parseTime()
{
  char *output = "0:00,000";
  output[0] = 48 + (time / 60000);
  output[2] = 48 + ((time / 1000 % 60) / 10);
  output[3] = 48 + (time / 1000 % 10);
  output[5] = 48 + (time / 100 % 10);
  output[6] = 48 + (time / 10 % 10);
  output[7] = 48 + (time % 10);
  Serial.println(output);
}

void time1()
{
  Serial.print(F("1-"));
  parseTime();
}

void time2()
{
  Serial.print(F("2-"));
  parseTime();
}

Button btn1 = Button(3, &wait);
Button btn2 = Button(4, &start);
Button btn3 = Button(5, &time1);
Button btn4 = Button(6, &time2);

void setup()
{
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB
  }
  pinMode(A5, INPUT);
  pinMode(13, OUTPUT);
}

void loop()
{
  btn1.read();
  btn2.read();
  btn3.read();
  btn4.read();

  unsigned long newCentiSecond = millis();
  if (newCentiSecond >= lastMilliSecond + 1)
  {
    lastMilliSecond = newCentiSecond;
    time++;
  }
}