section .text
    global _start

_start:
    mov ecx, 5                    ; Inicializar contador

while_loop:
    cmp ecx, 0                    ; Comparar ecx con 0
    je exit                       ; Saltar si ecx es 0 (salir del bucle)
    dec ecx                       ; Decrementar ecx
    jmp while_loop                ; Volver al inicio del bucle

exit:
    mov eax, 1                    ; Número de syscall para sys_exit
    xor ebx, ebx                  ; Estado de salida 0
    int 0x80                      ; Interrupción para salir
