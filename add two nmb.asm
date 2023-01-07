    
.model small
.stack 100h
.data        

      
 main proc
    mov Ax,6
    cmp Ax,2
    jl lable
    
    mov bx,-1h
    jmp exit
    
    lable:
    
    mov bx,3h
    
    exit:
    mov dx,4ch
    int 21h
    
  main endp 
 End main