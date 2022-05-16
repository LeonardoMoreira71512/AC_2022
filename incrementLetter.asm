.include "iomacros.inc"

.data
   str: .space 100 #100    #str = ABCDE\n
.text
main:
	gets(str, 100)
	la t0, str #index string
	li s0, '\n'  #guardo no s0 o \n
	
	loop:
	lb t1, (t0) #mete o primeiro caracter do t0 ou seja A em t1
	beq t1, s0, break # se o t1 for igual ao \n ent sai do loop
	addi t1, t1, 1 #incrementa o valor de t1 ou seja passa a B
	sb t1, (t0) #agr mete o valor de t1 em t0, ou seja, t0 agr = B (faz o store)
	addi t0, t0, 1 #incrementa o valor de t0, passa a B
	# tanto faz ter isto ou j loop, beq x0, x0, loop #x0 e smp o logo xo == x0 e smp true
	j loop
	break:
	
	puts(str)
	exit(0)
