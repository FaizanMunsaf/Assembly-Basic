.model small
.stack 100h
.data 
    w dw 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
.code
    main proc 
        mov ax,@data
        mov ds,ax
        xor ax, ax
        xor bx, bx
        mov cx, 10
    addnos:
    
        add ax, w[bx]
        add bx, 2
        loop addnos
        
        
    end main             