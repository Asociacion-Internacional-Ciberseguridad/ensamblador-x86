section .text
    global _start

_start:
    mov eax, 5                    ; Cargar el número 5 en eax
    cmp eax, 10                   ; Comparar eax con 10
    jge mayor_o_igual             ; Saltar si eax >= 10

    ; Si es menor
    mov eax, 1                    ; Número de syscall para sys_exit
    xor ebx, ebx                  ; Estado de salida 0
    int 0x80                      ; Interrupción para salir

mayor_o_igual:
    ; Si es mayor o igual
    mov eax, 1                    ; Número de syscall para sys_exit
    mov ebx, 1                    ; Estado de salida 1
    int 0x80                      ; Interrupción para salir
