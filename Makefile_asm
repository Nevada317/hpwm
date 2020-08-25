.SUFFIXES:

AVRDUDE=sudo avrdude1 -c apu2 -p m8

all: test

.PHONY: test
test: compile wake flash eep

.PHONY: full
full: clear build/main.hex wake flash eep lock

.PHONY: clear
clear:
	-rm -rf ./build

.PHONY: wake
wake:
	-$(AVRDUDE)

.PHONY: compile
compile: build/main.hex

.PHONY: flash
flash: build/main.hex
	$(AVRDUDE) -U flash:w:build/main.hex:i

.PHONY: eep
eep: build/main.eep.hex
	$(AVRDUDE) -U eeprom:w:build/main.eep.hex:i -D

.PHONY: fuse
fuse:
	$(AVRDUDE) -B 1200 -e -U lfuse:w:0x3f:m -U hfuse:w:0xd1:m

# .PHONY: lock
# lock:
# 	$(AVRDUDE) -V -U lock:w:0xe8:m

.PHONY: read
read: eep.bin

eep.bin:
	$(AVRDUDE) -U eeprom:r:eep.bin:r -D
	hexdump eep.bin


build/.:
	-mkdir build;

build/main.asm: src/main.asm | build/.
	cp src/main.asm build/main.asm

build/main.hex build/main.eep.hex: src/. build/main.asm
	cd build; avra -fI main.asm -I ../src/ -o main.hex -l main.lst -m main.map
