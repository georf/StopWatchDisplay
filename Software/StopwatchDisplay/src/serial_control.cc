#include <serial_control.h>

SerialControl::SerialControl(void (*pCallbackStartF)(), void (*pCallbackWaitF)(), void (*pCallbackShowF)(SerialControl *))
{
    pCallbackStart = pCallbackStartF;
    pCallbackWait = pCallbackWaitF;
    pCallbackShow = pCallbackShowF;
}

void SerialControl::Startup()
{
    Serial.begin(9600);
    while (!Serial) ;
}

void SerialControl::Handle()
{
    char control;
    if (Serial.available())
    {
        control = Serial.read();
        Serial.print(control);
        if (control == NEXT_LINE || control == '\r')
        {
            transmitMode = MODE_READY;
        }
        else if (transmitMode == MODE_READY && control == MODE_CHAR_START)
        {
            transmitMode = MODE_CONTROL;
            return pCallbackStart();
        }
        else if (transmitMode == MODE_READY && control == MODE_CHAR_WAIT)
        {
            transmitMode = MODE_CONTROL;
            return pCallbackWait();
        }
        else if (transmitMode == MODE_READY && (control == MODE_CHAR_1 || control == MODE_CHAR_2))
        {
            transmitMode = MODE_TIME;
            receivedPart = (int)control - 49;
            receivedTimePosition = 0;
        }
        // if control is a number
        else if (transmitMode == MODE_TIME && control > 47 && control < 58)
        {
            receivedTime[receivedPart][receivedTimePosition] = control;
            receivedTimePosition++;
            if (receivedTimePosition > 4)
            {
                transmitMode = MODE_CONTROL;
                return pCallbackShow(this);
            }
        }
        else if (transmitMode == MODE_READY && control == MODE_CHAR_END)
        {
            transmitMode = MODE_TIME_END;
        }
    }
    return;
}

uint8_t SerialControl::LastLine()
{
    return receivedPart;
}

char *SerialControl::LastTime()
{
    return receivedTime[receivedPart];
}