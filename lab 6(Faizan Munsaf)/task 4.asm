.model small
.stack 100h
.data
     
     main proc
        
        mov ax,2h
        mov bx,6h
        mov cx,8h
        cmp ax,bx
        jl a
        
        mov bx,0h
        jmp exit
        
        a:
        cmp bx,cx
        jl b 
        
        mov bx,0h   
        jmp exit
        
        
        b:
        mov ax,0h
        jmp exit 
        
        exit:
        mov dx,4ch
        int 21h
        
        main endp
     End main