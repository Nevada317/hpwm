#include "libs.h"

static devMode CurrentMode = 0;
static void (*ptrISR_INT_handler)();

void ISR_INT_SwitchOn();
void ISR_INT_SwitchOff();

#if 0
	#define ISCx0 ISC10
	#define ISCx1 ISC11
	#define INTx INT1
	#define INTx_vect INT1_vect
	#define INTx_PIN PIND
	#define INTx_N 3
#else
	#define ISCx0 ISC00
	#define ISCx1 ISC01
	#define INTx INT0
	#define INTx_vect INT0_vect
	#define INTx_PIN PIND
	#define INTx_N 2
#endif

#define PowerSwitchTimeout 244 // roughly in 1/244ths of second

void MODES_Init() {
	GICR |= (1<<INTx);
	if (!(INTx_PIN & (1<<INTx_N)))
		ISR_INT_SwitchOn();
	else
		ISR_INT_SwitchOff();
	SYSTIMER_TO.TO_PowerSwitch = 0;
	updateMode();
}

devMode getMode() {
	if (CurrentMode > devMode_max)
		CurrentMode = 0;
	return CurrentMode;
}

bool IsOn() {
	if (INTx_PIN & (1<<INTx_N))
		return (SYSTIMER_TO.TO_PowerSwitch > 0);
	else
		return true;
}

void setMode(devMode NewMode) {
	CurrentMode = NewMode;
	if (CurrentMode > devMode_max)
		CurrentMode = 0;
	updateMode();
}

void updateMode() {
	ledColor LedColor = LED_R;
	if (IsOn()) {
		switch (CurrentMode) {
			case devMode_LVL1:
				LedColor = LED_G;
				PWM_SetTarget(*(rConfig+0));
				GPIO_SetEditor(rConfig+0);
				break;
			case devMode_LVL2:
				LedColor = LED_C;
				PWM_SetTarget(*(rConfig+1));
				GPIO_SetEditor(rConfig+1);
				break;
			case devMode_LVL3:
				LedColor = LED_B;
				PWM_SetTarget(*(rConfig+2));
				GPIO_SetEditor(rConfig+2);
				break;
			case devMode_AUTO:
			default:
				LedColor = LED_Y;
				PWM_SetTarget(*(rConfig+3)); // dummy
				GPIO_SetEditor(rConfig+3);
				break;
		}
	} else {
		EEPROM_StoreConfig();
	}
	PORTC = LedColor;
}


ISR(INTx_vect) {
	(*ptrISR_INT_handler)();
}

void ISR_INT_SwitchOff() {
	MCUCR &= ~(1<<ISCx0); // Set to falling edge
	ptrISR_INT_handler = &ISR_INT_SwitchOn;
	// Reset timeout, so off is delayed
	SYSTIMER_TO.TO_PowerSwitch = PowerSwitchTimeout;
}

void ISR_INT_SwitchOn() {
	MCUCR |= (1<<ISCx0); // Set to rising edge
	ptrISR_INT_handler = &ISR_INT_SwitchOff;
	// If off transition was not long ago - change mode
	if (SYSTIMER_TO.TO_PowerSwitch > 0)
		setMode(getMode()+1);
}

