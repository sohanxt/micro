.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL    
    
    
    CMP BL,'a'
    JNGE  L2
    CMP BL,'z'
    JNLE L2
    
     JMP L1  
     
     L1: 
     MOV AH,2
     MOV DL,BL
     SUB DL,32
     INT 21H
     JMP EXIT:
     
     
     L2:
     MOV AH,2
      MOV DL,BL
      INT 21H
      JMP EXIT:
    
    
    
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN