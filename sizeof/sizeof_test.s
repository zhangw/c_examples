	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 0
	.globl	_dump_sz                        ; -- Begin function dump_sz
	.p2align	2
_dump_sz:                               ; @dump_sz
Lfunc_begin0:
	.file	1 "/Users/vincent/Temp/c_examples" "sizeof_test.c"
	.loc	1 15 0                          ; sizeof_test.c:15:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
Ltmp0:
	.loc	1 16 59 prologue_end            ; sizeof_test.c:16:59
	ldur	x8, [x29, #-8]
	.loc	1 16 5 is_stmt 0                ; sizeof_test.c:16:5
	mov	x9, sp
	mov	x10, #8
	str	x10, [sp, #24]                  ; 8-byte Folded Spill
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	.loc	1 16 5                          ; sizeof_test.c:16:5
	bl	_printf
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	.loc	1 17 69 is_stmt 1               ; sizeof_test.c:17:69
	ldur	x8, [x29, #-8]
	.loc	1 17 5 is_stmt 0                ; sizeof_test.c:17:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	.loc	1 17 5                          ; sizeof_test.c:17:5
	bl	_printf
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	.loc	1 18 90 is_stmt 1               ; sizeof_test.c:18:90
	ldur	x8, [x29, #-8]
	.loc	1 18 94 is_stmt 0               ; sizeof_test.c:18:94
	ldr	x8, [x8]
	.loc	1 18 5                          ; sizeof_test.c:18:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	.loc	1 18 5                          ; sizeof_test.c:18:5
	bl	_printf
	.loc	1 19 82 is_stmt 1               ; sizeof_test.c:19:82
	ldur	x8, [x29, #-8]
	.loc	1 19 86 is_stmt 0               ; sizeof_test.c:19:86
	ldr	x8, [x8]
	.loc	1 19 91                         ; sizeof_test.c:19:91
	add	x8, x8, #8
	.loc	1 19 5                          ; sizeof_test.c:19:5
	mov	x9, sp
	mov	x10, #4
	stur	x10, [x29, #-16]                ; 8-byte Folded Spill
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	.loc	1 19 5                          ; sizeof_test.c:19:5
	bl	_printf
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	.loc	1 20 71 is_stmt 1               ; sizeof_test.c:20:71
	ldur	x8, [x29, #-8]
	.loc	1 20 75 is_stmt 0               ; sizeof_test.c:20:75
	add	x8, x8, #8
	.loc	1 20 5                          ; sizeof_test.c:20:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	.loc	1 20 5                          ; sizeof_test.c:20:5
	bl	_printf
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	.loc	1 21 91 is_stmt 1               ; sizeof_test.c:21:91
	ldur	x8, [x29, #-8]
	.loc	1 21 95 is_stmt 0               ; sizeof_test.c:21:95
	add	x8, x8, #16
	.loc	1 21 5                          ; sizeof_test.c:21:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	.loc	1 21 5                          ; sizeof_test.c:21:5
	bl	_printf
	ldur	x10, [x29, #-16]                ; 8-byte Folded Reload
	.loc	1 22 79 is_stmt 1               ; sizeof_test.c:22:79
	ldur	x8, [x29, #-8]
	.loc	1 22 83 is_stmt 0               ; sizeof_test.c:22:83
	add	x8, x8, #24
	.loc	1 22 5                          ; sizeof_test.c:22:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	1 0 0                           ; sizeof_test.c:0:0
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	.loc	1 22 5                          ; sizeof_test.c:22:5
	bl	_printf
	.loc	1 23 1 is_stmt 1                ; sizeof_test.c:23:1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_dump_offset                    ; -- Begin function dump_offset
	.p2align	2
_dump_offset:                           ; @dump_offset
Lfunc_begin1:
	.loc	1 25 0                          ; sizeof_test.c:25:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp2:
	.loc	1 26 5 prologue_end             ; sizeof_test.c:26:5
	mov	x8, sp
	str	xzr, [x8]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	.loc	1 26 5                          ; sizeof_test.c:26:5
	bl	_printf
	.loc	1 27 5 is_stmt 1                ; sizeof_test.c:27:5
	mov	x8, sp
	str	xzr, [x8]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	.loc	1 27 5                          ; sizeof_test.c:27:5
	bl	_printf
	.loc	1 28 5 is_stmt 1                ; sizeof_test.c:28:5
	mov	x9, sp
	mov	x8, #8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x8, [x9]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	.loc	1 28 5                          ; sizeof_test.c:28:5
	bl	_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	.loc	1 29 5 is_stmt 1                ; sizeof_test.c:29:5
	mov	x9, sp
	str	x8, [x9]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	.loc	1 29 5                          ; sizeof_test.c:29:5
	bl	_printf
	.loc	1 30 5 is_stmt 1                ; sizeof_test.c:30:5
	mov	x9, sp
	mov	x8, #16
	str	x8, [x9]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	.loc	1 30 5                          ; sizeof_test.c:30:5
	bl	_printf
	.loc	1 31 5 is_stmt 1                ; sizeof_test.c:31:5
	mov	x9, sp
	mov	x8, #24
	str	x8, [x9]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	.loc	1 31 5                          ; sizeof_test.c:31:5
	bl	_printf
	.loc	1 32 1 is_stmt 1                ; sizeof_test.c:32:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp3:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin2:
	.loc	1 35 0                          ; sizeof_test.c:35:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	add	x8, sp, #8
Ltmp4:
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x9, l_.str.13@PAGE
	add	x9, x9, l_.str.13@PAGEOFF
	.loc	1 38 17 prologue_end is_stmt 1  ; sizeof_test.c:38:17
	str	x9, [sp, #8]
	mov	w9, #1
	.loc	1 39 13                         ; sizeof_test.c:39:13
	str	w9, [sp, #16]
	add	x0, sp, #24
	.loc	1 40 12                         ; sizeof_test.c:40:12
	str	x8, [sp, #24]
	.loc	1 0 0 is_stmt 0                 ; sizeof_test.c:0:0
	adrp	x8, l_.str.14@PAGE
	add	x8, x8, l_.str.14@PAGEOFF
	.loc	1 41 13 is_stmt 1               ; sizeof_test.c:41:13
	str	x8, [sp, #32]
	mov	x8, #17
	.loc	1 42 23                         ; sizeof_test.c:42:23
	str	x8, [sp, #40]
	mov	w8, #1024
	.loc	1 43 17                         ; sizeof_test.c:43:17
	str	w8, [sp, #48]
	.loc	1 44 5                          ; sizeof_test.c:44:5
	bl	_dump_sz
	.loc	1 45 5                          ; sizeof_test.c:45:5
	bl	_dump_offset
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	.loc	1 46 5                          ; sizeof_test.c:46:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp5:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"sizeof my_struct:%lu, addr:%p\n"

l_.str.1:                               ; @.str.1
	.asciz	"sizeof my_struct sub:%lu, addr:%p\n"

l_.str.2:                               ; @.str.2
	.asciz	"  sizeof my_struct sub/sub_name:%lu, addr:%p\n"

l_.str.3:                               ; @.str.3
	.asciz	"  sizeof my_struct sub/flag:%lu, addr:%p\n"

l_.str.4:                               ; @.str.4
	.asciz	"sizeof my_struct name:%lu, addr:%p\n"

l_.str.5:                               ; @.str.5
	.asciz	"sizeof my_struct sizeof_message:%lu, addr:%p\n"

l_.str.6:                               ; @.str.6
	.asciz	"sizeof my_struct n_fields:%lu, addr:%p\n"

l_.str.7:                               ; @.str.7
	.asciz	"my_sub_struct->sub offset:%lu\n"

l_.str.8:                               ; @.str.8
	.asciz	"  my_sub_struct->sub->sub_name offset:%lu\n"

l_.str.9:                               ; @.str.9
	.asciz	"  my_sub_struct->sub->flag offset:%lu\n"

l_.str.10:                              ; @.str.10
	.asciz	"my_sub_struct->name offset:%lu\n"

l_.str.11:                              ; @.str.11
	.asciz	"my_sub_struct->sizeof_message offset:%lu\n"

l_.str.12:                              ; @.str.12
	.asciz	"my_sub_struct->n_fields offset:%lu\n"

l_.str.13:                              ; @.str.13
	.asciz	"hi"

l_.str.14:                              ; @.str.14
	.asciz	"hello world"

	.file	2 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/arm" "_types.h"
	.file	3 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_size_t.h"
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x137 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	49                              ; DW_AT_name
	.long	63                              ; DW_AT_LLVM_sysroot
	.long	158                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	169                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end2-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	200                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	3                               ; Abbrev [3] 0x47:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	229                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	168                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x56:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset5
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	208                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	5                               ; Abbrev [5] 0x6b:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset6
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	220                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	161                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	6                               ; Abbrev [6] 0x84:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	229                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	173                             ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x92:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	358                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	235                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xa1:0x7 DW_TAG_base_type
	.long	225                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	8                               ; Abbrev [8] 0xa8:0x5 DW_TAG_pointer_type
	.long	173                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xad:0x39 DW_TAG_structure_type
	.long	232                             ; DW_AT_name
	.byte	32                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	10                              ; Abbrev [10] 0xb5:0xc DW_TAG_member
	.long	242                             ; DW_AT_name
	.long	230                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	10                              ; Abbrev [10] 0xc1:0xc DW_TAG_member
	.long	279                             ; DW_AT_name
	.long	268                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	10                              ; Abbrev [10] 0xcd:0xc DW_TAG_member
	.long	284                             ; DW_AT_name
	.long	285                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	16                              ; DW_AT_data_member_location
	.byte	10                              ; Abbrev [10] 0xd9:0xc DW_TAG_member
	.long	336                             ; DW_AT_name
	.long	314                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	24                              ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0xe6:0x5 DW_TAG_pointer_type
	.long	235                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xeb:0x21 DW_TAG_structure_type
	.long	246                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	4                               ; DW_AT_decl_line
	.byte	10                              ; Abbrev [10] 0xf3:0xc DW_TAG_member
	.long	260                             ; DW_AT_name
	.long	268                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	5                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	10                              ; Abbrev [10] 0xff:0xc DW_TAG_member
	.long	274                             ; DW_AT_name
	.long	161                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x10c:0x5 DW_TAG_pointer_type
	.long	273                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x111:0x5 DW_TAG_const_type
	.long	278                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x116:0x7 DW_TAG_base_type
	.long	269                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x11d:0xb DW_TAG_typedef
	.long	296                             ; DW_AT_type
	.long	299                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	12                              ; Abbrev [12] 0x128:0xb DW_TAG_typedef
	.long	307                             ; DW_AT_type
	.long	306                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.byte	7                               ; Abbrev [7] 0x133:0x7 DW_TAG_base_type
	.long	322                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0x13a:0x7 DW_TAG_base_type
	.long	345                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.0 (clang-1400.0.29.202)" ; string offset=0
	.asciz	"sizeof_test.c"                 ; string offset=49
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk" ; string offset=63
	.asciz	"MacOSX.sdk"                    ; string offset=158
	.asciz	"/Users/vincent/Temp/c_examples" ; string offset=169
	.asciz	"dump_sz"                       ; string offset=200
	.asciz	"dump_offset"                   ; string offset=208
	.asciz	"main"                          ; string offset=220
	.asciz	"int"                           ; string offset=225
	.asciz	"ms"                            ; string offset=229
	.asciz	"my_struct"                     ; string offset=232
	.asciz	"sub"                           ; string offset=242
	.asciz	"my_sub_struct"                 ; string offset=246
	.asciz	"sub_name"                      ; string offset=260
	.asciz	"char"                          ; string offset=269
	.asciz	"flag"                          ; string offset=274
	.asciz	"name"                          ; string offset=279
	.asciz	"sizeof_message"                ; string offset=284
	.asciz	"size_t"                        ; string offset=299
	.asciz	"__darwin_size_t"               ; string offset=306
	.asciz	"unsigned long"                 ; string offset=322
	.asciz	"n_fields"                      ; string offset=336
	.asciz	"unsigned int"                  ; string offset=345
	.asciz	"ss"                            ; string offset=358
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	3                               ; Header Bucket Count
	.long	3                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	777938727                       ; Hash in Bucket 0
	.long	2090499946                      ; Hash in Bucket 1
	.long	1836514145                      ; Hash in Bucket 2
.set Lset7, LNames0-Lnames_begin        ; Offset in Bucket 0
	.long	Lset7
.set Lset8, LNames1-Lnames_begin        ; Offset in Bucket 1
	.long	Lset8
.set Lset9, LNames2-Lnames_begin        ; Offset in Bucket 2
	.long	Lset9
LNames0:
	.long	200                             ; dump_sz
	.long	1                               ; Num DIEs
	.long	50
	.long	0
LNames1:
	.long	220                             ; main
	.long	1                               ; Num DIEs
	.long	107
	.long	0
LNames2:
	.long	208                             ; dump_offset
	.long	1                               ; Num DIEs
	.long	86
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	8                               ; Header Bucket Count
	.long	8                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	2                               ; Bucket 2
	.long	3                               ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	5                               ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	7                               ; Bucket 7
	.long	193495088                       ; Hash in Bucket 0
	.long	-45841160                       ; Hash in Bucket 0
	.long	-103762318                      ; Hash in Bucket 2
	.long	466678419                       ; Hash in Bucket 3
	.long	2090147939                      ; Hash in Bucket 3
	.long	-1304652851                     ; Hash in Bucket 5
	.long	-282664779                      ; Hash in Bucket 5
	.long	-607670545                      ; Hash in Bucket 7
.set Lset10, Ltypes4-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset10
.set Lset11, Ltypes1-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset11
.set Lset12, Ltypes5-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset12
.set Lset13, Ltypes7-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset13
.set Lset14, Ltypes6-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset14
.set Lset15, Ltypes2-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset15
.set Lset16, Ltypes0-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset16
.set Lset17, Ltypes3-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset17
Ltypes4:
	.long	225                             ; int
	.long	1                               ; Num DIEs
	.long	161
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	246                             ; my_sub_struct
	.long	1                               ; Num DIEs
	.long	235
	.short	19
	.byte	0
	.long	0
Ltypes5:
	.long	322                             ; unsigned long
	.long	1                               ; Num DIEs
	.long	307
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	299                             ; size_t
	.long	1                               ; Num DIEs
	.long	285
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	269                             ; char
	.long	1                               ; Num DIEs
	.long	278
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	345                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	314
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	306                             ; __darwin_size_t
	.long	1                               ; Num DIEs
	.long	296
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	232                             ; my_struct
	.long	1                               ; Num DIEs
	.long	173
	.short	19
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
