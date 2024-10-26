section .bss
    buffer resb 1                 ; Reservamos 1 byte para el carácter

section .text
    global _start

_start:
    ; Leer un carácter del teclado
    mov eax, 3                    ; Número de syscall para sys_read
    mov ebx, 0                    ; Leer desde stdin (entrada estándar)
    mov ecx, buffer               ; Almacenar en buffer
    mov edx, 1                    ; Leer 1 byte
    int 0x80                      ; Interrupción para llamar al kernel

    ; Terminar el programa
    mov eax, 1                    ; Número de syscall para sys_exit
    xor ebx, ebx                  ; Estado de salida 0
    int 0x80                      ; Interrupción para salir
