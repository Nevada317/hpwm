#include "libs.h"

void SYSTIMER_Init();

// This structure should contain down-counters. All
// those counters are decremented 60 times a second
// by system timer (Timer0).
// IMPORTANT: Use only uint16_t variables here!
struct SYSTIMER_Timeout {
	uint16_t TO_PowerSwitch;
} SYSTIMER_TO;
