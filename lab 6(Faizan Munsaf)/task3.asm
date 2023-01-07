
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
     trueLess DB 'Al is less than 0$\'        ;DB
     falseless DB 'Character is not Valid$\'   

.code 

     main proc 
        mov ax,@Data ;Storing addresses of data in register
        mov ds,ax
       
        mov dl,'E'
        
        cmp dl,'A'
        jge a         ;if condition jmp greater than equal true     
        jmp b
             
        a: 
           cmp dl,'Z'
           jle t
           jmp b  
        
        t:
           mov ah,02
           int 21h
           jmp exit
        
        b:           
           lea dx,falseLess             ;else false than
           mov ah,09                    ;false than
           int 21h 
           jmp exit                     ;false than
        
        
           
        exit:
           mov dx,4ch
           
    main Endp
    end main







