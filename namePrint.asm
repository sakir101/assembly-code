.model small
.stack 100h  

.data   
a db "Sakir Hossain Faruque$"
.code

main proc
       mov ax, @data
       mov ds, ax
       
       mov cx, 80
       mov ah,9
       
       
       level:
       lea dx,a 
       int 21h
       loop level 
       
     
       
    
    main endp
end main



