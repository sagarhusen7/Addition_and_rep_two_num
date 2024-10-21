ORG 100h          ; Start the program at offset 100h

MOV DX, OFFSET msg_output  ; Load the address of the output message
MOV AH, 09h                ; DOS interrupt to display string
INT 21h

MOV AL, '7'    ; First digit of the two-digit number (you can change '7')
MOV DL, AL     ; Move the value to DL for output
MOV AH, 02h    ; DOS interrupt to display a single character
INT 21h

MOV AL, '3'    ; Second digit of the two-digit number (you can change '3')
MOV DL, AL     ; Move the value to DL for output
MOV AH, 02h    ; DOS interrupt to display a single character
INT 21h

MOV DX, OFFSET msg_end     ; Load the address of the ending message
MOV AH, 09h                ; DOS interrupt to display string
INT 21h

MOV AH, 4Ch     ; DOS interrupt to terminate the program
INT 21h

msg_output DB 0Dh, 0Ah, 'The required output for the two-digit number is: $'  ; Output message
msg_end DB 0Dh, 0Ah, '$'                       ; Ending message
END
