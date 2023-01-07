.model small 
.stack 100h
.data
        msg DB 'Enter First number: /$'
        msg1 DB 'Enter Second number: /$'
.code
    main proc
    mov ax,@Data
    mov ds,ax
    
    ;mov dx,offset msg
    Lea dx, msg
    mov ah, 09
    int 21h
    
    
    Mov ah, 01            ; Ax-6    bx-6 +5
    int 21
    Mov dx, 10            ; for next line
    Mov ah, 02
    int 21h 
    Mov dx, 13            ; for 
    Mov ah, 02
    int 21h
   
   
   
   
   main endp
   End main