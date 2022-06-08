.data
	prompt: .asciiz "Introduza um numero\n"
	char: .ascii "-"
	
.text

.globl main

main:
	la $a0, prompt
	li $v0, 4
	syscall
	
	# a = read_iint()
	li $v0, 5
	syscall
	move $t0, $v0 # $t0 = $v0 = a
	
	#i = 0
	add $s0, $0,$0
	
for:	 
	bge  $s0, $t0, breakloop #while $t0 != $s0
	#Print("-")
	la $a0, char
	li $v0, 4
	syscall
	#i++
	addi $s0, $s0, 1
	j for
	
breakloop:
	li $v0, 10
    	syscall 
	 
	   
