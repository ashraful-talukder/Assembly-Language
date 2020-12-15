.MODEL SMALL
.STACK 100H
.DATA
VAR1 DB ' is Greater than $'
VAR2 DB 'You entered same value$'
.CODE
MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,1
        INT 21H
        MOV BL,AL
        
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV BH,AL
        
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        
        CMP BL,BH
        JG L1
        JL L2
        
        LEA DX,VAR2
        MOV AH,9
        INT 21H
        JMP EXIT
        
        L1:
            MOV AH,2
            MOV DL,BL
            INT 21H
            
            LEA DX,VAR1
            MOV AH,9
            INT 21H
            
            MOV AH,2
            MOV DL,BH
            INT 21H
            JMP EXIT
        L2:
            MOV AH,2
            MOV DL,BH
            INT 21H
            
            LEA DX,VAR1
            MOV AH,9
            INT 21H
            
            MOV AH,2
            MOV DL,BL
            INT 21H
            JMP EXIT
            
  
    
    EXIT:
        MOV AH,4CH
        INT 21H       ;EXIT FUNCTION
        MAIN ENDP
END MAIN