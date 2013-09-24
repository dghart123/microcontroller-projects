#ifndef CLOCK_H
#define CLOCK_H

#include "lib/draw/draw.h"

#define GRN_3	0x0C
#define GRN_2	0x08
#define GRN_1	0x04
#define RED_3	0x03
#define RED_2	0x02
#define RED_1	0x01

#define OFFSET_TRAD_X 0
#define OFFSET_TRAD_Y 0
#define OFFSET_MAYAN_X 8
#define OFFSET_MAYAN_Y 0
#define OFFSET_HEX_X 16
#define OFFSET_HEX_Y 0

void clock_draw(uint32_t ms);

#endif