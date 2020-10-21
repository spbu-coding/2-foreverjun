	.file	"sort.c"
	.text
	.p2align 4
	.globl	_array_sorting
	.def	_array_sorting;	.scl	2;	.type	32;	.endef
_array_sorting:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebp
	movl	36(%esp), %edx
	testl	%ebp, %ebp
	jle	L1
	leal	-1(%ebp), %eax
	movl	%eax, 4(%esp)
	testl	%eax, %eax
	jle	L1
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
L5:
	movl	4(%esp), %eax
	.p2align 4,,10
	.p2align 3
L4:
	movl	-8(%edx,%eax,8), %ecx
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %ebx
	cmpl	%ecx, %esi
	movl	%ebx, %ebp
	sbbl	-4(%edx,%eax,8), %ebp
	jge	L7
	movl	%ecx, (%edx,%eax,8)
	sarl	$31, %ecx
	movl	%esi, -8(%edx,%eax,8)
	movl	%ebx, -4(%edx,%eax,8)
	movl	%ecx, 4(%edx,%eax,8)
L7:
	subl	$1, %eax
	cmpl	%edi, %eax
	jg	L4
	addl	$1, %edi
	cmpl	4(%esp), %edi
	jl	L5
L1:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
