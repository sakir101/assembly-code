include 'emu8086.inc'
.model small
.stack 100h
.code
main proc

  
  mov ah,1   
  int 21h
  mov bl,al  
   
   ; compare
   cmp bl,'1'  
   jl level1 
   cmp bl,'9'
   je level1
       
    jmp level3
    
    level1: 
    print 'Value is les than 1' 
    
  mov ah,4ch
    int 21h 
    
    level2:
        print 'Value is greater than 9'
    
    level3:
        print 'Value is '
        mov ah,2
        mov dl,bl
        int 21h
    
    main endp
end main

