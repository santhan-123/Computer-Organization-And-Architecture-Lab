ORG 100h

JMP start

msg_input1 DB 0Dh, 0Ah, 'Enter the input number1:$'
msg_input2 DB 0Dh, 0Ah, 'Enter the input number2:$'
msg_output DB 0Dh,0Ah, 'The numbers are equal$'
msg_error DB 0Dh,0Ah, 'Error: Not a number!$'

start: 
    
    ;print input message1 
    MOV DX, OFFSET msg_input1
    MOV Ah, 09h
    INT 21h  
    
    
    ;take input (input will be stored in al)
    MOV AH, 01h
    INT 21h  
    
    MOV BL, AL 
    
    ;print inpput message2
    MOV DX, OFFSET msg_input2
    MOV AH, 09h
    INT 21h
    
    ;take input
    MOV AH, 01h
    INT 21h
    
    
    cmp BL,AL
    je equal 
    
    mov DX, OFFSET msg_error  
    mov AH,09h
    int 21h
    jmp end
    

equal:
    mov DX, OFFSET msg_output
    mov AH, 09h
    int 21h
    
end:
    mov AH, 4ch
    int 21h
    
 
    
    

    
      
    
    
    
    
    
    

     
