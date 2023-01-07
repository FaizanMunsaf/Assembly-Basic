.model small
.stack 100h
.data 
   A dw 1,2,3,4,5,6,7,8,9,10
.code                       
   main proc  
    mov ax,@data
    mov ds,ax
    xor si,si
    mov bx,2
    mov cx,9
    mov dx,A[si]
    top:
       mov ax,A[bx]
       mov A[si],ax
       add si,2
       add bx,2
       loop top 
    
    mov A[si],dx
    
    mov bx,0
    mov cx,10
    mov ah,2
    show:
       mov dx,A[bx] 
       add dx,30h
       add bx,2    
       int 21h
       loop show
          
   main endp
