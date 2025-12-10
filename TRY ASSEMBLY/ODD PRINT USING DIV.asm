INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINT "HERE ALL ODD NUMBER :"
    MOV CX,10
    MOV BL,1
    
    L1:
    MOV AL,BL
    MOV AH,0
    MOV DL,2
    DIV DL
    CMP AH,0
    JZ NEXT
    
    MOV AH,2
    MOV DL,BL
    ADD DL,48
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    
    NEXT:
    INC BL
    LOOP L1
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN