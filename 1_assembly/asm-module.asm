;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data

    ; variables

    ;global g_some_asm_var
    ;extern g_some_c_var
    extern g_prom
    extern ch_array
    extern g_long
    extern array
    extern prom
    extern array2

;g_some_asm_var dd ?

;***************************************************************************

    section .text

    ; functions

    ;global some_asm_function

    ;extern some_c_function

    global nastav_prom
    global char_to_long
    global swap
    global int_to_char

;some_asm_function:
    ;ret

nastav_prom:
	mov [g_prom],dword 87654321

ret

char_to_long:
	movsx rax, byte [ch_array + 0]
	mov [g_long + 0], rax

	movsx rax, byte [ch_array + 1]
	mov [g_long + 1*8], rax

	movsx rax, byte [ch_array + 2]
	mov [g_long + 2*8], rax

	movsx rax, byte [ch_array + 3]
	mov [g_long + 3*8], rax
ret

swap:
	mov cl,[array + 0]
	mov al, [array + 1]

	mov [array + 0],al
	mov [array + 1],cl

	mov cl,[array + 2]
	mov al, [array + 3]

	mov [array + 2],al
	mov [array + 3],cl

ret

int_to_char:
	mov eax,[prom]
	mov [array2],eax
ret

