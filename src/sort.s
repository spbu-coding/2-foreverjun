	.file	"sort.c"
	.text
	.p2align 4
	.globl	_array_sorting
	.def	_array_sorting;	.scl	2;	.type	32;	.endef
_array_sorting:
LFB0:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edi
	movl	20(%esp), %edx
	testl	%edi, %edi
	jle	L1
	subl	$1, %edi
	testl	%edi, %edi
	jle	L1
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
L5:
	movl	%edi, %eax
	.p2align 4,,10
	.p2align 3
L4:
	movl	-4(%edx,%eax,4), %ecx
	movl	(%edx,%eax,4), %ebx
	cmpl	%ebx, %ecx
	jle	L7
	movl	%ebx, -4(%edx,%eax,4)
	movl	%ecx, (%edx,%eax,4)
L7:
	subl	$1, %eax
	cmpl	%esi, %eax
	jg	L4
	addl	$1, %esi
	cmpl	%edi, %esi
	jl	L5
L1:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
