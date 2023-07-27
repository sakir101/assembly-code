include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc
     
     print "Take two inputs: "
    mov ah,1
    int 21h 
    mov bx,ax
    
      mov ah,1
    int 21h 
    mov cx,ax 
    
    cmp bx,cx   ; compare with bl
    jg level1
    
    jmp level2 
    
    level1:
    print " biggest value is in bx:"
     mov cx,bx
     
    mov ah,2
    mov dx,cx
    int 21h
    
    jmp exit
     
     level2:
       print "biggest value is in cx :"
    
    mov ah,2
    mov dx,cx
    int 21h
    
    jmp exit
     
    exit:
    mov ah,4ch
    int 21h
    
    
        main endp
end main

