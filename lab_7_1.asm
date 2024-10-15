org 100h

MOV DX, OFFSET msg_input  
MOV AH, 09h        
INT 21h            ; Print the input message

MOV AH, 01h       
INT 21h            ; Read character from user input
MOV DL, AL         ; Store the input character
MOV CL, AL

CMP AL, '0'        
JL Notinteger      ; If less than '0', jump to error
CMP AL, '9'        
JG Notinteger      ; If greater than '9', jump to error

MOV DX, OFFSET msg_output
MOV AH, 09h   
INT 21h            ; Print the output message

MOV DL, CL         
MOV AH, 02h       
INT 21h            ; Print the entered number
JMP EndProgram


Notinteger:
MOV DX, OFFSET msg_error  
MOV AH, 09h       
INT 21h            ; Print the error message

EndProgram:
MOV AH, 4Ch        ; Terminate program
INT 21h                                

msg_input DB 0Dh, 0Ah, 'Enter the number $'
msg_output DB 0Dh, 0Ah, 'The number is $'
msg_error DB 0Dh, 0Ah, 'Error: Not a number! $'

END
