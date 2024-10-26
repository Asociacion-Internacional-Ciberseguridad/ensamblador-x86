section .text
    global _start

_start:
    ; Solicitar memoria dinámica
    mov eax, 45                   ; Número de syscall para sys_brk
    xor ebx, ebx                  ; Puntero NULL para obtener el límite actual
    int 0x80                      ; Llamar al kernel
    mov ebx, eax                  ; Guardar el valor del puntero base

    ; Aumentar el límite del programa para reservar 100 bytes más
    add ebx, 100                  ; Aumentar 100 bytes
    mov eax, 45                   ; sys_brk
    int 0x80                      ; Llamar para asignar memoria

    ; Salir
    mov eax, 1                    ; sys_exit
    xor ebx, ebx                  ; Estado de salida 0
    int 0x80                      ; Interrupción para salir
