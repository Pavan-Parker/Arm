     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD a AND b
	    MOV  R0, #0x4
		MOV  R1, #0x9
		

GCD
		CMP R0, R1   ; (a!=b)
		BEQ stop	 ; exit if equal
		CMP R0, R1	 
		ITE GT		 
		SUBGT R0, R0, R1 ; (a>b)
		SUBLE R1, R1, R0 ; (a<=b)
		
		B GCD			 ; next iteration
		
		
stop    B stop ; stop program
     ENDFUNC
     END 
