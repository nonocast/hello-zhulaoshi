#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int u16;
typedef unsigned char u8;

#define SER P3_4  // serial
#define RCK P3_5  // storage register clock
#define SCK P3_6  // shift clock
#define _nop_() __asm NOP __endasm

void delay(u16 i) {
  while (i--)
    ;
}

void main() {
  u8 i = 0;

  while (true) {
    for (i = 0; i < 32; ++i) {
      SER = rand() % 2;
      SCK = 0;
      SCK = 1;
    }

    RCK = 0;
    RCK = 1;
  }
}
