.model small
.stack 100h
.data
     
     
     ;msg DB 'your value is lower or greater $\'
     
    main proc
        
        mov dl,'E'
        cmp dl,'A'
        jge a

        jmp next
        
        
        a:
        cmp dl,'Z'
        jle b         
        jmp next 
        
        
        b:
        mov bl,dl 
        jmp next
        
        
        ;exit:
        ;lea dx,msg
        ;mov ah,09
        ;int 21h 
        
             
             
        next:
        mov dx,4ch
        int 21h
        
        main endp
    End main
        