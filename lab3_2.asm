.data
    array: .word 5, 3, 6, -2, 4, -4, 5, 4, 2 
    
.text
	la	t0, array #mete o array em t0 por cada iteração	
	addi    t0, t0, 4  #set t0 with the value 4
	addi 	t1, t0, 32  #adiciona 32 ao t0 e mete em t1
	
	mv     t2, t0 #mete em t2 o conteudo de t0		
	li	a0, 0  #mete o valor 0 em a0 
sum:
	lw      s0, (t2)	#set s0 to contents of t2
	bgez	s0, skip	#if s0 >= 0 goto skip
	sub	s0, zero, s0  #set s0 as zero-s0
skip:
	add 	a0, a0, s0	#add s0 to a0 and put it in a0
	addi 	t2, t2, 8	#adiciona 8 ao t2
	blt      t2, t1, sum    #if t2 < t1 goto sum

	li	a7, 1      #print integer in a0
	ecall