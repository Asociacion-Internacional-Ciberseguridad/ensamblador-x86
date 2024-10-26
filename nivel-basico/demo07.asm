section .text
    global _start

_start:
    push dword 5                  ; Primer argumento
    push dword 3                  ; Segundo argumento
    call suma                     ; Llamar a la función suma
    add esp, 8                    ; Limpiar la pila (2 argumentos)

    ; Salir con el resultado en eax
    mov ebx, eax                  ; Pasar resultado como estado de salida
    mov eax, 1                    ; Número de syscall para sys_exit
    int 0x80                      ; Interrupción para salir

suma:
    pop ebx                       ; Obtener segundo número (3)
    pop eax                       ; Obtener primer número (5)
    add eax, ebx                  ; Sumar ambos números
    ret                           ; Retornar (resultado en eax)
