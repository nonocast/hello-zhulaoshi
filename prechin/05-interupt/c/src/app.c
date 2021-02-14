#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int u16;
typedef unsigned char u8;

u8 status;
void delay(u16 i);
void init();
void loop();
void int0() __interrupt(0);

void main() {
  init();
  while (true) {
    // loop();
  }
}

void init() {
  IT0 = 1;  // set INT0 interrupt type: (1: falling, 0: low level)
  EX0 = 1;  // enable INT0 interrupt
  EA = 1;   // open global interrupt switch
  P2_1 = 1;
}

void int0() __interrupt(0) {
  P2_1 = 0;
}

void loop() {}

void delay(u16 i) {
  while (i--)
    ;
}