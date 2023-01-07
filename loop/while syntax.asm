.model small
.stack 100h
.data 
.code
      main proc 
        mov ah,1
        int 21h  
        
        WHILE_:
        cmp al,0dh
        je end_while
        mov ah,1
        int 21h
        jmp WHILE_
        
        end_while:
        mov ah,4ch
        int 21h
        
        main endp