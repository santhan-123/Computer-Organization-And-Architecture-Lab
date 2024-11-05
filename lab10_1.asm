MOV BL, '1'     
MOV CL, 10        

print_loop:
    MOV DL, BL       
    MOV AH, 02h    
    INT 21h          
    
    INC BL           
    LOOP print_loop  

MOV AH, 4Ch      
INT 21h
