.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
        
        MOV AH,1
        INT 21H
        MOV BL,AL
        
        INT 21H
        MOV BH,AL
        
        
        ADD BL,BH     ;ADDING TWO NUMBER AND KEEP IT BL
        SUB BL,48     ;SUBTRACT BECAUSE OF ASCII VALUE
        
        MOV DL,BL
        MOV AH,2
        INT 21H
  
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN