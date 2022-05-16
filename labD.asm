.include "iomacros.inc"

.data
	str: .space 100
		
.text
	getint(s1)
	getint(s2)
	gets(str, 100)
	
	la s0, str   		#s0 inicio string
	la s4, str	          #s4 servirá para fazer a comparação de pointers para o shift
	li t2, '\n'        	#t2 = \n
	
	beqz s1, soma           #If s1 == 0 então não precisa de fazer rotação, vai logo para a soma
	
	strlen:
	lb t1, (s0)                #t1 vai apontar para o primeiro char da string
	beq t1,t2,shift 	#Compara com'\n', if t1 == \n então chegou ao fim da string, logo, pode fazer a rotação
	addi s0, s0, 1		# Apontador para o ultimo caracter, vai incrementando de 1 em 1 o apontador de s0
	addi t3, t3, 1		# Tamanho da string
	j strlen

################

shift:
	mv t4, s0		#Apontador ultimo caracter
	addi t4,t4,-1	          #Faz o t4 apontar para a ultima letra	
	lb s9, (t4)		#Guarda a ultima letra em s9
	
loop:
	beq t4, s4, break	# Comparacao de apontadores, if t4 == s4 ,isto é, se o apontador do ultimo char (t4) for igual ao apontador do primeiro char (s4)
          addi t4,t4,-1		#vou decrementando o pointer de t4 em -1
	lb s3, (t4) 		#vou fazer o s3 apontar para onde aponta o t4
	sb s3, 1(t4) 		#guardo o conteudo de t4 em s3
	j loop
	
break:
	sb s9, (s4)		# ultimo caracter para o inicio da string
	addi s1, s1, -1		# Decrementa as n vezes (s1=n vezes shift)
	bnez s1, shift

################

	beqz s2, print		# if s2 == 0 ent n faz nenhuma soma de caracteres, ou seja, pode logo dar print da string
soma:
	lb t6, (s4)   		#vai fazer o t6 apontar para onde aponta o s4
	beq t6,t2, print 	# Compara com'\n' -> se for igual a \n então sai do loop e dá print, quer dizer que já fez a soma em todos os chars
	add t6,t6, s2          #vai fazer a soma dos caracteres de acordo com o numero de incrementação
	sb t6, (s4)              #coloca em t6 o valor do apontador de s4
	addi s4, s4,1           #Vai iterando pela string 1 em 1 posição
	j soma
	
print:
	puts(str)
	exit(0)
