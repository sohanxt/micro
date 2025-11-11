.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,1
    INT 21H
    MOV BH,AL   
    
    
    CMP BL,BH
    
    JG L1
           
           
     MOV AH,2
     MOV DL,BL
     INT 21H
     MOV DL,BH 
     INT 21H
     JMP EXIT
     
  
    
    
     
     L1: 
     MOV AH,2
     MOV DL,BH
     INT 21H
     MOV DL,BL
     INT 21H
     JMP EXIT:
     
     
    
    
    
    
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN