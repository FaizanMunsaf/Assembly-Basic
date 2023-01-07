.model small
.stack 100h
.data
.code
    main proc
       
        
       mov cx,5
       top:
       mov dx,13
       mov ah,2
       int 21h
       mov dx,10
       mov ah,2
       int 21h
              
       mov bx,1
       
       top1: 
       mov dx,cx 
       add dx,48
       mov ah,2
       int 21h
       
       inc bx
       
       cmp bx,cx
       jle top1
       
       dec cx
       cmp cx,1
       jge top
       
              
        
       
        
         
        
        main endp