#ifndef POWERSUPPLY_H
#define POWERSUPPLY_H

#include <avr/io.h>
#include <util/delay.h>

#include "lib/twi/twi.h"

#include "Channel.h"
#include "Display.h"
#include "State.h"
#include "timer0.h"
#include "timer1.h"
#include "usb.h"

#ifndef CHANNEL_COUNT
#define CHANNEL_COUNT					4
#endif

#if CHANNEL_COUNT > 6
#error The software does not currently support more than 6 channels (not enough ADCs on an ATmega32u4).
#endif



#endif