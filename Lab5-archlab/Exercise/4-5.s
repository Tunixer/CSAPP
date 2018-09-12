#long absSum(long *start, long count)
# start in %rdi, count in %rsi
# returned value in %rax

#long rsum(long *start, long count){
#	if(count<=0){
#		return 0;	
#	}
#	return  abs(*start)+rsum(start+1,count-1);
#}

absSum:
	irmovq	$0,%rax
	testq	%rsi, %rsi
	jne	recur
	ret
recur:
	pushq	%rbx
	pushq	%rbp
	subq	$16,%rsp
	rrmovq	%rdi,%rbp
	mrmovq	(%rbp), %rbx
	rrmovq	%rbx,%rdi
	call	abs
	rrmovq	%rax,%rbx
	rrmovq	%rbp,%rdi
	subq	$1,%rsi
	addq	$8,$rdi
	call	absSum
	addq	%rbx,%rax
	popq	%rbp
	popq	%rbx
	addq	$16,%rsp
	ret
abs:	
	irmovq	%rdi,%rax
	testq	%rdi,%rdi
	jl	pos
	ret
#if x<0 then x = -x
pos:
	subq	$0,%rax
	ret
	
