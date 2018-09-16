	.file	"copy_block.c"
	.text
	.globl	copy_block
	.type	copy_block, @function
copy_block:
.LFB0:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L4
	movl	$0, %ecx
	movl	$0, %eax
.L3:
	movq	(%rdi,%rcx,8), %r8
	movq	%r8, (%rsi,%rcx,8)
	xorq	%r8, %rax
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jne	.L3
	rep ret
.L4:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	copy_block, .-copy_block
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
