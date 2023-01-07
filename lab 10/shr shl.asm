.model small
.stack 100h
.data
.code
    main proc
        
        Call Multiply
        
        mov ah,4ch
        int 21h
    main endp    
        
        Multiply proc
            
            push ax
            push bx
            xor dx,dx
            
        Repeat:
        
            Test bx,1  
            je end_if
            
            add dx,ax
            
            End_if:
            
                shl ax,1
                shr bx,1
                
                jnz Repeat
                pop bx
                pop ax
                
        Multiply endp 
        
        

    end main
        
        