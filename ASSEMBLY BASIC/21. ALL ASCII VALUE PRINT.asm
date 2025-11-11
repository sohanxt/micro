.MODEL SMALL
.STACK 100H


.CODE
MAIN PROC
    MOV CX,256 
    
    
    MOV AH,2
    MOV DL,0
    
    LOOP:
    INT 21H
    
    INC DL
    DEC CX
    JNZ LOOP
    
    
    
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN