.include "iomacros.inc"

.data
    array: .word 5, 2, 6, 1, 4, -4, 5, 5, 2
    
.text
    la      t0, array #t0 está a apontar para o primeiro elemento do array
    addi    t0, t0, 4  #vai andar 1 em frente pq 4/4 = 1
    addi    t1, t0, 32  #32/4 = 8, ou seja, avanca 8 em frente para saber que chegou ao fim do array
    
    mv      t2, t0 #t2 vai apontar para onde aponta o t0, o pointer de t0 não é eliminado
    li      s0,0    #coloca valor 0 em s0 , s0 = 0
loop:
    lw      s1,    (t2)  #s1 vai guardar o valor que é apontado pelo t2, s1 = 2
    add     s0, s0, s1   #s0 = s0 + s1, s0 = 0 + 2; s0 = 2
    addi    t2, t2, 8   #t2 agora vai apontar 2 indíces à frente, ou seja, t2 aponta agora para 1
    blt     t2, t1, loop   # while t2 < t1   (t2 = 1, t1 está fora do array) goto loop

    div4(a0, s0)      #faz a divisão quando t2 >= t1 

    li      a7, 1      #print integer in a0
    ecall
