.model small
.stack 100h 
.data  



.code
main proc
    mov cx,10
    top:
    mov dl,'*'
    mov ah, 2
    int 21h 
    loop top  
    
    mov dx,10
    int 21h
    mov dx,13
    mov ah,02
    int 21h 
    
    
    
     
    mov cx,10 
     
     
    top1:    
    
    
    mov dl,'*'
    
    mov ah, 2
    int 21h 
    loop top1
    
     mov dx,10
    int 21h
    mov dx,13
    mov ah,02
    int 21h 
    
    
    
     
    mov cx,10 
     
     
    top2:    
    
    
    mov dl,'*'
    
    mov ah, 2
    int 21h 
    loop top2
   
    main endp
end main
               
                 
                 