.model small
.stack 100h
.data
      
.code
main proc
    
    mov ah,1
    int 21h
    call convertor 
    
main endp      

    
    
    convertor proc
        mov cx,0
        mov dx,0  
        
        
        label:
        cmp ax,0
        je print1
        
        div bx
        
        push dx
        
        inc cx
        
        xor dx,dx
        
        jmp label     
        
        print1:
        
        cmp cx,0
        je exit
                      
        pop dx
        
        add dx,48
        
        mov ah,2
        int 21h
        
        dec cx
        jmp print1
        
        exit: ret              
        
    convertor endp
   
   mov ah,4ch 
   int 21h 
 
end main            