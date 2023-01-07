.model small
.stack 100h
.data
.code
    main proc 
        mov dl,'?'
        mov ah,2
        int 21h
        
        Xor cx,cx
        
        while:
        mov ah,1
        int 21h
            
            
        cmp al,0dh
        je end_while
        
        push ax
        inc cx
        
        jmp while
        
        end_while:
        
        mov dx,13
        int 21h
        mov dx,10
        mov ah,2
        int 21h
       
        
        cmp cx,0
        je exit
        
        top:
        
        pop dx
        
        int 21h
        loop top
        
        
                                            
                                            
        exit:
        mov ah,4ch
        int 21h 
        
        main endp