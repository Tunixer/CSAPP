	.file	"3-42.c"
	.text
	.globl	fun
	.type	fun, @function
fun:
.LFB15:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L4
	movl	$0, %eax
.L3:
	addl	(%rdi), %eax
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L3
	jmp	.L2
.L4:
	movl	$0, %eax
.L2:
	cltq
	ret
	.cfi_endproc
.LFE15:
	.size	fun, .-fun
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
