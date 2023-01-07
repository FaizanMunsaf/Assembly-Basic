.model small 
.stack 100h
.data    


    msg DB 'Enter the Value of Small character:$\'
    msg1 DB 'your Capital Character is:$\'


.code
    main proc
    
    mov ax,@Data
    mov ds,ax
    
    
    lea dx, msg
    mov ah,09
    int 21h
    
     
    mov ah,01
    int 21h
    
    mov bx,ax
    
    sub bx,32
    
    mov dx,10
    mov ah,02
    int 21h
    mov dx,13
    mov ah,02
    int 21h
    
    lea dx, msg1
    mov ah,09
    int 21h
    
    mov dx,bx
    
    mov ah,02
    int 21h
    
    
    mov ah,4ch
    int 21h
   
   
    main endp
    End main




