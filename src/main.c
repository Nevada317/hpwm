#include "libs.h"
void loop();

int main(void) {
	GPIO_Init();
	PWM_Init();
	ADC_Init();

	PORTC |= (1<<2);
	while (1)
		loop();
}

void loop() {
	uint8_t temp;
	uint8_t port;
	temp = ~(PIND >> 2) & 7;
	port = PORTC;
	port &= ~7;
	port |= temp;
	PORTC = temp;

	port = PORTB;
	port &= ~7;
	port |= temp;
	PORTB = temp;

}
