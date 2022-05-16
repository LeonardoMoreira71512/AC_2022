#Leonardo Moreira 71512

.include "iomacros.inc"

.data
      str:   .space 20

.text
main:
          getint(a2)
          putint(a2)
          putcharl('\n')
          
          getint(a2)
          putintln(a2)
         
          getchar(a2)
          putchar(a2)
          putcharl('\n')
          
          gets(str,20)
          puts(str)
          exit(0)
           
  
          
