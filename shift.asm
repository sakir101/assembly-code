.model small
.stack 100h
.data
.code
 main proc
    
    mov cx,8
    
    mov ah,1
    int 21h 
    mov bl,al 
    
    
    level1:
    
      shl bl,1
      jnc zero 
      
      one:
      mov dl, '1'; data store in dl
      inc bh
      jmp printDL
      
    
    zero: 
    mov dl, '0'
    jmp printDL
    
    
    
    printDL:
    
    mov ah,2
    int 21h ;print dlvalue
    loop level1    
    
    mov dl,bh
    mov ah,2
    int 21h 
    
    
    main endp
 end main