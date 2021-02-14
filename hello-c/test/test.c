#include <stdio.h>  /* printf */
#include <stdlib.h> /* strtol */
#include <string.h> /* strcat */

const char* getBitString(int x) {
  static char b[9];
  b[0] = '\0';

  int z;
  for (z = 128; z > 0; z >>= 1) {
    strcat(b, ((x & z) == z) ? "1" : "0");
  }

  return b;
}

int main() {
  printf("0x01:\t\t%s\n", getBitString(0x01));
  printf("!0x01:\t\t%s\n", getBitString(!0x01));
  printf("!0x00:\t\t%s\n", getBitString(!0x00));
  printf("~0x01:\t\t%s\n", getBitString(~0x01));
  printf("0x01<<1:\t%s\n", getBitString(0x01 << 1));
  printf("~(0x01<<1):\t%s\n", getBitString(~(0x01 << 1)));

  printf("0xfe:\t\t%s\n", getBitString(0xfe));
  printf("0xfe<<1:\t%s\n", getBitString(0xfe << 1));

  printf("set bit=1: 0xf0 (11110000) || 0x11(00010001)\t%s\n",
         getBitString(0xf0 | 0x11));

  printf("---\n");

  int i = 0;
  int P0 = 0xff;
  for (i = 0; i < 8; ++i) {
    P0 = ~(0x01 << i);
    printf("P0: %s\n", getBitString(P0));
  }

  return 0;
}