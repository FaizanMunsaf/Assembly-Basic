.model small
.stack 100h
.data          
.code
      main proc 
        
        mov bx,0
        mov cx,10
        top:
        mov dx,cx
        add dx,48
        mov ah,2
        int 21h
        loop top
               
        inc bx
        cmp bx,10
        je  next     
        
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        mov cx,11
        
        loop top
               
        next:
        mov ah,4ch
        int 21h
        
        main endp
         