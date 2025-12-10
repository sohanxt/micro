INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
ARRAY DB 5,6,8,2,9,1,0,3


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV SI, OFFSET ARRAY
    MOV BL, [SI]
    INC SI
    MOV CX, 7

LoopA:
    CMP [SI], BL
    JLE Skip
    MOV BL, [SI]

Skip:
    INC SI
    LOOP LoopA

  PRINT 'Largest value in array : '

    MOV DL, BL
    ADD DL, 30h
    MOV AH, 02h
    INT 21h

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN
