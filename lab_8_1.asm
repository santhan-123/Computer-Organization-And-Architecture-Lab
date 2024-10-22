org 100h

mov ah, 02h       ; Function to print a character (DOS interrupt 21h)
mov dl, '2'       ; Load ASCII of first digit ('2') into DL
int 21h           ; Call DOS interrupt to print the first digit

mov ah, 02h       ; Function to print a character again
mov dl, '3'       ; Load ASCII of second digit ('3') into DL
int 21h           ; Call DOS interrupt to print the second digit

mov ah, 4Ch       ; Function to terminate the program
int 21h           ; Call DOS interrupt to terminate the program

ret