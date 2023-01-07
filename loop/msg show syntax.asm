.model small
.stack 100h
.data    

    msg db 'My first program','$'

.code
      main proc 
        
        mov ax,@Data
        mov ds,ax
        
        lea dx,msg
        mov ah,9
        int 21h
        
        main endp