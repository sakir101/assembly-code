.model small
.stack 100h
.code
main proc
; take a input . if you take '1' then display 'A'
                                   ; otherwise display 'B'
  
  mov ah,1   ; take a input
  int 21h
  mov bl,al  ; store 1's ascii  code = 49 =bl      
   
   ; compare
   cmp bl,'1'  ; compare bl with "1'
   je level1    ; jump if equal that means, bl = 1
    jmp level2
    
    level1: 
    mov ah,2
    mov dl,'A'
    int 21h 
    
  mov ah,4ch
    int 21h 
    
    level2:
    mov ah,2
    mov dl,'B'
    int 21h
    
    main endp
end main

