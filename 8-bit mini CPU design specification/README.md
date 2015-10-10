# 8-bit mini CPU design specification
» 8-bit addition.  
» Multiply by 2 and divide by 2 (shift left/right operation).  
» It must have two 8-bit registers that hold values for the calculations.  
» It takes in a 12-bit value as input (4-bit instruction set & 8-bit data).  
» It gives out an 8-bit value as result of the calculations.  
» Each instruction will happen during one clock cycle.  

Detail Requirements:  

» 0000 00000000 - clear the two registers (output "00000000")  
» 0001 XXXXXXXX - put XXXXXXXX value into register 1  
» 0010 XXXXXXXX - put XXXXXXXX value into register 2  
» 0011 00000000 - R2 = Rout (write result back to register 2)  
» 0100 00000000 - Rout = R1 + R2 w/ overflow  
» 0101 00000000 - Rout = R2 << 1 w/ overflow  
» 0110 00000000 - Rout = R2 >> 1  
» 0111 00000000 - Rout = R1 & R2  
» 1000 00000000 - Rout = R1 | R2  
» 1001 00000000 - Comparator: if (R1==R2) Rout="0", else if (R1>R2) Rout="1", else Rout="-1"  
