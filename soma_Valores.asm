.data
    result : .asciiz "\nThe sum of values is : "
    prompt : .asciiz "\nInput two integers values \n"
    firstValue : 	.asciiz "\nFirst one : "
    secondValue :	.asciiz "\nSecond one : "

.text
.globl print_int10

#3.2
print_int10:
    la $a0, prompt
    li $v0, 4
    syscall

    #first value
    la $a0, firstValue
    li $v0,4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    #second value
    la $a0, secondValue
    li $v0,4
    syscall

    li $v0, 5
    syscall

    move $t1 , $v0

    #sum
    add $t3, $t0, $t1

    la $a0, result
    li $v0, 4
    syscall

    #store and output value
    move $a0, $t3
    li $v0, 1
    syscall

    li $v0, 10
    syscall

    #3.3
    print_intu10:
    la $a0, prompt
    li $v0, 4
    syscall

    #first value
    la $a0, firstValue
    li $v0,4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    #second value
    la $a0, secondValue
    li $v0,4
    syscall

    li $v0, 5
    syscall

    move $t1 , $v0

    #sum
    add $t3, $t0, $t1

    la $a0, result
    li $v0, 4
    syscall

    #store and output value
    move $a0, $t3   
    li $v0, 36
    syscall

    li $v0, 10
    syscall
