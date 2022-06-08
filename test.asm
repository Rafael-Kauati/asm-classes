section .data
    ask : .asciiz "\nInput any value : "
    result : .asciiz "\nThis value + 2 : "

section .text
    global _WinMain@16

    _WinMain@16 :
        la $a0, ask
        li $vo,4
        syscall

        li $v0,5
        syscall

        move $t0, $v0

        addi $t1, $t0, 2

        la $a0, result
        li $vo,4
        syscall

        move $a0, $t1
        li $v0, 36
        syscall

        li $v0, 10
        syscall