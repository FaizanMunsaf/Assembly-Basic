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
        
        xor ax,ax
        
        xor si,si
        
        lea si,arr
        
        mov cx,9
        
        
        
        top:
            add ax,[si]
            
            mov dx,ax
            add dx,30h
            add si,2
            
            
            loop top
            
            mov ah,2
            
            int 21h
            
            end main 