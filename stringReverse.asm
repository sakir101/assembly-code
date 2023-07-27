.model small
.stack 100h
.data

main proc
    mov ax, @data
    mov ds,ax
    
    
    mov cx,0
    
    mov ah,1 
    int 21h
    
    repeat: 
      cmp al, 0dh
      je  end_while
      
      push ax
      inc cx
      int 21h
      jmp repeat
      
    end_while:
         
         mov ah,2
         mov dl,10
         int 21h
         mov dl,13
         int 21h           
     
     Top:
        pop dx
        int 21h
        loop top    
    
    
    main endp
end main