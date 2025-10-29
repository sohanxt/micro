.MODEL SMALL
.STACK 100H
.DATA
SCORE DB 85

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,SCORE
    
    CMP AL,80
    JAE A
    CMP AL,70
    JAE B
    CMP AL,60
    JAE C
    CMP AL,50
    JAE D
    JMP F
    
   A: MOV DL,'A'
   JMP PRNT
   B: MOV DL,'B'
   JMP PRNT
   C: MOV DL,'C'
   JMP PRNT
   D: MOV DL,'D'
   JMP PRNT
   F: MOV DL,'F'
   
   PRNT: MOV AH,02H  
   INT 21H
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN
    