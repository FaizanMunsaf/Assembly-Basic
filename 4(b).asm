.model small
.stack 100h
.data 
   A dw 1,0,0,4,5,0,7,8,9,10
.code                       
   main proc  
    mov ax,@data
    mov ds,ax
    xor si,si
    mov cx,10
    mov dx,0
    
    top:          
       cmp A[si],0
       jne false
       inc dx
       false:
       add si,2
       loop top 
    
    mov ah,2
    add dx,30h
    int 21h
    
   main endp
