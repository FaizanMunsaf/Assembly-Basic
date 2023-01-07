.model small
.stack 100h
.data    

    msg DB 'Enter the lower character : $\'
      
    newline DB 0AH,0DH,'$'
      
.code
      main proc 
        mov ax,@Data
        mov ds,ax
        
        
        WHILE_:
        
        lea dx,msg
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al,0DH
        je end_while
        
        
        sub al,32
        
        mov dl,al
        
        
        
        mov ah,2
        int 21h
        
        lea dx,newline
        mov ah,09
        int 21h
        
        jmp WHILE_
        
        end_while:
        mov ah,4ch
        int 21h
        
        main endp