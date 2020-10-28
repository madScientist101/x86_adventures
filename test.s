
.section .data

    data_item:
        .long 12

.section .text

.global _start

_start:
    movl $0, %edi
    movl data_item(,%edi,4),%eax
    # movl %eax, %ebx

    int $0x80

