#include "libs.h"

static uint8_t EEMEM eConfig[] = {
	10,  // Default brightness for level 1
	50,  // Default brightness for level 2
	255, // Default brightness for level 3
	30   // Default target brightness for AUTO mode
};

static volatile bool dirty = false;

uint8_t rConfig[sizeof(eConfig)];

void EEPROM_Init() {
	while (!eeprom_is_ready())
		;
	eeprom_read_block(&rConfig, &eConfig, sizeof(eConfig));
	while (!eeprom_is_ready())
		;
}

void EEPROM_StoreConfig() {
	if (!dirty)
			return;
	while (!eeprom_is_ready())
		;
	eeprom_update_block(&rConfig, &eConfig, sizeof(eConfig));
	// Bad idea to return if EEPROM write is in progress, so
	// we will wait. Even in ISR
	while (!eeprom_is_ready())
		;
	dirty = false;
}


void EEPROM_MarkDirty() {
	dirty = true;
}
