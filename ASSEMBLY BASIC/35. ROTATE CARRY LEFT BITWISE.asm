.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
   MOV AX,6
   RCL AX,1 
   
   MOV AH,2
   MOV DX,AX
   INT 21H
  
    
    
 
     
     
    
    
       
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN