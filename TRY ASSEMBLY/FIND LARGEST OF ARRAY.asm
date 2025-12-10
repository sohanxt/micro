INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
ARRAY DB 5,6,3,4,2,0,9

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET ARRAY
    MOV BL,[SI]
    INC SI
    MOV CX,7
    
    L1:
    CMP [SI],BL
    JLE SKIP
    MOV BL,[SI]   
    
    SKIP:
    INC SI
    LOOP L1
    
    PRINT "LARGEST NUMBER IS "
    MOV AH,2
    MOV DL,BL 
    ADD DL,48
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    

