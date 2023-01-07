.model small
.stack 100h
.data
.code

main proc
    
    call indec
    push ax
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    pop ax
    
    call outdec
    
    mov ah,4ch
    int 21h
    main endp

indec proc

push bx
push cx
push dx 

Begin:
mov ah,2
mov dl,'?'
int 21h
       
xor bx,bx

xor cx,cx

mov ah,1
int 21h

cmp al,'-'
je minus
cmp al,'+'
je plus
jmp repeat2

minus:

mov cx,1  

plus:

int 21h 

repeat2:

cmp al,'0'
jnge not_digit
cmp al,'9'
jnle not_digit

and ax,000fh
push ax

mov ax,10
mul bx
pop bx
add bx,ax

mov ah,1
int 21h
cmp al,0dh
jne repeat2

mov ax,bx

or cx,cx

je exit

neg ax 

exit:
pop dx
pop cx
pop bx
ret

not_digit:
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
jmp begin   


indec endp


outdec proc
    
    push ax
    push bx
    push cx
    push dx
    
    or ax,ax
    jge end_if1
    
    push ax
    mov dl,'_'
    mov ah,2
    int 21h
    pop ax
    neg ax
    
    end_if1:
    
    xor cx,cx
    mov bx,10d
    
    repeat1:
    
    xor dx,dx
    div bx
    push dx
    inc cx
    
    or ax,ax
    jne repeat1
    
    mov ah,2
    
    print_loop:
    
    pop dx 
    or dl,30h
    int 21h
    loop print_loop
    
    pop dx
    pop cx
    pop bx
    pop ax
    ret
    
    outdec endp
end main