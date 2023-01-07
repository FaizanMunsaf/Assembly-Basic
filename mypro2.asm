.model small
.stack 100h
.data
.code
main proc
    mov cx,1
    top:
    mov dx,1
    add dx,48
    mov ah,2
    int 21h
    loop top
    
    mov dx,10
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
     mov cx,2
    top1:
    mov dx,2
    add dx,48
    mov ah,2
    int 21h
    loop top1
    
     
    mov dx,10
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
     mov cx,3
    top2:
    mov dx,3
    add dx,48
    mov ah,2
    int 21h
    loop top2
    
     
    mov dx,10
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
     mov cx,4
    top3:
    mov dx,4
    add dx,48
    mov ah,2
    int 21h
    loop top3
      
    mov dx,10
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
     mov cx,5
    top5:
    mov dx,5
    add dx,48
    mov ah,2
    int 21h
    loop top5
   
   
    
    main endp
end main
