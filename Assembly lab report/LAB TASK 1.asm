INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
ARRAY DB 'A','b','u',' ','S','a','h','i','d',' ','S','o','h','a','n'


.CODE

MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV SI,OFFSET ARRAY
   
   MOV CX,15
   
   PRINT 'My name is : '
   
   LOOPX:
   MOV DL,[SI]
    MOV AH,2
   INT 21H 
   
   INC SI
   LOOP LOOPX
        
 EXIT:   
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN