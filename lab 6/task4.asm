
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code 

     main proc 
        mov ax,@Data ;Storing addresses of data in register
        mov ds,ax
       
        mov ax,05h
        mov bx,04h
        mov cx,03h
        
        cmp ax,bx
        jl if         ;if condition jmp less than true     
        jmp elif
             
        if:
           mov dx,0h 
           jmp exit
        
        elif:
           cmp bx,cx
           jl elif2
           jmp else
        
        elif2:
           mov dx,0h
           jmp exit
           
        else:  
           mov dx,01h         
           jmp exit                     ;false than
        
        exit:
           mov dx,4ch
           
    main Endp
    end main







