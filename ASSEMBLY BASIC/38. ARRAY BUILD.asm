INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
ARRAY DB 3,5,6,2,4,8


.CODE

MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV SI,OFFSET ARRAY
   
   MOV CX,6
   
   PRINT 'YOUR ARRAY VALUE : '
   
   LOOPX:
   MOV DL,[SI]
   ADD DL,48 
    MOV AH,2
   INT 21H
   
   MOV DL,32
   MOV AH,2 
   INT 21H 
   
   INC SI
   LOOP LOOPX
   
  
    
    
 
     
     
    
    
       
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN