#include "libs.h"

typedef enum ledColor {
	LED_K = 0b000,
	LED_R = 0b001,
	LED_G = 0b010,
	LED_Y = 0b011,
	LED_B = 0b100,
	LED_M = 0b101,
	LED_C = 0b110,
	LED_W = 0b111
} ledColor;

typedef enum devMode {
	devMode_LVL1 = 0,
	devMode_LVL2 = 1,
	devMode_LVL3 = 2,
	devMode_AUTO = 3
} devMode;
#define devMode_max 3

devMode getMode();
bool IsOn();

