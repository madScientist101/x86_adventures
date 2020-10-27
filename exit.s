.section .data

.section .text

.global _start


_start:
    movl $1, %eax
    movl %eax, %ebx

    int $0x80

