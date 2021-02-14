#include <8051.h>

#define true 1
#define false 0

void delay(unsigned int i) {
  unsigned char j;
  for (i; i > 0; i--)
    for (j = 100; j > 0; j--)
      ;
}

void main() {
  int i = 0;
  while (true) {
    for (i = 0; i < 8; ++i) {
      P0 = ~(0x01 << i);
      delay(1000);
    }
  }
}
