.model small
.stack 100h 
.data

a db 5,2,1,3,4

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,a
    mov bx,5
    call reverse
    
    
    mov ah,4ch
    int 21h
    main endp

reverse proc
     
     push ax
     push bx
     push cx
     push si
     push di
     
     
     mov di,si
     mov cx,bx
     dec bx 
     shl bx,1
     add di,bx
     shr cx,1
     
     
     xchg_loop:
        
        mov ax,[si]
        xchg ax,[di]
        mov [si],ax
        add si,2
        sub Di,2
        loop xchg_loop
        pop di
        pop si
        pop cx
        pop bx
        pop ax
        Ret
        reverse endp

        