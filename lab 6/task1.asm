
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
     trueLess DB 'Ax is less than 0$\'        ;DB
     falseless DB 'Ax is not less than 0$\'   
     n_line DB 0AH,0DH,"$"   ;for new line
.code 

     main proc 
        mov ax,@Data ;Storing addresses of data in register
        mov ds,ax
       
        mov ax,05h
        cmp ax,0
        jl a         ;jmp less than true 
        lea dx,falseLess             ;false than
        mov ah,09                    ;false than
        int 21h 
        jmp exit
        a:
          mov bx,-1
          lea dx,trueLess
          mov ah,09
          int 21h   
        exit:
          mov dx,4ch
           
        
    main Endp
    end main







