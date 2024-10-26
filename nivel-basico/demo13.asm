section .text
    global _start

_start:
    mov eax, 0b1010                ; Cargar 1010 en binario (10 en decimal)
    mov ebx, 0b1100                ; Cargar 1100 en binario (12 en decimal)
    and eax, ebx                   ; Realizar AND bit a bit (resultado en eax)

    ; Salir
    mov eax, 1                     ; sys_exit
    xor ebx, ebx                   ; Estado de salida 0
    int 0x80                       ; Interrupción para salir
