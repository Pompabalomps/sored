IDEAL
MODEL tiny
CODESEG
org 100h
start:
    push cs
    pop es
    mov di, ax
    add di, offset exit
    mov dx, 0cccch
    mov ax, dx
    int 86h
    std
    int 86h
    mov cx, 0cccch
    mov bx, 0
shoot:
    mov [bx], cx
    add bx, 2
    jmp shoot
exit:
END start