# Return max value from a list

# Variables:
#     %edi -> holds the index of the current list item being examine
#     %ebx -> holds largest item found
#     %eax -> current list data item
# The following memory locations are used 
# data_items - contains the item data. A 0 is used
#                 to terminate the data

.section .data

data_items:
    .long 3,67,34,222,45,223,54,34,44,33,22,11,66,0

.section .text

.global _start

_start:
    movl $0, %edi
    movl data_items(,%edi, 4), %eax
    movl %eax, %ebx

start_loop:
    cmpl $0, %eax
    je loop_exit

    incl %edi
    movl data_items(,%edi,4), %eax
    cmpl %ebx, %eax
    jle start_loop  # jump if less or equal

    movl %eax, %ebx

    jmp start_loop

loop_exit:
    movl $1, %eax
    int $0x80

