  .globl _main
  .area RSEG (ABS,DATA)
  .org 0x0000
_main:
  clr 0x0090
_loop:
  sjmp _loop