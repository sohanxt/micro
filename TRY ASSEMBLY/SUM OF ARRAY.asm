INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100
.DATA

ARR DB 1,2,3

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    PRINT "ENTER YOUR DIGIT: "

    MOV AH,1
    INT 21H
    SUB AL,48
    MOV CL,AL
    XOR CH,CH       

    MOV SI,OFFSET ARR
    MOV BL,[SI]

L1:
    INC SI  
    ADD BL,[SI]
    LOOP L1 
    
EXIT:
    PRINTN
    PRINT "SUM OF ALL DIGIT :"
    MOV AH,02
    MOV DL,BL
    ADD DL,48
    INT 21H
 
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
