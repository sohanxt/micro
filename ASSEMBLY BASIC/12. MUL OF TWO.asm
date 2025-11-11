org 100h

MOV AL, 3
MOV BL, 2
MUL BL

MOV AH, 2
MOV DL, 13   ; carriage return
INT 21h
MOV DL, 10   ; line feed
INT 21h

ADD AL, 44
MOV DL, AL
MOV AH, 2
INT 21h

MOV AH, 4Ch
INT 21h
