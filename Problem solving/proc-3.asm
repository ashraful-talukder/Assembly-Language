.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'ENTER A THREE DIGIT WORD IN CAPITAL: $'
MSG2 DB 'YOUR EXPECTED OUTPUT IS: $'
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV BH,AL
    
    INT 21H
    MOV CL,AL
    
    ADD BL,32
    ADD CL,32
    ADD BH,32
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
     
    MOV AH,9
    LEA DX,MSG2
    INT 21H
     
    CMP BL,BH
    Jl L2
    
    L1:
        CMP BH,CL
        JL LL1
        
        MOV AH,2
        MOV DL,CL
        INT 21H
        MOV DL,BH
        INT 21H
        MOV DL,BL
        INT 21H
        JMP EXIT
        
        LL1:
            MOV DL,BH
            MOV AH,2
            INT 21H
            
            CMP CL,BL
            JL LLL1
            
            MOV AH,2
            MOV DL,BL
            INT 21H
            MOV DL,CL
            INT 21H
            JMP EXIT
            
            LLL1:
                MOV AH,2
                MOV DL,CL
                INT 21H
                MOV DL,BL
                INT 21H
                JMP EXIT
                
    
    L2:
        CMP BL,CL
        JL LL2
        
        MOV AH,2
        MOV DL,CL
        INT 21H
        MOV DL,BH
        INT 21H
        MOV DL,BL
        INT 21H
        JMP EXIT
        
        LL2:
            MOV AH,2
            MOV DL,BL
            INT 21H
            
            CMP BH,CL
            JL LLL2
            
            MOV AH,2
            MOV DL,CL
            INT 21H
            MOV DL,BH
            INT 21H
            JMP EXIT
            
            LLL2:
                MOV AH,2
                MOV DL,BH
                INT 21H
                MOV DL,CL
                INT 21H
                JMP EXIT 
        
    
   EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN