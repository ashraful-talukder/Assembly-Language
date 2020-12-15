.MODEL SMALL
.STACK 100H
.DATA
VAR1 DB ?
VAR2 DB ?
.CODE
MAIN PROC
        
        MOV AH,1
        INT 21H
        MOV BL,AL
       
       
        SUB BL,32
        
        
        MOV DL,BL
        MOV AH,2
        INT 21H
  
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN