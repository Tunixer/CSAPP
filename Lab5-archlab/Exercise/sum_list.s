	.file	"sum_list.c"
	.text
	.globl	sum_list
	.type	sum_list, @function
sum_list:
.LFB0:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L4
	movl	$0, %eax
.L3:
	addq	(%rdi), %rax
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L3
	rep ret
.L4:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	sum_list, .-sum_list
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
