.model small
.stack 100h
.data
.code

main proc
    
       mov cx, 5
       
       mov ah,2
       mov dl, '*'
       
       level:
       int 21h
       loop level
       
    
    main endp
end main



