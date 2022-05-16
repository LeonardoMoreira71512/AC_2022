.include "iomacros.inc"

.data
str: .string "Triangle:\n"
 
.text
main:
 
 	getint(t3)
 	getint(t4)
 	getint(t5)
 	
 	getint(s2)
 	getint(s3)
 	getint(s4)
 	
 	getint(s5)
 	getint(s6)
 	getint(s7)
 	
 	getint(s8)
 	getint(s9)
 	getint(s10)
 	
 	#x0, y0, z0
 	puts(str)
 	putcharl('(')
 	add t1, t3, s2
 	putint(t1)
 	putcharl(',')
 	add t1, t4, s3
 	putint(t1)
 	putcharl(',')
 	add t1, t5, s4
 	putint(t1)
 	putcharl(')')
 	
 	#x1, y1, z1
 	putcharl(',')
 	putcharl('(')
 	add t1, s5, t3 
 	putint(t1)
 	putcharl(',')
 	add t1, s6, t4
 	putint(t1)
 	putcharl(',') 
 	add t1, s7, t5
 	putint(t1)
 	putcharl(')')
 	
 	 #x2, y2, z2 
 	 putcharl(',')
 	 putcharl('(')
 	 add t1, s8, t3 
 	putint(t1)
 	putcharl(',')
 	add t1, s9, t4
 	putint(t1) 
 	putcharl(',')
 	add t1, s10, t5
 	putint(t1)
 	putcharl(')')
 	putcharl('\n')
 	
 	exit(0)

