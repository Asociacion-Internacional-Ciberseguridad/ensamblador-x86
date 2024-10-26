section .text
    global _start

_start:
    mov eax, 10                    ; Cargar 10 en eax
    mov ebx, 20                    ; Cargar 20 en ebx

    ; Intercambiar valores entre eax y ebx
    xchg eax, ebx                  ; Intercambiar valores

    ; Salir
    mov eax, 1                     ; sys_exit
    xor ebx, ebx                   ; Estado de salida 0
    int 0x80                       ; Interrupción para salir
