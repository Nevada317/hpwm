#include "libs.h"
void loop();

static uint8_t UserIn = 0;

int main(void) {
	GPIO_Init();
	PWM_Init();
	ADC_Init();

	PORTC |= (1<<2);
	while (1)
		loop();
}

void loop() {
// 	temp = ~(PIND >> 2) & 7;

// 	if (temp & (1<<1))
// 		UserIn++;
// 	if (temp & (1<<2))
// 		UserIn--;

	do {
		PWM_SetWGamma(UserIn);
		UserIn++;
		_delay_ms(10);
	} while (UserIn != 0);
	do {
		UserIn--;
		PWM_SetWGamma(UserIn);
		_delay_ms(10);
	} while (UserIn != 0);
}
