.model small
.stack 100h
.data 
    w dw 1,2,3,4,5,6,70,82,9,10,11,12,13,14,15,16,12,17,19,20,21,22,23,24,25
.code
    main proc
        mov ax, @data
        mov ds, ax
        mov ax, w+12
        xchg w+32, ax
        mov w+12, ax
        
    end main             