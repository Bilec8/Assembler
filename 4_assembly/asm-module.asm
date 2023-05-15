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

    global mocnina
    mocnina:

	mov rax, rdi
	mov r8,2
	mov r9,0

.back:
	cqo
	idiv r8

	cmp rax,0
	jg .end

	cmp rdx,0
	jne .konec

.end:
inc r9
	jmp .back

.konec:

mov rax,r9

ret

	global posloupnost
posloupnost:
	mov r8d, edx  ; r8d = cislo na nasobeni
	mov eax,1	  ; eax = 1
	mov r9, 0	  ; citac = 0

.back:
	cmp r9,rsi
	je .konec

	mul r8d       ; nasobeni cislem z edx

	cmp rdx,0
	jne .jump
	mov dword [rdi + r9 * 4 ],eax
	jmp .next
.jump:
	mov dword [rdi + r9 * 4 ],0
.next:
	inc r9
	jmp .back
.konec:
	mov esi,r9d
ret



global prvocislo
prvocislo:
	mov r8d,2
	mov r9d,edi
	dec r9d

.back:
	cmp r8d,r9d
	je .endfor

	mov eax, edi
	cdq
	idiv r8d

	cmp edx,0
	je .taknic

	inc r8d
	jmp .back

.taknic:
	mov eax, 0
ret
.endfor:
	mov eax, 1

ret

global_str_to_long
str_to_long:


ret
