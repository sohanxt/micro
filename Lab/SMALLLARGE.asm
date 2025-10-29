.MODEL SMALL
.STACK 100H
.DATA
NUM1 DB 50
NUM2 DB 30
MSG_LARGE DB 'larger number is : $'
MSG_SMALL DB 'small number is : $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,NUM1
    CMP AL,NUM2
    JAE SHOW_NUM1
    JB SHOW_NUM2   
    
    SHOW_NUM1:
    LEA DX,MSG_LARGE
    MOV AH,09H
    INT 21H
    MOV AL,NUM1
    ADD AL,30H
    MOV DL,AL  
    MOV AH,02H
    INT 21H
    JMP END_PROGRAM 
    
    SHOW_NUM2:
    LEA DX,MSG_SMALL
    MOV AH,09H
    INT 21H
    MOV AL,NUM2
    ADD AL,30H
    MOV DL,AL
    MOV AH,02H
    INT 21H
    
    END_PROGRAM:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    