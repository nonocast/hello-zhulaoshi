#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int u16;
typedef unsigned char u8;

#define BUTTON1 P1_0
#define LED1 P0_0

void delay(u16 i);
void init();
void loop();

void main() {
  init();
  while (true) {
    loop();
  }
}

void init() {
  LED1 = 1;
}

void loop() {
  LED1 = BUTTON1;
}

void delay(u16 i) {
  while (i--)
    ;
}