#t0 - max_number / current_number
#t1 - fact
#t2 - current_number
#t3 - 2147483647
#t4 - division_counter
#a1 - return current_number

.data

entr: .asciz "\n"
space: .asciz " "
msg1: .asciz "Наибольший факториал, который помещается в диапазон INT32 равен \n"
msg2: .asciz "!"


.text
li a7, 4
la a0, msg1
ecall
jal count_fact
li a7, 4
la a0, msg2
ecall
j end


count_fact:
	li t1, 1
	li t2, 1
	li t0, 2147483647
	li t3, 2147483647
	while:
	bgt t1, t0, end_while
	mul t1, t1, t2
	addi t2, t2, 1
	li t4, 0
	
	# ====
	divu t0, t3, t2
	# ====
	
	j while
	
	end_while:
	addi t2, t2, -1
	mv a1, t2
	li a7, 1
	mv a0, a1
	ecall
	ret
	
end:
	



	
	
	
	
	
	
	
	
	
