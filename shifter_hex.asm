section .data
    breakline : .asciiz "\n"
section .text

.globl _main

_main:
    andi $t2, $t1, 0xF0000000
    srl $a0, $t2, 28
    li $v0, 34
    syscall

    la $a0, breakline
    li $v0,4
    syscall

    andi $t2, $t1, 0x0F000000
    srl $a0, $t2, 24
    li $v0, 34
    syscall


    la $a0, breakline
    li $v0,4
    syscall

    andi $t2, $t1, 0x00F00000
    srl $a0, $t2, 20
    li $v0, 34
    syscall


    la $a0, breakline
    li $v0,4
    syscall



    andi $t2, $t1, 0x000F0000
    srl $a0, $t2, 16
    li $v0, 34
    syscall

    la $a0, breakline
    li $v0,4
    syscall


    andi $t2, $t1, 0x0000F000
    srl $a0, $t2, 12
    li $v0, 34
    syscall



    la $a0, breakline
    li $v0,4
    syscall


    andi $t2, $t1, 0x00000F00
    srl $a0, $t2, 8
    li $v0, 34
    syscall



    la $a0, breakline
    li $v0,4
    syscall


    andi $t2, $t1, 0x000000F0
    srl $a0, $t2, 4
    li $v0, 34
    syscall



    la $a0, breakline
    li $v0,4
    syscall


    andi $t2, $t1, 0x000000F
    srl $a0, $t2, 0
    li $v0, 34
    syscall
