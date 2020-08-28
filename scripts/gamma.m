#!/bin/octave-cli

clear all; close all; clc
g = 2.2;

x = [0 linspace((1/255)^(1/g), 1, 255)];
y = x.^g;
y = y * 255;
Y=min(255, max(0, round(y)));
assert(size(Y) == [1 256]);
assert(max(Y) <= 255);
assert(min(Y) == 0);

fd = fopen("src/gamma.h", "w");
if (fd < 0)
	error("File open failed");
endif
fwrite(fd, "const PROGMEM uint8_t GammaTable[] = {\n");

for row=0:15
	s="\t";
	for col = 1:16
		s = [s, "0x", dec2hex(Y(16*row+col),2), ", "];
	endfor
	if (row==15)
		s = s(1:end-1); # Remove last comma
	endif
	s = [s(1:end-1), "\n"];
	fwrite(fd, s);
endfor

fwrite(fd, "};\n");
fclose(fd);
