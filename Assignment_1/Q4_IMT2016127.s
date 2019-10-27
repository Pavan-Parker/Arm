     AREA     factorial, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	

;LOAD 2 NUMBERS
	    MOV  R0, #0x231
		MOV  R1, #0x331

;TAKE A THIRD NUMBER
		MOV  R2, #0x400

;COMPARE IT WITH ABOVE TWO NUMBERS AND SET R3 AS FOLLOWS:
        
        CMP  R2, R0
        ITE  LT
        MOVLT  R3, #0x1      ;R3=1 IF (R2<R0 && R2<R1)
        CMPGT  R2, R1
        ITE  LT
        MOVLT  R3, #0x2      ;R3=2 IF (R2>R0 && R2<R1)
        MOVGT  R3, #0x3      ;R3=3 IF (R2>R0 && R2>R1)

;HOWEVER THE CODE GIVES BUILD ERROR AS NESTED IF-THEN-ELSE ARE NOT SUPPORTED
         
stop    B stop ; stop program
     ENDFUNC
     END 