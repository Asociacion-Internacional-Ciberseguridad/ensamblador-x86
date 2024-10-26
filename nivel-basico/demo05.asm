section .text
    global _start

_start:
    mov ecx, 5                    ; Contador de bucle (5 iteraciones)

loop_start:
    dec ecx                       ; Decrementar el contador
    jnz loop_start                ; Si no es cero, repetir el ciclo

    ; Terminar el programa
    mov eax, 1                    ; Número de syscall para sys_exit
    xor ebx, ebx                  ; Estado de salida 0
    int 0x80                      ; Interrupción para salir
