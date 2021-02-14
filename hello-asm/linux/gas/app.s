.data
    str: .asciz "Hello World\n"
.section    __TEXT,__text
    .globl  _main
    _main:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        leaq    str(%rip), %rdi
        callq   _printf
        addq    $32, %rsp
        popq    %rbp
        retq