section .text
    global _start

_start:
    mov eax, 20                   ; Dividendo (20)
    mov ebx, 5                    ; Divisor (5)
    cdq                           ; Extender el signo de eax a edx:eax
    idiv ebx                      ; Dividir edx:eax por ebx

    ; Salir
    mov ebx, eax                  ; Pasar cociente como estado de salida
    mov eax, 1                    ; sys_exit
    int 0x80                      ; Interrupción para salir
