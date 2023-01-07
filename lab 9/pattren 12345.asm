.model small
.stack 100h
.data
.code
    main proc
        
        mov ax,49
        mov cx,1
        top:
        
        mov dx,ax
        mov ah,2
        int 21h
        loop top
        
        
       
        
        mov dx,13
        mov ah,2
        int 21h
        mov dx,10
        mov ah,2
        int 21h  
        
        add ax,40 
        
        mov cx,2
        
        top1:
        
        mov dx,ax
        mov ah,2
        int 21h
        
        loop top1
        
        mov dx,13
        mov ah,2
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        add ax,41
        
        mov cx,3
        
        top2:
        
        mov dx,ax
        mov ah,2
        int 21h
        
        loop top2 
        
        
        mov dx,13
        mov ah,2
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        add ax,42
        
        mov cx,4
        
        top3:
        
        mov dx,ax
        mov ah,2
        int 21h
        
        loop top3 
        
        
        mov dx,13
        mov ah,2
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        add ax,43
        
        mov cx,5
        
        top4:
        
        mov dx,ax
        mov ah,2
        int 21h
        
        loop top4
        
        
        mov bx,5
        je next
        
        next:
        mov ah,4ch
        int 21h 
        
        main endp