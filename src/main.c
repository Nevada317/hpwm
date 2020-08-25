#include "libs.h"

int main(void) {
	GPIO_Init();
	PORTC |= (1<<2);
}
