.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H           ;INPUT
    MOV BL,AL
    
    MOV DL,10
    MOV AH,2
    INT 21H           ;NEW LINE
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,BL         ;OUTPUT
    INT 21H
    
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN