	.file	"arithmetiks.c"
	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, wzr
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	fmov	d0, #3.00000000
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	fmov	d1, #4.00000000
	str	d1, [sp]                        // 8-byte Folded Spill
	bl	add
	ldr	d1, [sp]                        // 8-byte Folded Reload
	fmov	d2, d0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	stur	d2, [x29, #-16]
	bl	subtract
	ldr	d1, [sp]                        // 8-byte Folded Reload
	fmov	d2, d0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	stur	d2, [x29, #-24]
	bl	multiply
	ldr	d1, [sp]                        // 8-byte Folded Reload
	fmov	d2, d0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	str	d2, [sp, #32]
	bl	divide
	str	d0, [sp, #24]
	ldur	d0, [x29, #-16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	d0, [x29, #-24]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldr	d0, [sp, #32]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	ldr	d0, [sp, #24]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"the sum is: %lf"
	.size	.L.str, 16

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\nthe difference is: %lf"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\nthe product is: %lf"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\nthe ratio is: %lf"
	.size	.L.str.3, 19

	.ident	"clang version 21.1.8"
	.section	".note.GNU-stack","",@progbits
