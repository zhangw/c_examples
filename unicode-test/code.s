	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #1
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_strlen
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_strcmp
	stur	w0, [x29, #-36]
	ldur	x11, [x29, #-24]
	ldur	x10, [x29, #-32]
	ldur	w9, [x29, #-36]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-52]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-52]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	cbz	x8, LBB0_7
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-48]
	bl	_strlen
	str	x0, [sp, #64]
	ldur	x10, [x29, #-48]
	ldr	x8, [sp, #64]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	str	wzr, [sp, #60]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x8, [sp, #60]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-48]
	ldrsw	x9, [sp, #60]
	ldrb	w10, [x8, x9]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	b	LBB0_3
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	LBB0_8
LBB0_7:
	b	LBB0_10
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB0_1
	b	LBB0_10
LBB0_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\344\204\200"

l_.str.1:                               ; @.str.1
	.asciz	"s1 value:%s, strlen:%lu\n"

l_.str.2:                               ; @.str.2
	.asciz	"\344\203\277"

l_.str.3:                               ; @.str.3
	.asciz	"s2 value:%s, strlen:%lu\n"

l_.str.4:                               ; @.str.4
	.asciz	"s1:%s cmp with s2:%s, result:%d\n"

l_.str.5:                               ; @.str.5
	.asciz	"str value:%s, strlen:%lu, bytes:"

l_.str.6:                               ; @.str.6
	.asciz	"%x "

l_.str.7:                               ; @.str.7
	.asciz	"\n"

.subsections_via_symbols
