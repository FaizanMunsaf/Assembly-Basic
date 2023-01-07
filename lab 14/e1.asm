.model small
.stack 100h
.data 
    w dw 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25
.code
    main proc
        mov ax, @data
        mov ds, ax 
        
        xor si,si
        
        xor ax,ax
        
        mov ax, w+2
        xchg w+4, ax
        mov w+2, ax 
        
        mov cx,25
        
        mov ah,2
        
      output:  
        mov dx,w[si]
        add dx,30h  
        int 21h
        add si,2
        
        
        loop output
        
    end main             