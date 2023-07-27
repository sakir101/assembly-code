.model small
.stack 100h
.data

.code

main proc 
    mov al, 1h
    mov bl, 2h
    
    xchg al, bl
    
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 




