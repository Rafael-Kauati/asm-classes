.data 
	prompt: .asciiz  "Introduza um numero\n"
	result : .asciiz  "\nO fatorial do número inserido é: "
.text

.globl main

main:	#Imprime prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	#read_int()
	li $v0, 5
	syscall	
	
	#atribuição de variável n($t1)
	move $t1, $v0
	
	#i = n
	move $t0, $t1
	
	#f = 1
	addi $s2, $0, 1
	
for: 	ble $t0, 0, breakloop # i($t0) < 0 : breakloop 
	#f=f*i
	mul $s2, $s2, $t0
	#i--
	subi $t0,$t0,1
	#próxima iteração
	j for
	
breakloop:
	#print(result)
	la $a0, result
	li $v0, 4
	syscall
	#print(f)
	move $a0, $s2
	li $v0, 1
	syscall
	#exit
	li $v0, 10
    	syscall
	
	
	
	