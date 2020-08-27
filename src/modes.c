#include "libs.h"

static devMode CurrentMode;

devMode getMode() {
	if (CurrentMode > devMode_max)
		CurrentMode = 0;
	return CurrentMode;
}

bool IsOn() {
	return true;
}

void setMode(devMode NewMode) {
	CurrentMode = NewMode;
	if (CurrentMode > devMode_max)
		CurrentMode = 0;
	ledColor LedColor = LED_R;
	if (IsOn()) {
		switch (CurrentMode) {
			case devMode_LVL1:
				LedColor = LED_G;
				break;
			case devMode_LVL2:
				LedColor = LED_C;
				break;
			case devMode_LVL3:
				LedColor = LED_B;
				break;
			case devMode_AUTO:
			default:
				LedColor = LED_Y;
				break;
		}
	}
	PORTC = LedColor;
}
