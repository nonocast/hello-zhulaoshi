#include <8051.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned int word;
typedef unsigned char byte;

void delay(word i);
void init();
void loop();
void sendByte(byte);
void sendString(char *string);

void main() {
  init();
  while (true) {
    loop();
  }
}

void init() {
  // init uart
  SCON = 0x50; // 0b 0101 0000
  TMOD = 0x20; // set timer1 as 8-bit auto reload mode
  PCON = 0x80;
  TH1 = TL1 = 0xf3;

  TR1 = 1; // timer1 start run
  ES = 1;  // enable uart interrupt
  EA = 1;  // open master inerrupt switch
}

void loop() {
  sendString("hello world\n");
  P0_0 = !P0_0;
  delay(50000);
}

void sendByte(byte data) {
  SBUF = data;
  while (!TI)
    ;
  TI = 0;
}

void sendString(char *string) {
  while (*string) {
    sendByte(*string++);
  }
}

void delay(word i) {
  while (i--)
    ;
}