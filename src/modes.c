#include "libs.h"

static devMode CurrentMode = 0;
static void (*ptrISR_INT_handler)();

void ISR_INT_SwitchOn();
void ISR_INT_SwitchOff();

#define ISCx0 ISC10
#define ISCx1 ISC11
#define INTx INT1
#define INTx_vect INT1_vect
#define INTx_PIN PIND
#define INTx_N 3


void MODES_Init() {
	GICR |= (1<<INTx);
	if (!(INTx_PIN & (1<<INTx_N)))
		ISR_INT_SwitchOn();
	else
		ISR_INT_SwitchOff();
}

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

ISR(INTx_vect) {
	(*ptrISR_INT_handler)();
}

void ISR_INT_SwitchOff() {
	MCUCR &= ~(1<<ISCx0); // Set to falling edge
	ptrISR_INT_handler = &ISR_INT_SwitchOn;
	setMode(1);
}

void ISR_INT_SwitchOn() {
	MCUCR |= (1<<ISC10); // Set to rising edge
	ptrISR_INT_handler = &ISR_INT_SwitchOff;
	setMode(2);
}

