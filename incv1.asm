#Leonardo Moreira 71512

.data
str:
   .string "Insert any integer number: "
   
.text
main:

 li a7 5
 ecall
 addi a0, a0, 1
 
 li a7, 1
 ecall
 
 li a0 '\n'
 
 li a7 11
 ecall
 
 li a0 0
 li a7, 93
 ecall
 
   
 
 
