	.file	"sort.c"
	.text
	.globl	_array_sorting
	.def	_array_sorting;	.scl	2;	.type	32;	.endef
_array_sorting:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	$0, -12(%ebp)
	jmp	L2
L6:
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	L3
L5:
	movl	-16(%ebp), %eax
	addl	$536870911, %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	-16(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jge	L4
	movl	-16(%ebp), %eax
	addl	$536870911, %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	addl	$536870911, %edx
	leal	0(,%edx,8), %ecx
	movl	12(%ebp), %edx
	addl	%edx, %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-16(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %eax
	cltd
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
L4:
	subl	$1, -16(%ebp)
L3:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	L5
	addl	$1, -12(%ebp)
L2:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L6
	nop
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
