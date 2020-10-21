	.file	"sort.c"
	.text
	.p2align 4
	.globl	_array_sorting
	.def	_array_sorting;	.scl	2;	.type	32;	.endef
array_sorting:
        mov     r8d, edi
        test    edi, edi
        jle     .L1
        sub     r8d, 1
        je      .L1
        xor     edi, edi
        movsx   r9, r8d
.L5:
        mov     rax, r9
.L4:
        mov     rdx, QWORD PTR [rsi-8+rax*8]
        mov     rcx, QWORD PTR [rsi+rax*8]
        cmp     rdx, rcx
        jle     .L7
        movsx   rdx, edx
        mov     QWORD PTR [rsi-8+rax*8], rcx
        mov     QWORD PTR [rsi+rax*8], rdx
.L7:
        sub     rax, 1
        cmp     edi, eax
        jl      .L4
        add     edi, 1
        cmp     edi, r8d
        jl      .L5
        ret
.L1:
        ret