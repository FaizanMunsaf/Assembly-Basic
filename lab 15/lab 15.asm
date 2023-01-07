.model small
.stack 100h
.data

arr dw 1,2,3
    dw 4,5,6
    dw 7,8,9
 
.code  

    main proc
        
        mov ax,@data
        mov ds,ax
             
        xor bx,bx
             
        mov bx,arr+6
        xchg arr+16,bx
        mov arr+6,bx
        
        xor bx,bx
        xor si,si
        
        mov cx,9     
        
        mov ah,2
        
     top:
        
        mov dx,arr[si]
        add dx,30h
        int 21h
        add si,2
        
        loop top
        
    end main     