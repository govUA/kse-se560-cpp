	.text
	.file	"fibonacci.cpp"
	.globl	_Z19fibonacci_recursivei        # -- Begin function _Z19fibonacci_recursivei
	.p2align	4, 0x90
	.type	_Z19fibonacci_recursivei,@function
_Z19fibonacci_recursivei:               # @_Z19fibonacci_recursivei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %edi
	subl	$1, %edi
	callq	_Z19fibonacci_recursivei
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	subl	$2, %edi
	callq	_Z19fibonacci_recursivei
	movl	%eax, %ecx
	movl	-12(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z19fibonacci_recursivei, .Lfunc_end0-_Z19fibonacci_recursivei
	.cfi_endproc
                                        # -- End function
	.globl	_Z19fibonacci_iterativei        # -- Begin function _Z19fibonacci_iterativei
	.p2align	4, 0x90
	.type	_Z19fibonacci_iterativei,@function
_Z19fibonacci_iterativei:               # @_Z19fibonacci_iterativei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	.LBB1_2
# %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_7
.LBB1_2:
	movl	$0, -12(%rbp)
	movl	$1, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$2, -24(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_3
.LBB1_6:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z19fibonacci_iterativei, .Lfunc_end1-_Z19fibonacci_iterativei
	.cfi_endproc
                                        # -- End function
	.section	".linker-options","e",@llvm_linker_options
	.ident	"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z19fibonacci_recursivei
