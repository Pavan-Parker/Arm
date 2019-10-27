     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD NUMBER
	    MOV  R0, #0x231
		MOV  R1, #0x331
		MOV  R2, #0x113
;MAKE A TEMP VARIABLE AND COPY FIRST NUMBER
		MOV R3,  R0
		
;COMPARE WITH LATER NUMBERS
;IF TEMP IS LESS THAN GIVEN NUMBER, COPY IT TO TEMP.

		CMP  R3, R1
		IT	 LT
		MOVLT  R3, R1
		
		CMP  R3, R2
		IT	 LT
		MOVLT  R3, R2
stop    B stop ; stop program
     ENDFUNC
     END 