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


;g_some_asm_var dd ?

;***************************************************************************

    section .text

    ; functions

    ;global some_asm_function

    ;extern some_c_function

global min

min:
	mov rdx,0
	mov r8d,[rdi]

.back:
	cmp rdx,rsi
	jge .endfor

	cmp  [rdi + rdx * 4],r8d
	jg .taknic

	cmp  [rdi + rdx * 4] , byte 0
	jl .taknic

	mov r8d, [rdi + rdx * 4]

.taknic:

	inc rdx
	jmp .back
.endfor:

	mov eax ,r8d

ret

global retezec

retezec:
	mov rdx,0
	mov rax,0
.back:
	cmp [rdi + rdx], byte 0
	je .endwhile

	cmp byte [rdi + rdx], 'a'
	jl .taknic

	cmp byte [rdi + rdx], 'z'
	jg .taknic

	mov  cl, byte [rdi + rdx]
	mov byte [rdi + rax], cl
	inc rax
.taknic:
	inc rdx
	jmp .back
.endwhile:

ret
global preved
preved:
	mov rdx, 0
	mov eax, 0
.back:
	cmp [rdi + rdx], byte 0
	je .endwhile


	shl eax,1
	sub [rdi + rdx], byte '0'
	movsx esi, byte [rdi + rdx]
	or eax, esi


	inc rdx
	jmp .back
.endwhile:
ret




;some_asm_function:
    ;ret


