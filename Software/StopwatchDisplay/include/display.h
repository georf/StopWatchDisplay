#include <base.h>

#define pinTimerClock 3
#define pinTimerClockReset 2

#define pinShiftLatch 6
#define pinShiftData 4
#define pinShiftClock 7

class Display
{
public:
    void Startup();
    void ShowFrame();
    static uint8_t Representation(const char character);
    void SetOutput(uint8_t line, const char *characters, boolean points, boolean clean);

private:
    uint8_t current_char_index = 0;
    char currentOutput[2][5] = {"", ""};
    boolean currentPoints[2][2] = {{false, false}, {false, false}};
};