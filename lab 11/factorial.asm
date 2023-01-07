.model small
.stack 100h
.data

.code
main proc
    mov ax,@Data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov bx,ax
    
    sub bx,304  
    
     call factorial 
    
main endp      

    
    
    factorial proc
        mov ax,1
        
        mov cx,bx 
        
        
        Factorial_:
            mul cx 
            
            cmp cx,1
            je getout
            
        loop Factorial_
        
        getout: 
            
            mov dx,ax      
            mov ah,2
            int 21h
        
            mov ah,4ch
            int 21h
        
    factorial endp
    
 
end main            