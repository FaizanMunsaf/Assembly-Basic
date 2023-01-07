.model small
.stack 100h
.data 
    arr db 5 dup(?) 
.code
    main proc
        mov ax, @data
        mov ds, ax
        mov cx, 5
        mov si, 0
    
    input:
        mov ah,1
        int 21h
        sub al,30h 
        mov arr[si],al 
        inc si
        loop input
       
    mov cx, 5
    mov si, 0    
    output:
        
        mov dl, arr[si]
        add dl, 30h    
        mov ah,2
        int 21h
        inc si
        loop output
    end main             