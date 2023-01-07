.model small
.stack 100h
.data 
.code
      main proc
        
        mov ah,1
        
        Repeat:
        
        int 21h
        cmp al,' '
        jne Repeat
                 
        main endp