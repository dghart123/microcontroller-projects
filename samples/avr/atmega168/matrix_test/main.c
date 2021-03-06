/*
 * A program test test all of the modes of the matrix driver
// 0x00: 8 bit mode GGGGRRRR (gives you 15 shades of red, 15 shades of green, plus black for 226 colors total, dc_max = 15)
// 0x01: 4 bit mode GGRR (gives you 3 shades of red, 3 shades of green, plus black for 10 colors total, dc_max = 3)
// 0x02: 2 bit mode GR (gives you red, green, yellow, and black pixels, dc_max = 1)
 * This uses the matrix LED board to display, and communicates with the board over twi.
 */

#include "lib/analog/analog.h"
#include "lib/draw/draw.h"
#include "lib/draw/matrix/matrix.h"
// #include "lib/draw/fonts/large.h"
#include "lib/timer/timer.h"
#include <util/delay.h>

#define GRN_3	0xF0
#define GRN_2	0x80
#define GRN_1	0x40
#define RED_3	0x0F
#define RED_2	0x08
#define RED_1	0x04

void test_8bit(){
	char t[] = "8c";
	// draw_text(0,0,t,7,11,ORIENTATION_DOWN, font_large, codepage_large, 0xFF, OVERLAY_OR);
	matrix_set_mode(0x00);
	for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
			uint8_t c = y | (y << 4);
			if (x < 8) {
				c &= 0xF0;
			} else if (x < 16) {
				c &= 0x0F;
			}
			set_pixel(x, y, c, OVERLAY_REPLACE);
		}
	}
	matrix_write_buffer();
}
void test_4bit(){
	char t[] = "4c";
	// draw_text(0,0,t,7,11,ORIENTATION_DOWN, font_large, codepage_large, 0x0F, OVERLAY_OR);
//	matrix_set_mode(0x01);
//	for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
//		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
//			uint8_t c = x & 0x03 | (y & 0x03) << 2;
//			set_pixel(x, y, c, OVERLAY_REPLACE);
//		}
//	}
	matrix_set_mode(0x01);
	for (uint8_t i = 0; i < 24; i++) {
		set_pixel(i, 0, 0x00, OVERLAY_REPLACE); // black
		set_pixel(i, 1, 0x01, OVERLAY_REPLACE); // dark red
		set_pixel(i, 2, 0x02, OVERLAY_REPLACE); // mid red
		set_pixel(i, 3, 0x03, OVERLAY_REPLACE); // bright red
		set_pixel(i, 4, 0x07, OVERLAY_REPLACE); // bright red / dark green
		set_pixel(i, 5, 0x0b, OVERLAY_REPLACE); // bright red / med green
		set_pixel(i, 6, 0x0f, OVERLAY_REPLACE); // bright red / bright green (yellow)
		set_pixel(i, 7, 0x0e, OVERLAY_REPLACE); // med red / bright green
		
		set_pixel(i, 8, 0x0d, OVERLAY_REPLACE); // dark red / bright green
		set_pixel(i, 9, 0x0c, OVERLAY_REPLACE); // bright green
		set_pixel(i, 10, 0x08, OVERLAY_REPLACE); // med green
		set_pixel(i, 11, 0x04, OVERLAY_REPLACE); // dark green
		set_pixel(i, 12, 0x05, OVERLAY_REPLACE); // dark red / dark green (dark yellow)
		set_pixel(i, 13, 0x0a, OVERLAY_REPLACE); // med red / med green (med yellow)
		set_pixel(i, 14, 0x06, OVERLAY_REPLACE); // med red / dark green
		set_pixel(i, 15, 0x09, OVERLAY_REPLACE); // dark red / med green
	}
	matrix_write_buffer();

}
void test_2bit(){
	char t[] = "2c";
	matrix_set_mode(0x02);
	// draw_text(0,0,t,7,11,ORIENTATION_DOWN, font_large, codepage_large, 0x03, OVERLAY_OR);
	for (uint8_t m = 0x03; m < 0x05; m++) {
		matrix_set_mode(m);
		for (uint8_t v = 0x00; v < 0x04; v++) {
			draw_line(0, 0, MATRIX_WIDTH-1, MATRIX_HEIGHT-1, 0xFF, OVERLAY_REPLACE);
//			draw_rectangle(0, 0, MATRIX_WIDTH-1, MATRIX_HEIGHT-1, DRAW_FILLED, v, OVERLAY_OR);
			matrix_write_buffer();
			_delay_ms(500);
		}
	}	
}

int main (void){
	matrix_init();
	
	while (1) {
//		test_2bit();
		test_4bit();
//		test_8bit();
	}
}