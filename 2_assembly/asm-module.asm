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
    extern g_pole
    extern retezec
    extern g_char
    extern g_pole_int

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
    global negation
	global change
	global divide


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

negation:
	mov rax, 0
.zpet:
	cmp rax,10
	jge .endfor

	;neg qword [g_pole + rax * 8]
	not qword [g_pole + rax * 8]
	inc qword [g_pole + rax * 8]


	inc rax
	jmp .zpet
.endfor:
ret

change:
	mov rdx, 0
	mov al, [ g_char ]
.zpet:
	cmp [retezec + rdx], byte 0
	je .endwhile

	cmp [retezec + rdx],byte '.'
	jne .nospace

	mov [retezec + rdx],al

.nospace:
	inc rdx
	jmp .zpet
.endwhile:
ret

divide:
		mov rax, 0
.zpet:
	cmp rax,10
	jge .endfor

	mov edx, 0x1F
	and [g_pole_int + rax * 4],edx

	inc rax
	jmp .zpet
.endfor:
ret
