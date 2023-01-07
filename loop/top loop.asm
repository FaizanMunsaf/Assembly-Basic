.model small
.stack 100h
.data 
.code
      main proc
        mov cx,5
        top:
        mov dl,"*"
        mov ah,2
        int 21h
        loop top
        
        main endp
    