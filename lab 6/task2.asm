
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
     trueLess DB 'Al is less than 0$\'        ;DB
     falseless DB 'Al is not less than 0$\'   

.code 

     main proc 
        mov ax,@Data ;Storing addresses of data in register
        mov ds,ax
       
        mov al,-05h
        
        cmp al,0
        jl a         ;if condition jmp less than true     
        jmp b
             
        a:
           mov ah,0ffh
           lea dx,trueLess
           mov ah,09
           int 21h 
           jmp exit   
        b:           
           mov ah,00h
           lea dx,falseLess             ;else false than
           mov ah,09                    ;false than
           int 21h 
           jmp exit                     ;false than
        
        exit:
           mov dx,4ch
           
    main Endp
    end main







