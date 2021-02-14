#ifndef __RTC_H_
#define __RTC_H_

#include <stdio.h>
#include <stdlib.h>
#include <8051.h>

typedef unsigned int word;
typedef unsigned char byte;

// 定义DS1302的引脚
#define DSIO  P3_4
#define RST   P3_5
#define SCLK  P3_6
#define _nop_() __asm NOP __endasm


char* getRTC();
byte read(byte addr);

#endif