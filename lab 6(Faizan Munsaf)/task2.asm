.model small
.stack 100h
.data
    main proc
        
        mov al,4
        cmp al,5
        jl a
        
        mov ah,0h
        jmp exit
        
        a:
        mov ah,0ffh

        
        exit:
        mov dx,4ch
        int 21h
        
        main endp
    End main