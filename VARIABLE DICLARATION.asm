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
        
        INT 21H
        MOV VAR2,AL
        
        
        SUB BL,VAR2   ;SUBTRACTING TWO NUMBER AND KEEP IT BL
        ADD BL,48     ;ADD BECAUSE OF ASCII VALUE
        
        MOV DL,BL
        MOV AH,2
        INT 21H
  
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN