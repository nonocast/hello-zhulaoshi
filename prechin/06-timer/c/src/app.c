#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int word;
typedef unsigned char byte;

word count;

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
  // 设置模式: 16位计时器
  TMOD = 0x01;
  // 设置时钟周期: 1ms (1ms/1us=1000次, 如果需要溢出触发则65536-1000=0xfc18)
  TH0 = 0xfc;
  TL0 = 0x18;
  TR0 = 1;
  ET0 = 1;
  EA = 1;
}

void timer0() __interrupt(1) {
  TH0 = 0xfc;
  TL0 = 0x18;

  ++count;
  if (count < 1000) {
    P0_0 = !P0_0;
  } else if (count < 2000) {
    P0_0 = 0;
  } else {
    count = 0;
  }
}

void loop() {}

void delay(word i) {
  while (i--)
    ;
}