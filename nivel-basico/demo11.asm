section .data
    char db 'A'                    ; Carácter a imprimir

section .text
    global _start

_start:
    mov ecx, 10                    ; Contador para imprimir 10 veces

loop_start:
    ; Llamada al sistema para escribir un carácter
    mov eax, 4                     ; sys_write
    mov ebx, 1                     ; stdout
    mov edx, 1                     ; Longitud (1 byte)
    mov ecx, char                  ; Carácter a imprimir
    int 0x80                       ; Interrupción

    dec ecx                        ; Decrementar contador
    jnz loop_start                 ; Repetir si no es cero

    ; Salir
    mov eax, 1                     ; sys_exit
    xor ebx, ebx                   ; Estado de salida 0
    int 0x80                       ; Interrupción para salir
