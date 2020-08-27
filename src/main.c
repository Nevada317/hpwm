#include "libs.h"
void loop();

// static uint8_t UserIn = 0;

int main(void) {
	GPIO_Init();
	PWM_Init();
	ADC_Init();
	SYSTIMER_Init();
	MODES_Init();

	sei();

	PORTC |= (1<<2);
	while (1)
		loop();
}

void loop() {

}
