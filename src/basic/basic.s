	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1072, %eax             ## imm = 0x430
	movl	%eax, %edi
	movl	$0, -4(%rbp)
	callq	_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_uv_loop_init
	leaq	L_.str(%rip), %rdi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_uv_run
	movq	-16(%rbp), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_uv_loop_close
	movq	-16(%rbp), %rdi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_free
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello.\n"


.subsections_via_symbols
