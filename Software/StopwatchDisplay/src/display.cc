#include <display.h>

void Display::Startup()
{
    pinMode(pinTimerClock, OUTPUT);
    digitalWrite(pinTimerClock, LOW);
    pinMode(pinTimerClockReset, OUTPUT);
    digitalWrite(pinTimerClockReset, LOW);

    pinMode(pinShiftLatch, OUTPUT);
    digitalWrite(pinShiftLatch, LOW);
    pinMode(pinShiftData, OUTPUT);
    digitalWrite(pinShiftData, LOW);
    pinMode(pinShiftClock, OUTPUT);
    digitalWrite(pinShiftClock, LOW);

    SetOutput(0, " boot", false, false);
    SetOutput(1, empty, false, false);
}

void Display::ShowFrame()
{
    char currentChar;
    uint8_t pointOutput;

    // prepare shift registers
    digitalWrite(pinShiftLatch, LOW);
    for (uint8_t index = 0; index < 2; index++)
    {
        shiftOut(pinShiftData, pinShiftClock, MSBFIRST, 0);
    }
    // output shift registers
    digitalWrite(pinShiftLatch, HIGH);

    // count clock to next position
    current_char_index++;
    if (current_char_index > 4)
    {
        current_char_index = 0;
        digitalWrite(pinTimerClockReset, HIGH);
        digitalWrite(pinTimerClockReset, LOW);
    }
    else
    {
        digitalWrite(pinTimerClock, HIGH);
        digitalWrite(pinTimerClock, LOW);
    }

    // prepare shift registers
    digitalWrite(pinShiftLatch, LOW);
    for (uint8_t line = 0; line < 2; line++)
    {
        currentChar = currentOutput[line][current_char_index];
        pointOutput = 0;
        if (current_char_index < 2)
            pointOutput = currentPoints[line][current_char_index] ? 0b00000001 : 0;

        shiftOut(pinShiftData, pinShiftClock, MSBFIRST, Display::Representation(currentChar) | pointOutput);
    }
    // output shift registers
    digitalWrite(pinShiftLatch, HIGH);
}

uint8_t Display::Representation(char character)
{
    //   - a -
    // |       |
    // b       c
    // |       |
    //   - d -
    // |       |
    // e       f
    // |       |
    //   - g -
    //
    // h ==> point

    switch (character)
    {
    //         0babcdefgh;
    case '0':
        return 0b11101110;
    case '1':
        return 0b00100100;
    case '2':
        return 0b10111010;
    case '3':
        return 0b10110110;
    case '4':
        return 0b01110100;
    case '5':
        return 0b11010110;
    case '6':
        return 0b11011110;
    case '7':
        return 0b10100100;
    case '8':
        return 0b11111110;
    case '9':
        return 0b11110110;
    case '-':
        return 0b00010000;
    case 'V':
        return 0b00001110;
    case 'b':
        return 0b01011110;
    case 'o':
        return 0b00011110;
    case 'l':
        return 0b01001000;
    case 't':
        return 0b01011010;
    default:
        return 0;
    }
}

void Display::SetOutput(uint8_t line, const char *characters, bool points, bool clean)
{
    for (uint8_t i = 0; i < 5; i++)
    {
        if (clean && characters[i] == '0')
        {
            currentOutput[line][i] = ' ';
        }
        else
        {
            clean = false;
            currentOutput[line][i] = characters[i];
        }
    }

    currentPoints[line][0] = points && currentOutput[line][0] != ' ';
    currentPoints[line][1] = points && currentOutput[line][2] != ' ';
}
