  .model small
  .stack 100h
  .data 
  
  Main proc
    
    Mov Ax,256
    mov Ax,0F1ABh
    mov ax,-123
    mov bx,123
    mov ah,01001001b
    mov 1234h,bx
    mov dx,33h
    mov cx,'AB'
    mov ch,AL
    mov dl,bl
    mov ah,bl
    mov ax,cx
    
    main endp
  end main