include 'emu8086.inc'
.model small
.stack 100h
.code
main proc

    mov ah,1
    int 21h 
    
    ;a or e or i or o or u 
    cmp al,'a'
    je vowel
    cmp al,'e'
    je vowel
    cmp al,'i'
    je vowel
    cmp al,'o'
    je vowel
    cmp al,'u'
    je vowel
    
    
    jmp constant
    
    
    vowel:
    print 'This is vowel'
    
    jmp exit
    
    constant:
    print 'This is not vowel'
     jmp exit
     
    exit:
    mov ah,4ch
    int 21h
    
     main endp
end main
