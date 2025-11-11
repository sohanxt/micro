.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
   MOV CL,5
   NEG CL
  
  
    
    
 
     
     
    
    
    
    
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN