#include <stdio.h>

int main() {
  int i = 20;

  while (i-- > 0) {
    int j = 25;
    while (j-- > 0) {
      printf("i = %d, j = %d\n", i, j);
    }
  }

  return 0;
}