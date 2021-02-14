                                      1   .globl _main
                                      2   .area RSEG (ABS,DATA)
      000000                          3   .org 0x0000
      000000                          4 _main:
      000000 C2 92            [12]    5   clr 0x0092
      000002                          6 _loop:
      000002 80 FE            [24]    7   sjmp _loop
