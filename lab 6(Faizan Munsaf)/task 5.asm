.model small
.stack 100h
.data
     
     main proc
        
        mov ax,4h
        mov bx,2h
        mov cx,3h
        cmp ax,bx
        jl a
        
        cmp bx,cx
        jl a
        
        mov dx,1
        jmp exit
        
        a:
        mov dx,0
        jmp exit
        
        exit:
        mov dx,4ch
        int 21h
        
        main endp
     End main
