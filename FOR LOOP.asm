.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV CX,5
    MOV DL,'*'
    MOV AH,2 
    
    FOR:
        INT 21H
        LOOP FOR
    
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN