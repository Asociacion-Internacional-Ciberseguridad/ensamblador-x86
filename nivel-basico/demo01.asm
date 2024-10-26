section .data
    msg db 'Hola, Mundo!', 0      ; Definimos el mensaje

section .text
    global _start

_start:
    ; Llamada al sistema para escribir
    mov eax, 4                    ; Número de syscall para sys_write
    mov ebx, 1                    ; Archivo: 1 es la salida estándar (stdout)
    mov ecx, msg                  ; Dirección del mensaje
    mov edx, 13                   ; Longitud del mensaje (13 bytes)
    int 0x80                      ; Interrupción para llamar al kernel

    ; Llamada al sistema para salir
    mov eax, 1                    ; Número de syscall para sys_exit
    xor ebx, ebx                  ; Estado de salida (0)
    int 0x80                      ; Interrupción para salir
