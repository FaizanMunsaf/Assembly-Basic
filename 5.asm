
.model small
.stack 100h
.data 
   A dw 1,2,3,4
     dw 5,4,8,9
     dw 8,1,3,2

.code                       
   main proc  
    mov ax,@data
    mov ds,ax
    
    mov ax,2
    mov bx,3
    mov cx,4
    mov dx,offset A
    call find_ij
    
    int 21h
    MOV AH, 4CH 
    int 21H
   main endp
   
    proc find_ij
       sub ax,1
       mul cx
       sub bx,1
       add ax,bx
       mov cx,2
       mul cx
       mov dx,ax
       ret
    find_ij endp
    
    

