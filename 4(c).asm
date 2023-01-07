.model small
.stack 100h
.data 
   str db 'ASD67F',0
.code                       
   main proc  
    mov ax,@data
    mov ds,ax
     
    mov bx,offset str
    
    again:     
        mov al,[bx]
        cmp al,0
        je end
        cmp al,'E'
        je yes    
        inc bx
        jmp again
    
    yes:
       mov si,[bx]
    
    end:
       cmp si,'E'
       je false
       stc
    
    false:
    
    
   main endp
