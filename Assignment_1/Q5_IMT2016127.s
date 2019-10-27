     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD AN ODD NUMBER
	    MOV  R0, #0x231
		AND  R1, R0, #0X1
;R1 TELLS IF R1 IS ODD OR NOT

;LOAD AN EVEN NUMBER
	    MOV  R0, #0x232
		AND  R1, R0, #0X1
;R1 TELLS IF R1 IS ODD OR NOT		
		
stop    B stop ; stop program
     ENDFUNC
     END 