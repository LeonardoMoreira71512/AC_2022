.data
    array: .word 2, 7, 3, 7 #guarda esses valores no array
    
.text
    la t0, array  #guarda o array em t0
    li  t1, 4  #mete o valor 4 em t1       
    li  a0,0   #guarda 0 em a0     
loop:
    lw     s0, (t0)   #set s0 to the contents inside the array por cada iteracao
    add   a0, a0, s0  #add a0 with s0 and put in a0
    addi   t1, t1, -1    #set t1 to t1-1 = 4-3
    addi    t0, t0, 4   #set t0 to 4    porquê este comando?
    bnez    t1, loop  #t1 != 0, continua no loop
    
    li  a7, 1    #print integer in a0
    ecall