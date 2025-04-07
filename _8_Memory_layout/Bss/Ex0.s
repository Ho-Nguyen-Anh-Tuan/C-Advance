	.file	"Ex0.c"
	.text
	.globl	p1
	.data
	.align 8
p1:
	.long	5
	.long	0
	.globl	p2
	.bss
	.align 8
p2:
	.space 8
	.globl	p3
	.align 8
p3:
	.space 8
	.globl	a
	.align 4
a:
	.space 4
	.globl	b
	.data
	.align 4
b:
	.long	5
.lcomm m,4,4
.lcomm n,4,4
	.globl	ptr
	.bss
	.align 8
ptr:
	.space 8
	.text
	.globl	test
	.def	test;	.scl	2;	.type	32;	.endef
	.seh_proc	test
test:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "addr of x(A): %p\12\0"
.LC1:
	.ascii "%d\12\0"
	.text
	.globl	funcA
	.def	funcA;	.scl	2;	.type	32;	.endef
	.seh_proc	funcA
funcA:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	x.1(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	x.1(%rip), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "addr of x(B): %p\12\0"
	.text
	.globl	funcB
	.def	funcB;	.scl	2;	.type	32;	.endef
	.seh_proc	funcB
funcB:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	x.0(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	x.0(%rip), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	call	funcA
	call	funcB
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
.lcomm e.4,4,4
.lcomm d.3,4,4
	.data
	.align 4
c.2:
	.long	1
.lcomm x.1,4,4
.lcomm x.0,4,4
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
