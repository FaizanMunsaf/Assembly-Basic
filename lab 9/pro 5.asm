.model small 
.stack 100h
.data
.code
main proc
    mov cx,1 
    outer:
    mov dx,10  
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    mov bx,1
  inner:  
 mov dx,'*'
 mov ah,2
 int 21h 
 inc bx
 cmp bx,cx
 jle inner
 
 inc cx
 cmp cx,5
 jle outer 
 main endp
end main