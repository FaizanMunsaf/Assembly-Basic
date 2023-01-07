.model small
.stack 100h
.data             

     msg DB '*****$\'     
     n_line DB 0AH,0DH,"$"     

.code 
      main proc
       
       mov ax,@Data 
       mov ds,ax
        
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line 
       MOV AH,9
       INT 21H
    
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H
       
       lea dx,msg
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H
        
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line 
       MOV AH,9
       INT 21H
       
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H
       
       lea dx,msg
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H
       
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line 
       MOV AH,9
       INT 21H
       
       
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H
       
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line 
       MOV AH,9
       INT 21H
        
       lea dx,msg 
       mov ah,09
       int 21h
       
       LEA DX,n_line
       MOV AH,9
       INT 21H 
       
       mov ah,4ch
       int 21h
       
                       
       main endp
       End main