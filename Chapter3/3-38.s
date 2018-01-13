	.file	"3-38.c"
	.text
	.globl	sum_lement
	.type	sum_lement, @function
sum_lement:
.LFB0:
	.cfi_startproc
	leaq	(%rdi,%rdi,4), %rdx
	addq	%rsi, %rdx
	leaq	(%rdi,%rsi,8), %rax
	subq	%rsi, %rax
	movq	Q(,%rax,8), %rax
	addq	P(,%rdx,8), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	sum_lement, .-sum_lement
	.comm	Q,280,32
	.comm	P,280,32
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
