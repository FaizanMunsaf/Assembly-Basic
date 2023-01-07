.model small
.stack 100h
.data
 
    main proc
        mov ax,-1
        cmp ax,0
        jl a
        
        jmp exit
        
        a:
        mov bx,-1

        exit:
        mov dx,4ch
        int 21h
        
        main  endp 
    End main

