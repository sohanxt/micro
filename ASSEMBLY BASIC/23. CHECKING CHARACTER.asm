.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL    
    
    
    CMP BL,'y'
    JZ  L1
    CMP BL,'Y'
    JZ  L1
    JNZ EXIT
    
     
     L1: 
     MOV AH,2
     MOV DL,BL
     INT 21H
     JMP EXIT:
     
     
    
    
    
    
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN