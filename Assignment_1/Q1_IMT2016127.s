     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD a=0 and b=1

	    MOV  R0, #0x0
		MOV  R1, #0x1
;INPUT n (position in series) 
        
        MOV R2, #0x5
        
;TEMP VARIABLE i (current position on series)
        MOV R3, #0x1
        
FIB
		CMP R2, R3   ; (i!=n)
		BEQ stop	 ; exit if equal
        
        MOV R5,R1        ;x=b
        ADD R1, R1, R0   ;b=b+a
        MOV R0,R5        ;a=x
        
        ADD R3, #0x1     ;i++
        
		B FIB            ; next iteration

;final a and b re nth and (n+1)th terms in series.
        
stop    B stop ; stop program
     ENDFUNC
     END 