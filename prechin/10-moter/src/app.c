#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int word;
typedef unsigned char byte;

void delay(word i);
void init();
void loop();

void main() {
  init();
  while (true) {
    loop();
  }
}

void init() {
  IT0 = 1; // set INT0 interrupt type: (1: falling, 0: low level)
  EX0 = 1; // enable INT0 interrupt
  EA = 1;  // open global interrupt switch
  P1_2 = 0;
}

void loop() {}

void int0() __interrupt(0) {
  delay(1000);
  if (P3_2 == 0) {
    P1_2 = !P1_2;
  }
}

void delay(word i) {
  while (i--)
    ;
}