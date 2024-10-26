section .text
    global _start

_start:
    mov eax, 6                    ; Primer número (6)
    mov ebx, 7                    ; Segundo número (7)
    imul ebx                      ; Multiplicar eax por ebx (resultado en eax)

    ; Salir
    mov ebx, eax                  ; Pasar resultado como estado de salida
    mov eax, 1                    ; sys_exit
    int 0x80                      ; Interrupción para salir
