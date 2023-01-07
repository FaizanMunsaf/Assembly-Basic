.model small
.stack 100h
.data 

    main proc
     mov ax,4h
     mov bx,3h
     mov cx,1h
     cmp ax,bx
     jl a
     
     cmp bx,cx
     jl b 
     
     mov cx,0
     jmp exit
     
     a:
     mov ax,0
     jmp exit
     
     b:
     mov bx,0
     jmp exit
     
     exit:
     mov dx,4ch
     int 21h
     
     main endp
    End main