INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H


.CODE
MAIN PROC

   PRINT  'HERE IS ALL ODD NUMBERS :'

    MOV BL, 1
    MOV CX, 10

L1:
    MOV AL, BL
    MOV AH, 0
    MOV DL, 2
    DIV DL
    CMP AH, 0
    JE NEXT

    MOV DL, BL
    ADD DL, 48
    MOV AH, 02h
    INT 21h

    MOV DL, 32
    MOV AH, 02h
    INT 21h

NEXT:
    INC BL
    LOOP L1

    MOV AH,4Ch
    INT 21h
MAIN ENDP
END MAIN
