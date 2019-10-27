     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD AN ODD NUMBER
	    MOV  R0, #0x4
		MOV  R1, #0x9
		

GCD
		CMP R0, R1
		BEQ stop
		CMP R0, R1
		ITE GT
		SUBGT R0, R0, R1
		SUBLE R1, R1, R0
		
		B GCD
		
		
stop    B stop ; stop program
     ENDFUNC
     END 