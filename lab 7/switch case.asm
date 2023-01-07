.model small
.stack 100h
.data   
    msg  DB 'Enter your number : $\'
    msg0 DB 'Pakistan$\'
    msg1 DB 'China$\'
    msg2 DB 'Turkey$\'
    msg3 DB 'USA$\'
    msg4 DB 'Germany$\'
    msg5 DB 'interupted$\'
       
.code
      main proc
        
        mov ax,@Data
        mov ds,ax
        
        lea dx,msg
        mov ah,09
        int 21h   
        
        mov ah,1
        int 21h
        
        cmp al,'1'
        je pak
        cmp al,'2'
        je china
        cmp al,'3'
        je turk
        cmp al,'4'
        je us
        cmp al,'5'
        je ger
        
        jmp exit
        

        
        pak: 
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        lea dx,msg0
        mov ah,09
        int 21h 
        
        jmp exit
        
        china:
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        lea dx,msg1
        mov ah,09
        int 21h 
        
        jmp exit
        
        turk:
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h 
        
        
        lea dx,msg2
        mov ah,09
        int 21h
        
        jmp exit
        
        us:
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        lea dx,msg3
        mov ah,09
        int 21h
                
        jmp exit
                
        ger:
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        lea dx,msg4
        mov ah,09
        int 21h 
        
      
        
        exit:
        mov dx,13
        mov ah,2 
        int 21h
        mov dx,10
        mov ah,2
        int 21h
        
        lea dx,msg5
        mov ah,09
        int 21h
        mov ah,4ch
        int 21h
        
        main endp