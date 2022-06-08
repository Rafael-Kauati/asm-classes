.data
	frs : .asciiz "Introduza um numero\n"
	par : .asciiz "O numero é par\n"
	impar : .asciiz "O numero é impar\n"
	resultOfDiv : .asciiz "Resultado da divisão :\n"
	
	
.text

.globl main

main :	#imprime o frs
	la $a0, frs
	li $v0, 4
	syscall
	
	#Entreda de valor e armazenamento
	li $v0, 5
    	syscall 
    	addi $t0, $v0, 1
    	
    	move $a0, $t0
    	li $v0, 4
    	syscall
    	
    	#Checagem do num%2 == 0 (par)
    	#addi $t1, $0, 2
    	#div $t0, $t1
    	#move $a0, $t0
    	#li $v0, 1
    	#syscall
    	
    	# == 0
   	beq $t0, 0, label_par
    	# != 0
    	la $a0, impar
    	li $v0, 4
    	syscall
	j exit
    	
label_par:
	la $a0, par
	li $v0,4
	syscall    	
    		
exit:    	
    	li $v0, 10
    	syscall

    	
    	
		
