.model small
.stack 100h
.data 
    w dw 10,20,30,40,50,60,70,80,90,100
.code
    main proc
        mov ax, @data
        mov ds, ax
        ;xor ax, ax
        mov ax,0
        lea si, w ;storing starting index
        mov cx, 10
    
    addnos:
        
        add ax, [si]
        add si, 2
        loop addnos
        
    end main             