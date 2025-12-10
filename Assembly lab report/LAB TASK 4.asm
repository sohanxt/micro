INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
STR DB 'bangladesh$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV SI, OFFSET STR
    MOV CX, 10

L1:
    MOV AL,[SI]
    CMP AL,'a'
    JB SKIP
    CMP AL,'z'
    JA SKIP
    SUB AL,32
    MOV [SI],AL
SKIP:
    INC SI
    LOOP L1

    MOV DX, OFFSET STR
    MOV AH,09h
    INT 21h

    MOV AH,4Ch
    INT 21h
MAIN ENDP
END MAIN



