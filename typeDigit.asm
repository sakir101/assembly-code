include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc
        
        print 'Type only digit'
    
       mov dl, '0'
       
       mov ah,1
       
       repeat:
       int 21h 
       cmp al, '0'
       jl exit
       cmp al, '9'
       jg exit 
       
       inc dl
       jmp repeat
       
       exit:
       mov ah,2
       int 21h 
       print 'You didnt type digit'
    
    
    
    main endp
end main



