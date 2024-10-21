   ORG 100h           ; Origin, to specify that the program starts at 100h (COM file format)

; Hardcode the first number (for example, 3)
MOV AL, '4'        ; First number in ASCII
SUB AL, 30h        ; Convert ASCII to decimal (subtract '0')
MOV BL, AL         ; Store first number in BL

; Hardcode the second number (for example, 4)
MOV AL, '4'        ; Second number in ASCII
SUB AL, 30h        ; Convert ASCII to decimal (subtract '0')
MOV BH, AL         ; Store second number in BH

; Perform addition
ADD BL, BH         ; Add the two numbers, result in BL

; Display message "The result of addition is: "
MOV DX, OFFSET msg_output
MOV AH, 09h        ; Function 09h to display a string
INT 21h            ; Call DOS interrupt to print the output message

; Convert the sum to ASCII
MOV AL, BL         ; Move the sum to AL
ADD AL, 30h        ; Convert decimal to ASCII (add '0')

; Print the result
MOV DL, AL         ; Move result to DL
MOV AH, 02h        ; Function 02h to print a single character
INT 21h            ; Call DOS interrupt to print the result

; Terminate the program
MOV AH, 4Ch        ; Function 4Ch to terminate the program
INT 21h            ; Call DOS interrupt to exit

msg_output DB 0Dh, 0Ah, 'The result of addition is: $'

END
