section .text
    global _start

_start:
    ; Sumar 5 + 3 y almacenar el resultado en eax
    mov eax, 5                    ; Cargar 5 en eax
    add eax, 3                    ; Sumar 3 a eax (eax = 5 + 3)

    ; Llamada al sistema para salir
    mov ebx, eax                  ; Pasar el resultado como código de salida
    mov eax, 1                    ; Número de syscall para sys_exit
    int 0x80                      ; Interrupción para salir
