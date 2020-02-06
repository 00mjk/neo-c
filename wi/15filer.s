	.text
	.file	"Module 15filer"
	.globl	"Vi_initialize-15"      // -- Begin function Vi_initialize-15
	.p2align	2
	.type	"Vi_initialize-15",@function
"Vi_initialize-15":                     // @Vi_initialize-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	mov	x0, x19
	str	x19, [sp, #8]
	str	x8, [x20, #400]
	bl	"Vi_initialize-14"
	ldr	x22, [sp, #8]
	adrp	x2, .Lglobal_string.356
	adrp	x3, .Lglobal_string.357
	adrp	x5, .Lglobal_string.358
	adrp	x6, .Lglobal_string.359
	add	x2, x2, :lo12:.Lglobal_string.356
	add	x3, x3, :lo12:.Lglobal_string.357
	add	x5, x5, :lo12:.Lglobal_string.358
	add	x6, x6, :lo12:.Lglobal_string.359
	mov	w0, #1
	mov	w1, #40
	mov	w4, #201
	bl	debug_xcalloc
	bl	ViFiler_initialize
	ldr	x20, [x22, #72]
	mov	x19, x0
	cbz	x20, .LBB0_2
// %bb.1:                               // %cond_then_block
	ldr	x0, [x20]
	bl	xfree
	ldr	x21, [x20, #8]
	mov	x0, x21
	bl	list_finalize_charp78_15filer
	mov	x0, x21
	bl	xfree
.LBB0_2:                                // %cond_end
	mov	x0, x20
	bl	ViFiler_finalize
	mov	x0, x20
	bl	xfree
	str	x19, [x22, #72]
	ldr	x8, [sp, #8]
	adrp	x1, sig_winch
	adrp	x9, gVi
	add	x1, x1, :lo12:sig_winch
	mov	w0, #28
	str	x8, [x9, :lo12:gVi]
	bl	signal
	ldr	x19, [sp, #8]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #16             // =16
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	"Vi_initialize-15", .Lfunc_end0-"Vi_initialize-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_activateFiler-15"   // -- Begin function Vi_activateFiler-15
	.p2align	2
	.type	"Vi_activateFiler-15",@function
"Vi_activateFiler-15":                  // @Vi_activateFiler-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #400]
	ldr	x8, [x19, #72]
	mov	w9, #1
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	strb	w9, [x8, #36]
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	"Vi_activateFiler-15", .Lfunc_end1-"Vi_activateFiler-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_main_loop-15"       // -- Begin function Vi_main_loop-15
	.p2align	2
	.type	"Vi_main_loop-15",@function
"Vi_main_loop-15":                      // @Vi_main_loop-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	str	x19, [sp, #8]
	add	x8, sp, #8              // =8
	adrp	x19, gLVTable+400
	str	x8, [x20, #400]
	b	.LBB2_2
.LBB2_1:                                // %cond_else_block
                                        //   in Loop: Header=BB2_2 Depth=1
	ldr	x9, [x19, :lo12:gLVTable+400]
	ldr	x0, [x8, #8]
	ldr	x1, [x9]
	bl	"ViWin_input-12"
.LBB2_2:                                // %loop_top_block
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #24]
	cbnz	w8, .LBB2_7
// %bb.3:                               // %cond_then_block
                                        //   in Loop: Header=BB2_2 Depth=1
	ldr	x8, [x19, :lo12:gLVTable+400]
	ldr	x0, [x8]
	bl	"Vi_view-15"
	ldr	x8, [x19, :lo12:gLVTable+400]
	ldr	x8, [x8]
	ldr	w8, [x8, #28]
	cmp	w8, #1                  // =1
	b.eq	.LBB2_5
// %bb.4:                               // %cond_jump_then
                                        //   in Loop: Header=BB2_2 Depth=1
	ldr	x8, [x19, :lo12:gLVTable+400]
	ldr	x8, [x8]
	ldr	x0, [x8, #8]
	bl	"ViWin_clearInputedKey-14"
.LBB2_5:                                // %cond_end
                                        //   in Loop: Header=BB2_2 Depth=1
	ldr	x8, [x19, :lo12:gLVTable+400]
	ldr	x8, [x8]
	ldr	x9, [x8, #72]
	ldrb	w9, [x9, #36]
	cmp	w9, #1                  // =1
	b.ne	.LBB2_1
// %bb.6:                               // %cond_jump_then7
                                        //   in Loop: Header=BB2_2 Depth=1
	ldr	x9, [x19, :lo12:gLVTable+400]
	ldr	x0, [x8, #72]
	ldr	x1, [x9]
	bl	ViFiler_input
	b	.LBB2_2
.LBB2_7:                                // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #16             // =16
	mov	w2, #65536
	bl	xmemcpy
	mov	w0, wzr
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end2:
	.size	"Vi_main_loop-15", .Lfunc_end2-"Vi_main_loop-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_repositionFiler-15" // -- Begin function Vi_repositionFiler-15
	.p2align	2
	.type	"Vi_repositionFiler-15",@function
"Vi_repositionFiler-15":                // @Vi_repositionFiler-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x19, gLVTable
	add	x19, x19, :lo12:gLVTable
	mov	x20, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x19
	bl	xmemcpy
	add	x8, sp, #24             // =24
	str	x20, [sp, #24]
	str	x8, [x19, #400]
	bl	xgetmaxy
	add	x8, sp, #20             // =20
	str	x8, [x19, #408]
	str	w0, [sp, #20]
	bl	xgetmaxx
	ldr	x8, [sp, #24]
	add	x9, sp, #16             // =16
	str	x9, [x19, #416]
	str	w0, [sp, #16]
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	delwin
	ldp	w8, w0, [sp, #16]
                                        // kill: def $w8 killed $w8 def $x8
	mov	w9, #26215
	sxtw	x8, w8
	movk	w9, #26214, lsl #16
	mul	x8, x8, x9
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	x10, sp, #12            // =12
	add	w1, w8, w9
	mov	w2, wzr
	mov	w3, wzr
	str	x10, [x19, #424]
	str	w1, [sp, #12]
	bl	newwin
	mov	x8, sp
	mov	w1, #1
	str	x8, [x19, #432]
	str	x0, [sp]
	bl	keypad
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	add	x1, sp, #32             // =32
	mov	w2, #65536
	ldr	x8, [x8, #72]
	mov	x0, x19
	str	x9, [x8, #16]
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end3:
	.size	"Vi_repositionFiler-15", .Lfunc_end3-"Vi_repositionFiler-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_view-15"            // -- Begin function Vi_view-15
	.p2align	2
	.type	"Vi_view-15",@function
"Vi_view-15":                           // @Vi_view-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #400]
	ldr	x8, [x19, #72]
	ldr	x0, [x8, #16]
	bl	xclear
	ldr	x8, [sp, #8]
	adrp	x1, 15filer_lambda5
	add	x1, x1, :lo12:15filer_lambda5
	ldr	x0, [x8]
	bl	list_each_ViWinp80_15filer
	ldr	x1, [sp, #8]
	ldr	x0, [x1, #72]
	bl	ViFiler_view
	ldr	x8, [sp, #8]
	adrp	x1, 15filer_lambda6
	add	x1, x1, :lo12:15filer_lambda6
	ldr	x0, [x8]
	bl	list_each_ViWinp81_15filer
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	wrefresh
	ldr	x8, [sp, #8]
	adrp	x1, 15filer_lambda7
	add	x1, x1, :lo12:15filer_lambda7
	ldr	x0, [x8]
	bl	list_each_ViWinp82_15filer
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end4:
	.size	"Vi_view-15", .Lfunc_end4-"Vi_view-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_clearView-15"       // -- Begin function Vi_clearView-15
	.p2align	2
	.type	"Vi_clearView-15",@function
"Vi_clearView-15":                      // @Vi_clearView-15
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-48]!        // 8-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w28, -48
	adrp	x19, gLVTable
	add	x19, x19, :lo12:gLVTable
	mov	x20, x0
	mov	x0, sp
	mov	w2, #65536
	mov	x1, x19
	bl	xmemcpy
	adrp	x21, stdscr
	ldr	x0, [x21, :lo12:stdscr]
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	str	x20, [x8, #32760]
	add	x8, sp, #16, lsl #12    // =65536
	add	x8, x8, #8              // =8
	mov	w1, #1
	str	x8, [x19, #400]
	bl	clearok
	ldr	x0, [x21, :lo12:stdscr]
	bl	wclear
	ldr	x0, [x21, :lo12:stdscr]
	mov	w1, wzr
	bl	clearok
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x8, [x8, #32760]
	mov	w1, #1
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	clearok
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x8, [x8, #32760]
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	wclear
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x8, [x8, #32760]
	mov	w1, wzr
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	clearok
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x1, [x8, #32760]
	ldr	x0, [x1, #72]
	bl	ViFiler_view
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x8, [x8, #32760]
	ldr	x8, [x8, #72]
	ldr	x0, [x8, #16]
	bl	wrefresh
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #16             // =16
	ldr	x8, [x8, #32760]
	adrp	x1, 15filer_lambda8
	add	x1, x1, :lo12:15filer_lambda8
	ldr	x0, [x8]
	bl	list_each_ViWinp83_15filer
	ldr	x0, [x21, :lo12:stdscr]
	bl	wrefresh
	mov	x1, sp
	mov	w2, #65536
	mov	x0, x19
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end5:
	.size	"Vi_clearView-15", .Lfunc_end5-"Vi_clearView-15"
	.cfi_endproc
                                        // -- End function
	.globl	"Vi_commandBox-15"      // -- Begin function Vi_commandBox-15
	.p2align	2
	.type	"Vi_commandBox-15",@function
"Vi_commandBox-15":                     // @Vi_commandBox-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x27, [sp, #-96]!   // 16-byte Folded Spill
	stp	x26, x25, [sp, #16]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill
	add	x29, sp, #80            // =80
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #80             // =80
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #56            // =56
	mov	w2, #65536
	mov	x1, x23
	sub	x25, x29, #100          // =100
	bl	xmemcpy
	add	x8, x19, #48            // =48
	add	x9, x19, #40            // =40
	stp	x21, x22, [x19, #40]
	stp	x8, x9, [x23, #400]
	bl	xgetmaxx
	add	x8, x19, #36            // =36
	str	w0, [x19, #36]
	sub	w1, w0, #1              // =1
	mov	w0, #3
	mov	w2, wzr
	mov	w3, wzr
	str	x8, [x23, #416]
	bl	newwin
	str	x0, [x19, #24]
	adrp	x0, .Lglobal_string.360
	add	x8, x19, #24            // =24
	add	x0, x0, :lo12:.Lglobal_string.360
	str	x8, [x23, #424]
	bl	string
	adrp	x26, gLVTable+400
	adrp	x20, gLVTable+432
	adrp	x21, .Lglobal_string.361
	add	x8, x19, #16            // =16
	add	x9, x19, #12            // =12
	add	x26, x26, :lo12:gLVTable+400
	adrp	x28, gLVTable+440
	add	x20, x20, :lo12:gLVTable+432
	add	x21, x21, :lo12:.Lglobal_string.361
	str	x0, [x19, #16]
	str	wzr, [x19, #12]
	stp	x8, x9, [x23, #432]
	ldr	w8, [x19, #12]
	tbz	w8, #0, .LBB6_2
	b	.LBB6_5
.LBB6_1:                                // %cond_then_block14
                                        //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [x28, :lo12:gLVTable+440]
	mov	w9, #1
	str	w9, [x8]
	ldr	w8, [x19, #12]
	tbnz	w8, #0, .LBB6_5
.LBB6_2:                                // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x26]
	ldr	x0, [x8]
	bl	"Vi_view-15"
	ldr	x8, [x26, #24]
	mov	w1, #124
	mov	w2, #124
	mov	w3, #45
	ldr	x0, [x8]
	mov	w4, #45
	str	wzr, [sp, #-16]!
	mov	w5, wzr
	mov	w6, wzr
	mov	w7, wzr
	bl	wborder
	add	sp, sp, #16             // =16
	ldp	x9, x8, [x26, #16]
	ldr	x10, [x26, #32]
	mov	w1, wzr
	ldr	x22, [x8]
	ldr	w8, [x9]
	ldr	x0, [x10]
	sub	w2, w8, #3              // =3
	bl	string_substring
	mov	x23, x0
	mov	w1, #1
	mov	w2, #1
	mov	x0, x22
	mov	x3, x23
	bl	mvwprintw
	ldr	x8, [x26, #24]
	ldr	x0, [x8]
	bl	wrefresh
	ldr	x8, [x26, #24]
	ldr	x0, [x8]
	bl	wgetch
	mov	x8, sp
	mov	w22, w0
	sub	x24, x8, #16            // =16
	mov	sp, x24
	stur	w0, [x8, #-16]
	mov	x0, x23
	str	x24, [x26, #48]
	bl	xfree
	cmp	w22, #10                // =10
	b.eq	.LBB6_1
// %bb.3:                               // %cond_then_block
                                        //   in Loop: Header=BB6_2 Depth=1
	cmp	w22, #3                 // =3
	b.eq	.LBB6_6
// %bb.4:                               // %cond_then_block23
                                        //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [x20]
	ldr	w1, [x24]
	mov	x0, x21
	ldr	x22, [x8]
	str	w1, [x25]
	str	x25, [x20, #24]
	bl	xasprintf
	mov	x23, x0
	stur	x0, [x25, #4]
	bl	string_printable
	mov	x24, x0
	mov	x0, x22
	mov	x1, x24
	bl	op_add_string_string
	ldr	x27, [x20]
	mov	x22, x0
	ldr	x8, [x27]
	mov	x0, x8
	bl	xfree
	mov	x0, x24
	str	x22, [x27]
	bl	xfree
	mov	x0, x23
	bl	xfree
	ldr	w8, [x19, #12]
	tbz	w8, #0, .LBB6_2
.LBB6_5:                                // %cond_end_block
	ldr	x0, [x19, #24]
	bl	delwin
	ldr	x20, [x19, #16]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #56            // =56
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	b	.LBB6_7
.LBB6_6:                                // %cond_then_block16
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	ldr	x8, [x20, #424]
	ldr	x0, [x8]
	bl	delwin
	ldr	x8, [x20, #408]
	add	x1, x19, #56            // =56
	mov	w2, #65536
	mov	x0, x20
	ldr	x21, [x8]
	bl	xmemcpy
	ldr	x0, [x19, #16]
	bl	xfree
	mov	x0, x21
.LBB6_7:                                // %cond_end_block
	sub	sp, x29, #80            // =80
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x27, [sp], #96     // 16-byte Folded Reload
	ret
.Lfunc_end6:
	.size	"Vi_commandBox-15", .Lfunc_end6-"Vi_commandBox-15"
	.cfi_endproc
                                        // -- End function
	.globl	"ViWin_textsView-15"    // -- Begin function ViWin_textsView-15
	.p2align	2
	.type	"ViWin_textsView-15",@function
"ViWin_textsView-15":                   // @ViWin_textsView-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x23, [sp, #-64]!   // 16-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w28, -64
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #24            // =24
	mov	w2, #65536
	mov	x1, x20
	sub	x23, x29, #56           // =56
	bl	xmemcpy
	add	x8, x19, #16            // =16
	add	x9, x19, #8             // =8
	stp	x21, x22, [x19, #8]
	stp	x8, x9, [x20, #400]
	ldr	w8, [x22]
	cbz	w8, .LBB7_2
// %bb.1:                               // %cond_jump_then
	ldr	x8, [x19, #16]
	ldr	x8, [x8]
	ldrh	w8, [x8, #4]
	add	w8, w8, #1              // =1
	b	.LBB7_3
.LBB7_2:                                // %cond_else_block
	mov	w8, #65535
.LBB7_3:                                // %cond_end
	strh	w8, [x23]
	ldrsh	w9, [x23]
	mov	x10, sp
	sub	x8, x10, #16            // =16
	mov	sp, x8
	ldr	x11, [x19, #16]
	adrp	x12, gLVTable+416
	str	x8, [x12, :lo12:gLVTable+416]
	stur	w9, [x10, #-16]
	ldr	w9, [x11]
	cbz	w9, .LBB7_5
// %bb.4:                               // %cond_jump_then7
	ldr	x9, [x19, #16]
	ldr	x9, [x9]
	ldrh	w9, [x9, #6]
	add	w9, w9, #1              // =1
	b	.LBB7_6
.LBB7_5:                                // %cond_else_block8
	mov	w9, #65535
.LBB7_6:                                // %cond_end9
	strh	w9, [x23, #4]
	ldrsh	w9, [x23, #4]
	mov	x10, sp
	sub	x11, x10, #16           // =16
	mov	sp, x11
	ldr	x12, [x19, #16]
	str	x11, [x20, #424]
	stur	w9, [x10, #-16]
	ldr	w8, [x8]
	ldr	w1, [x12, #40]
	ldr	x0, [x12, #8]
	add	w8, w1, w8
	sub	w2, w8, #1              // =1
	bl	list_sublist_intp0_15filer
	adrp	x1, 15filer_lambda0
	add	x1, x1, :lo12:15filer_lambda0
	mov	x21, x0
	bl	list_each_intp4_15filer
	mov	x0, x21
	bl	list_finalize_intp5_15filer
	mov	x0, x21
	bl	xfree
	add	x1, x19, #24            // =24
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x23, [sp], #64     // 16-byte Folded Reload
	ret
.Lfunc_end7:
	.size	"ViWin_textsView-15", .Lfunc_end7-"ViWin_textsView-15"
	.cfi_endproc
                                        // -- End function
	.globl	"ViWin_initialize-15"   // -- Begin function ViWin_initialize-15
	.p2align	2
	.type	"ViWin_initialize-15",@function
"ViWin_initialize-15":                  // @ViWin_initialize-15
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x24, [sp, #-64]!   // 16-byte Folded Spill
	stp	x23, x22, [sp, #16]     // 16-byte Folded Spill
	stp	x21, x20, [sp, #32]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #48]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65632
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w23, -48
	.cfi_offset w24, -56
	.cfi_offset w28, -64
	adrp	x24, gLVTable
	add	x24, x24, :lo12:gLVTable
	mov	w21, w2
	mov	w22, w1
	mov	x23, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x24
	mov	w19, w4
	mov	w20, w3
	bl	xmemcpy
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	add	x10, sp, #16            // =16
	add	x11, sp, #12            // =12
	add	x12, sp, #8             // =8
	str	x23, [sp, #24]
	stp	w21, w22, [sp, #16]
	stp	w19, w20, [sp, #8]
	stp	x8, x9, [x24, #400]
	stp	x10, x11, [x24, #416]
	str	x12, [x24, #432]
	bl	xgetmaxx
	mov	w10, #26215
	movk	w10, #26214, lsl #16
	ldr	x8, [sp, #24]
	ldp	w12, w1, [sp, #16]
	ldp	w4, w13, [sp, #8]
	add	x9, sp, #4              // =4
	mov	x11, sp
	smull	x10, w0, w10
	stp	x9, x11, [x24, #440]
	lsr	x9, x10, #63
	asr	x10, x10, #33
	add	w9, w10, w9
	stp	w9, w0, [sp]
	add	w2, w12, w9
	sub	w3, w13, w9
	mov	x0, x8
	bl	"ViWin_initialize-14"
	ldr	x19, [sp, #24]
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x24
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #32]     // 16-byte Folded Reload
	ldp	x23, x22, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x24, [sp], #64     // 16-byte Folded Reload
	ret
.Lfunc_end8:
	.size	"ViWin_initialize-15", .Lfunc_end8-"ViWin_initialize-15"
	.cfi_endproc
                                        // -- End function
	.globl	list_sublist_intp0_15filer // -- Begin function list_sublist_intp0_15filer
	.p2align	2
	.type	list_sublist_intp0_15filer,@function
list_sublist_intp0_15filer:             // @list_sublist_intp0_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x25, [sp, #-80]!   // 16-byte Folded Spill
	stp	x24, x23, [sp, #16]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w28, -80
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	w20, w2
	mov	w21, w1
	mov	x22, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x23
	bl	xmemcpy
	adrp	x2, .Lglobal_string
	adrp	x3, .Lglobal_string.1
	adrp	x5, .Lglobal_string.2
	adrp	x6, .Lglobal_string.3
	add	x8, x19, #24            // =24
	add	x9, x19, #20            // =20
	add	x10, x19, #16           // =16
	add	x2, x2, :lo12:.Lglobal_string
	add	x3, x3, :lo12:.Lglobal_string.1
	add	x5, x5, :lo12:.Lglobal_string.2
	add	x6, x6, :lo12:.Lglobal_string.3
	mov	w0, #1
	mov	w1, #24
	mov	w4, #1126
	str	x22, [x19, #24]
	stp	w20, w21, [x19, #16]
	stp	x8, x9, [x23, #432]
	str	x10, [x23, #448]
	bl	debug_xcalloc
	bl	list_initialize_intp1_15filer
	ldr	w8, [x19, #20]
	add	x9, x19, #8             // =8
	str	x9, [x23, #456]
	str	x0, [x19, #8]
	tbnz	w8, #31, .LBB9_12
// %bb.1:                               // %cond_end
	ldr	w8, [x19, #16]
	tbnz	w8, #31, .LBB9_13
.LBB9_2:                                // %cond_end11
	ldr	w8, [x19, #20]
	tbnz	w8, #31, .LBB9_14
.LBB9_3:                                // %cond_end22
	ldr	x8, [x19, #24]
	ldr	w9, [x19, #16]
	ldr	w8, [x8, #16]
	cmp	w9, w8
	b.lt	.LBB9_5
// %bb.4:                               // %cond_jump_then25
	adrp	x8, gLVTable+432
	add	x8, x8, :lo12:gLVTable+432
	ldr	x9, [x8]
	ldr	x8, [x8, #16]
	ldr	x9, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8]
.LBB9_5:                                // %cond_end26
	ldr	x8, [x19, #24]
	mov	x9, sp
	sub	x21, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x21
	adrp	x22, gLVTable+464
	stur	x8, [x9, #-16]
	mov	x8, sp
	add	x22, x22, :lo12:gLVTable+464
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x23, gLVTable+440
	adrp	x24, gLVTable+448
	adrp	x25, gLVTable+456
	add	x23, x23, :lo12:gLVTable+440
	add	x24, x24, :lo12:gLVTable+448
	add	x25, x25, :lo12:gLVTable+456
	stp	x21, x9, [x22]
	stur	wzr, [x8, #-16]
	ldr	x8, [x21]
	cbnz	x8, .LBB9_7
	b	.LBB9_11
.LBB9_6:                                // %cond_end38
                                        //   in Loop: Header=BB9_7 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x22, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x21]
	cbz	x8, .LBB9_11
.LBB9_7:                                // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x10, sp
	sub	x8, x10, #16            // =16
	mov	sp, x8
	ldr	x9, [x23, #32]
	ldr	x11, [x23]
	ldr	w9, [x9]
	ldr	w11, [x11]
	cmp	w9, w11
	cset	w9, ge
	sturb	w9, [x10, #-16]
	b.lt	.LBB9_9
// %bb.8:                               // %cond_jump_then33
                                        //   in Loop: Header=BB9_7 Depth=1
	ldr	x10, [x24, #24]
	ldr	x11, [x24]
	ldr	w10, [x10]
	ldr	w11, [x11]
	cmp	w10, w11
	cset	w10, lt
	and	w9, w9, w10
	strb	w9, [x8]
.LBB9_9:                                // %cond_jump_end
                                        //   in Loop: Header=BB9_7 Depth=1
	ldrb	w8, [x8]
	tbz	w8, #0, .LBB9_6
// %bb.10:                              // %cond_jump_then39
                                        //   in Loop: Header=BB9_7 Depth=1
	ldp	x9, x8, [x25]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_intp2_15filer
	b	.LBB9_6
.LBB9_11:                               // %cond_end_block
	ldr	x20, [x19, #8]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	sub	sp, x29, #64            // =64
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x25, [sp], #80     // 16-byte Folded Reload
	ret
.LBB9_12:                               // %cond_jump_then
	adrp	x8, gLVTable+432
	add	x8, x8, :lo12:gLVTable+432
	ldp	x9, x8, [x8]
	ldr	x9, [x9]
	ldr	w10, [x8]
	ldr	w9, [x9, #16]
	add	w9, w10, w9
	str	w9, [x8]
	ldr	w8, [x19, #16]
	tbz	w8, #31, .LBB9_2
.LBB9_13:                               // %cond_jump_then10
	adrp	x8, gLVTable+432
	add	x8, x8, :lo12:gLVTable+432
	ldr	x9, [x8]
	ldr	x8, [x8, #16]
	ldr	x9, [x9]
	ldr	w10, [x8]
	ldr	w9, [x9, #16]
	add	w9, w9, w10
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	w8, [x19, #20]
	tbz	w8, #31, .LBB9_3
.LBB9_14:                               // %cond_jump_then21
	adrp	x8, gLVTable+440
	ldr	x8, [x8, :lo12:gLVTable+440]
	str	wzr, [x8]
	b	.LBB9_3
.Lfunc_end9:
	.size	list_sublist_intp0_15filer, .Lfunc_end9-list_sublist_intp0_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_intp1_15filer // -- Begin function list_initialize_intp1_15filer
	.p2align	2
	.type	list_initialize_intp1_15filer,@function
list_initialize_intp1_15filer:          // @list_initialize_intp1_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #480]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end10:
	.size	list_initialize_intp1_15filer, .Lfunc_end10-list_initialize_intp1_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_intp2_15filer // -- Begin function list_push_back_intp2_15filer
	.p2align	2
	.type	list_push_back_intp2_15filer,@function
list_push_back_intp2_15filer:           // @list_push_back_intp2_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB11_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB11_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.8
	adrp	x3, .Lglobal_string.9
	adrp	x5, .Lglobal_string.10
	adrp	x6, .Lglobal_string.11
	add	x2, x2, :lo12:.Lglobal_string.8
	add	x3, x3, :lo12:.Lglobal_string.9
	add	x5, x5, :lo12:.Lglobal_string.10
	add	x6, x6, :lo12:.Lglobal_string.11
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB11_5
.LBB11_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.4
	adrp	x3, .Lglobal_string.5
	adrp	x5, .Lglobal_string.6
	adrp	x6, .Lglobal_string.7
	add	x2, x2, :lo12:.Lglobal_string.4
	add	x3, x3, :lo12:.Lglobal_string.5
	add	x5, x5, :lo12:.Lglobal_string.6
	add	x6, x6, :lo12:.Lglobal_string.7
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB11_5
.LBB11_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.12
	adrp	x3, .Lglobal_string.13
	adrp	x5, .Lglobal_string.14
	adrp	x6, .Lglobal_string.15
	add	x2, x2, :lo12:.Lglobal_string.12
	add	x3, x3, :lo12:.Lglobal_string.13
	add	x5, x5, :lo12:.Lglobal_string.14
	add	x6, x6, :lo12:.Lglobal_string.15
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB11_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end11:
	.size	list_push_back_intp2_15filer, .Lfunc_end11-list_push_back_intp2_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_intp3_15filer // -- Begin function list_push_back_intp3_15filer
	.p2align	2
	.type	list_push_back_intp3_15filer,@function
list_push_back_intp3_15filer:           // @list_push_back_intp3_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB12_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB12_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.20
	adrp	x3, .Lglobal_string.21
	adrp	x5, .Lglobal_string.22
	adrp	x6, .Lglobal_string.23
	add	x2, x2, :lo12:.Lglobal_string.20
	add	x3, x3, :lo12:.Lglobal_string.21
	add	x5, x5, :lo12:.Lglobal_string.22
	add	x6, x6, :lo12:.Lglobal_string.23
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB12_5
.LBB12_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.16
	adrp	x3, .Lglobal_string.17
	adrp	x5, .Lglobal_string.18
	adrp	x6, .Lglobal_string.19
	add	x2, x2, :lo12:.Lglobal_string.16
	add	x3, x3, :lo12:.Lglobal_string.17
	add	x5, x5, :lo12:.Lglobal_string.18
	add	x6, x6, :lo12:.Lglobal_string.19
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB12_5
.LBB12_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.24
	adrp	x3, .Lglobal_string.25
	adrp	x5, .Lglobal_string.26
	adrp	x6, .Lglobal_string.27
	add	x2, x2, :lo12:.Lglobal_string.24
	add	x3, x3, :lo12:.Lglobal_string.25
	add	x5, x5, :lo12:.Lglobal_string.26
	add	x6, x6, :lo12:.Lglobal_string.27
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB12_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end12:
	.size	list_push_back_intp3_15filer, .Lfunc_end12-list_push_back_intp3_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda0         // -- Begin function 15filer_lambda0
	.p2align	2
	.type	15filer_lambda0,@function
15filer_lambda0:                        // @"15filer_lambda0"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x27, [sp, #-96]!   // 16-byte Folded Spill
	stp	x26, x25, [sp, #16]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill
	add	x29, sp, #80            // =80
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #48             // =48
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	x20, x2
	mov	w21, w1
	mov	x22, x0
	add	x0, x19, #40            // =40
	mov	w2, #65536
	mov	x1, x23
	bl	xmemcpy
	ldr	x10, [x23, #424]
	add	x8, x19, #32            // =32
	add	x9, x19, #28            // =28
	stp	x8, x9, [x23, #432]
	add	x8, x19, #16            // =16
	str	x22, [x19, #32]
	str	w21, [x19, #28]
	str	x20, [x19, #16]
	str	x8, [x23, #448]
	ldr	w8, [x10]
	mov	x0, x22
	mov	w1, wzr
	sub	w2, w8, #1              // =1
	bl	wstring_substring
	ldr	x8, [x23, #400]
	add	x9, x19, #8             // =8
	str	x0, [x19, #8]
	str	x9, [x23, #456]
	ldr	x8, [x8]
	ldr	w9, [x19, #28]
	ldr	w8, [x8, #32]
	cmp	w8, w9
	cset	w20, eq
	strb	w20, [x19, #6]
	b.ne	.LBB13_2
// %bb.1:                               // %cond_jump_then
	adrp	x8, gLVTable+400
	add	x8, x8, :lo12:gLVTable+400
	ldp	x8, x9, [x8]
	ldr	x9, [x9]
	ldr	x1, [x8]
	ldr	x0, [x9, #8]
	bl	ViWin_equals
	and	w8, w20, w0
	strb	w8, [x19, #6]
.LBB13_2:                               // %cond_jump_end
	ldrb	w8, [x19, #6]
	cmp	w8, #1                  // =1
	strb	w8, [x19, #7]
	b.ne	.LBB13_4
// %bb.3:                               // %cond_jump_then8
	adrp	x9, gLVTable+408
	ldr	x9, [x9, :lo12:gLVTable+408]
	ldr	x9, [x9]
	ldr	x9, [x9, #72]
	ldrb	w9, [x9, #36]
	bic	w8, w8, w9
	strb	w8, [x19, #7]
.LBB13_4:                               // %cond_jump_end9
	ldrb	w8, [x19, #7]
	cmp	w8, #1                  // =1
	b.ne	.LBB13_8
// %bb.5:                               // %cond_jump_then13
	adrp	x23, gLVTable+400
	add	x23, x23, :lo12:gLVTable+400
	ldr	x8, [x23, #56]
	ldr	x0, [x8]
	bl	wstring_length
	ldr	x8, [x23]
	ldr	x8, [x8]
	cbz	w0, .LBB13_9
// %bb.6:                               // %"cond_jump_elif0\0A"
	adrp	x9, gLVTable+456
	ldr	x9, [x9, :lo12:gLVTable+456]
	ldr	w20, [x8, #36]
	ldr	x0, [x9]
	bl	wstring_length
	cmp	w20, w0
	b.ne	.LBB13_10
// %bb.7:                               // %"cond_jump_elif_then0\0A"
	ldr	x8, [x23]
	ldr	x9, [x23, #40]
	ldr	x10, [x23, #56]
	adrp	x3, .Lglobal_string.36
	ldr	x8, [x8]
	ldr	w1, [x9]
	ldr	x4, [x10]
	add	x3, x3, :lo12:.Lglobal_string.36
	ldr	x0, [x8]
	mov	w2, wzr
	bl	mvwprintw
	ldr	x8, [x23, #56]
	ldr	x0, [x8]
	bl	wstring_printable
	mov	x24, sp
	sub	x8, x24, #16            // =16
	mov	sp, x8
	ldr	x9, [x23]
	str	x8, [x23, #64]
	stur	x0, [x24, #-16]
	mov	w1, #262144
	ldr	x8, [x9]
	mov	x2, xzr
	ldr	x0, [x8]
	bl	wattr_on
	ldr	x8, [x23]
	ldr	x9, [x23, #40]
	ldur	x22, [x24, #-16]
	ldr	x8, [x8]
	ldr	w20, [x9]
	mov	x0, x22
	ldr	x21, [x8]
	bl	wstring_length
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x1, w0
	mov	x0, x22
	bl	wcswidth
	adrp	x3, .Lglobal_string.37
	mov	w2, w0
	add	x3, x3, :lo12:.Lglobal_string.37
	mov	x0, x21
	mov	w1, w20
	bl	mvwprintw
	ldr	x8, [x23]
	mov	w1, #262144
	mov	x2, xzr
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	wattr_off
	ldur	x0, [x24, #-16]
	b	.LBB13_11
.LBB13_8:                               // %cond_else_block
	adrp	x8, gLVTable+400
	add	x8, x8, :lo12:gLVTable+400
	ldr	x9, [x8]
	ldr	x10, [x8, #40]
	ldr	x8, [x8, #56]
	adrp	x3, .Lglobal_string.41
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x4, [x8]
	add	x3, x3, :lo12:.Lglobal_string.41
	ldr	x0, [x9]
	mov	w2, wzr
	bl	mvwprintw
	b	.LBB13_12
.LBB13_9:                               // %cond_jump_then16
	ldr	x0, [x8]
	mov	w1, #262144
	mov	x2, xzr
	bl	wattr_on
	ldr	x8, [x23]
	ldr	x9, [x23, #40]
	adrp	x3, .Lglobal_string.35
	add	x3, x3, :lo12:.Lglobal_string.35
	ldr	x8, [x8]
	ldr	w1, [x9]
	mov	w2, wzr
	ldr	x0, [x8]
	bl	mvwprintw
	ldr	x8, [x23]
	mov	w1, #262144
	mov	x2, xzr
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	wattr_off
	b	.LBB13_12
.LBB13_10:                              // %cond_else_block17
	mov	x21, sp
	sub	x8, x21, #16            // =16
	mov	sp, x8
	ldr	x9, [x23]
	str	x8, [x23, #64]
	stur	wzr, [x21, #-16]
	ldr	x8, [x23, #56]
	ldr	x9, [x9]
	mov	w1, wzr
	ldr	x0, [x8]
	ldr	w2, [x9, #36]
	bl	wstring_substring
	mov	x24, sp
	sub	x8, x24, #16            // =16
	mov	sp, x8
	str	x8, [x23, #72]
	stur	x0, [x24, #-16]
	bl	wstring_printable
	mov	x22, sp
	sub	x8, x22, #16            // =16
	mov	x4, x0
	mov	sp, x8
	ldr	x9, [x23]
	str	x8, [x23, #80]
	stur	x0, [x22, #-16]
	adrp	x3, .Lglobal_string.38
	ldr	x8, [x9]
	ldr	x9, [x23, #40]
	add	x3, x3, :lo12:.Lglobal_string.38
	mov	w2, wzr
	ldr	x0, [x8]
	ldr	w1, [x9]
	bl	mvwprintw
	ldur	x20, [x22, #-16]
	ldur	w25, [x21, #-16]
	mov	x0, x20
	bl	wstring_length
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x1, w0
	mov	x0, x20
	bl	wcswidth
	ldur	x20, [x22, #-16]
	add	w8, w25, w0
	stur	w8, [x21, #-16]
	mov	x0, x20
	bl	wstring_length
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x1, w0
	mov	x0, x20
	bl	wcswidth
	ldr	x8, [x23]
	ldr	x9, [x23, #56]
	ldr	x8, [x8]
	ldr	x0, [x9]
	ldr	w1, [x8, #36]
	add	w2, w1, #1              // =1
	bl	wstring_substring
	mov	x25, sp
	sub	x8, x25, #16            // =16
	mov	sp, x8
	str	x8, [x23, #88]
	stur	x0, [x25, #-16]
	bl	wstring_printable
	mov	x26, sp
	sub	x8, x26, #16            // =16
	mov	sp, x8
	ldr	x9, [x23]
	str	x8, [x23, #96]
	stur	x0, [x26, #-16]
	mov	w1, #262144
	ldr	x8, [x9]
	mov	x2, xzr
	ldr	x0, [x8]
	bl	wattr_on
	ldr	x8, [x23]
	ldr	x9, [x23, #40]
	ldur	w2, [x21, #-16]
	ldur	x4, [x26, #-16]
	ldr	x8, [x8]
	ldr	w1, [x9]
	adrp	x3, .Lglobal_string.39
	add	x3, x3, :lo12:.Lglobal_string.39
	ldr	x0, [x8]
	bl	mvwprintw
	ldr	x8, [x23]
	mov	w1, #262144
	mov	x2, xzr
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	wattr_off
	ldur	x20, [x26, #-16]
	ldur	w27, [x21, #-16]
	mov	x0, x20
	bl	wstring_length
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x1, w0
	mov	x0, x20
	bl	wcswidth
	ldur	x20, [x26, #-16]
	add	w8, w27, w0
	stur	w8, [x21, #-16]
	mov	x0, x20
	bl	wstring_length
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x1, w0
	mov	x0, x20
	bl	wcswidth
	ldr	x8, [x23]
	ldr	x9, [x23, #56]
	mov	w2, #-1
	ldr	x8, [x8]
	ldr	x0, [x9]
	ldr	w8, [x8, #36]
	add	w1, w8, #1              // =1
	bl	wstring_substring
	mov	x20, sp
	sub	x8, x20, #16            // =16
	mov	x4, x0
	mov	sp, x8
	ldr	x9, [x23]
	str	x8, [x23, #104]
	stur	x0, [x20, #-16]
	ldr	x8, [x23, #40]
	ldr	x9, [x9]
	ldur	w2, [x21, #-16]
	adrp	x3, .Lglobal_string.40
	ldr	w1, [x8]
	ldr	x0, [x9]
	add	x3, x3, :lo12:.Lglobal_string.40
	bl	mvwprintw
	ldur	x0, [x24, #-16]
	bl	xfree
	ldur	x0, [x20, #-16]
	bl	xfree
	ldur	x0, [x25, #-16]
	bl	xfree
	ldur	x0, [x22, #-16]
	bl	xfree
	ldur	x0, [x26, #-16]
.LBB13_11:                              // %cond_end
	bl	xfree
.LBB13_12:                              // %cond_end
	ldr	x0, [x19, #8]
	bl	xfree
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #40            // =40
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #80            // =80
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x27, [sp], #96     // 16-byte Folded Reload
	ret
.Lfunc_end13:
	.size	15filer_lambda0, .Lfunc_end13-15filer_lambda0
	.cfi_endproc
                                        // -- End function
	.globl	list_each_intp4_15filer // -- Begin function list_each_intp4_15filer
	.p2align	2
	.type	list_each_intp4_15filer,@function
list_each_intp4_15filer:                // @list_each_intp4_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #432]
	ldr	x8, [x21]
	adrp	x20, gLVTable+440
	adrp	x21, gLVTable+448
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+440
	add	x21, x21, :lo12:gLVTable+448
	stp	x10, x11, [x22, #448]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB14_3
.LBB14_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB14_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB14_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB14_1
.LBB14_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end14:
	.size	list_each_intp4_15filer, .Lfunc_end14-list_each_intp4_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_intp5_15filer // -- Begin function list_finalize_intp5_15filer
	.p2align	2
	.type	list_finalize_intp5_15filer,@function
list_finalize_intp5_15filer:            // @list_finalize_intp5_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #432]
	cbz	x20, .LBB15_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+440
	adrp	x10, gLVTable+440
	add	x21, x21, :lo12:gLVTable+440
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+440]
	ldr	x8, [x20]
	cbz	x8, .LBB15_3
.LBB15_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB15_2
.LBB15_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end15:
	.size	list_finalize_intp5_15filer, .Lfunc_end15-list_finalize_intp5_15filer
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_cd              // -- Begin function ViFiler_cd
	.p2align	2
	.type	ViFiler_cd,@function
ViFiler_cd:                             // @ViFiler_cd
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x23, [sp, #-64]!   // 16-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w28, -64
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, x19, #24            // =24
	add	x9, x19, #16            // =16
	mov	x0, x21
	stp	x21, x22, [x19, #16]
	stp	x8, x9, [x20, #400]
	bl	string
	ldr	x8, [x22]
	mov	x21, x0
	mov	x0, x8
	bl	xfree
	str	x21, [x22]
	ldr	x23, [x19, #24]
	adrp	x2, .Lglobal_string.42
	adrp	x3, .Lglobal_string.43
	adrp	x5, .Lglobal_string.44
	adrp	x6, .Lglobal_string.45
	add	x2, x2, :lo12:.Lglobal_string.42
	add	x3, x3, :lo12:.Lglobal_string.43
	add	x5, x5, :lo12:.Lglobal_string.44
	add	x6, x6, :lo12:.Lglobal_string.45
	mov	w0, #1
	mov	w1, #24
	mov	w4, #37
	bl	debug_xcalloc
	bl	list_initialize_charp7_15filer
	ldr	x21, [x23, #8]
	mov	x22, x0
	mov	x0, x21
	bl	list_finalize_charp8_15filer
	mov	x0, x21
	bl	xfree
	str	x22, [x23, #8]
	ldr	x0, [x19, #16]
	bl	opendir
	add	x8, x19, #8             // =8
	str	x8, [x20, #416]
	str	x0, [x19, #8]
	cbz	x0, .LBB16_5
// %bb.1:
	adrp	x21, gLVTable+416
	add	x21, x21, :lo12:gLVTable+416
	adrp	x22, gLVTable+400
.LBB16_2:                               // %cond_then_block11
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x0, [x8]
	bl	readdir
	mov	x9, sp
	sub	x8, x9, #16             // =16
	mov	sp, x8
	str	x8, [x21, #8]
	stur	x0, [x9, #-16]
	cbz	x0, .LBB16_4
// %bb.3:                               // %cond_end17
                                        //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x22, :lo12:gLVTable+400]
	ldr	x8, [x8]
	ldr	x9, [x9]
	add	x0, x8, #19             // =19
	ldr	x20, [x9, #8]
	bl	string
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp10_15filer
	b	.LBB16_2
.LBB16_4:                               // %cond_jump_then16
	ldr	x0, [x19, #8]
	bl	closedir
	ldr	x22, [x19, #24]
	adrp	x1, 15filer_lambda1
	add	x1, x1, :lo12:15filer_lambda1
	ldr	x0, [x22, #8]
	bl	list_sort_block_charp11_15filer
	ldr	x20, [x22, #8]
	mov	x21, x0
	mov	x0, x20
	bl	list_finalize_charp51_15filer
	mov	x0, x20
	bl	xfree
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	str	x21, [x22, #8]
	bl	xmemcpy
	mov	w0, #1
	b	.LBB16_6
.LBB16_5:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	w0, wzr
.LBB16_6:                               // %cond_jump_then
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x23, [sp], #64     // 16-byte Folded Reload
	ret
.Lfunc_end16:
	.size	ViFiler_cd, .Lfunc_end16-ViFiler_cd
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp7_15filer // -- Begin function list_initialize_charp7_15filer
	.p2align	2
	.type	list_initialize_charp7_15filer,@function
list_initialize_charp7_15filer:         // @list_initialize_charp7_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #424]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end17:
	.size	list_initialize_charp7_15filer, .Lfunc_end17-list_initialize_charp7_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp8_15filer // -- Begin function list_finalize_charp8_15filer
	.p2align	2
	.type	list_finalize_charp8_15filer,@function
list_finalize_charp8_15filer:           // @list_finalize_charp8_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #424]
	cbz	x20, .LBB18_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+432
	adrp	x10, gLVTable+432
	add	x21, x21, :lo12:gLVTable+432
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+432]
	ldr	x8, [x20]
	cbz	x8, .LBB18_3
.LBB18_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB18_2
.LBB18_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end18:
	.size	list_finalize_charp8_15filer, .Lfunc_end18-list_finalize_charp8_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp10_15filer // -- Begin function list_push_back_charp10_15filer
	.p2align	2
	.type	list_push_back_charp10_15filer,@function
list_push_back_charp10_15filer:         // @list_push_back_charp10_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #432]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB19_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB19_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.50
	adrp	x3, .Lglobal_string.51
	adrp	x5, .Lglobal_string.52
	adrp	x6, .Lglobal_string.53
	add	x2, x2, :lo12:.Lglobal_string.50
	add	x3, x3, :lo12:.Lglobal_string.51
	add	x5, x5, :lo12:.Lglobal_string.52
	add	x6, x6, :lo12:.Lglobal_string.53
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+432
	add	x10, x10, :lo12:gLVTable+432
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB19_5
.LBB19_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.46
	adrp	x3, .Lglobal_string.47
	adrp	x5, .Lglobal_string.48
	adrp	x6, .Lglobal_string.49
	add	x2, x2, :lo12:.Lglobal_string.46
	add	x3, x3, :lo12:.Lglobal_string.47
	add	x5, x5, :lo12:.Lglobal_string.48
	add	x6, x6, :lo12:.Lglobal_string.49
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+432
	add	x10, x10, :lo12:gLVTable+432
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB19_5
.LBB19_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.54
	adrp	x3, .Lglobal_string.55
	adrp	x5, .Lglobal_string.56
	adrp	x6, .Lglobal_string.57
	add	x2, x2, :lo12:.Lglobal_string.54
	add	x3, x3, :lo12:.Lglobal_string.55
	add	x5, x5, :lo12:.Lglobal_string.56
	add	x6, x6, :lo12:.Lglobal_string.57
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+432
	add	x10, x10, :lo12:gLVTable+432
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB19_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end19:
	.size	list_push_back_charp10_15filer, .Lfunc_end19-list_push_back_charp10_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda1         // -- Begin function 15filer_lambda1
	.p2align	2
	.type	15filer_lambda1,@function
15filer_lambda1:                        // @"15filer_lambda1"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x25, [sp, #-80]!   // 16-byte Folded Spill
	stp	x24, x23, [sp, #16]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w28, -80
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	adrp	x1, .Lglobal_string.62
	add	x8, x19, #8             // =8
	add	x9, x19, #0             // =0
	add	x1, x1, :lo12:.Lglobal_string.62
	mov	x0, x22
	stp	x21, x22, [x19]
	stp	x8, x9, [x20, #424]
	bl	strcmp
	cbz	w0, .LBB20_21
// %bb.1:                               // %cond_end
	ldr	x0, [x19]
	adrp	x1, .Lglobal_string.63
	add	x1, x1, :lo12:.Lglobal_string.63
	bl	strcmp
	cbz	w0, .LBB20_22
// %bb.2:                               // %cond_end7
	ldr	x0, [x19, #8]
	adrp	x1, .Lglobal_string.64
	add	x1, x1, :lo12:.Lglobal_string.64
	bl	strcmp
	cbz	w0, .LBB20_21
// %bb.3:                               // %cond_end11
	ldr	x0, [x19]
	adrp	x1, .Lglobal_string.65
	add	x1, x1, :lo12:.Lglobal_string.65
	bl	strcmp
	cbz	w0, .LBB20_22
// %bb.4:                               // %cond_end15
	ldr	x21, [x19, #8]
	mov	x0, x21
	bl	strlen
	mov	x11, sp
	sub	x8, x11, #16            // =16
	add	x10, x21, x0
	mov	sp, x8
	adrp	x9, gLVTable+440
	str	x8, [x9, :lo12:gLVTable+440]
	stur	x10, [x11, #-16]
.LBB20_5:                               // %loop_top_block
                                        // =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	ldr	x11, [x19, #8]
	cmp	x10, x11
	b.lt	.LBB20_8
// %bb.6:                               // %cond_then_block
                                        //   in Loop: Header=BB20_5 Depth=1
	ldr	x10, [x9, :lo12:gLVTable+440]
	ldr	x10, [x10]
	ldrb	w10, [x10]
	cmp	w10, #46                // =46
	b.eq	.LBB20_8
// %bb.7:                               // %cond_else_block
                                        //   in Loop: Header=BB20_5 Depth=1
	ldr	x10, [x9, :lo12:gLVTable+440]
	ldr	x11, [x10]
	sub	x11, x11, #1            // =1
	str	x11, [x10]
	b	.LBB20_5
.LBB20_8:                               // %cond_end_block
	ldr	w8, [x8]
	ldr	w9, [x19, #8]
	sub	w8, w8, w9
	mov	x9, sp
	sub	x22, x9, #16            // =16
	mov	sp, x22
	ldr	x21, [x19]
	adrp	x23, gLVTable+448
	add	x23, x23, :lo12:gLVTable+448
	str	x22, [x23]
	mov	x0, x21
	stur	w8, [x9, #-16]
	bl	strlen
	mov	x10, sp
	add	x9, x21, x0
	sub	x8, x10, #16            // =16
	mov	sp, x8
	stur	x9, [x10, #-16]
	adrp	x9, gLVTable+456
	str	x8, [x23, #8]
.LBB20_9:                               // %loop_top_block33
                                        // =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	ldr	x11, [x19]
	cmp	x10, x11
	b.lt	.LBB20_12
// %bb.10:                              // %cond_then_block37
                                        //   in Loop: Header=BB20_9 Depth=1
	ldr	x10, [x9, :lo12:gLVTable+456]
	ldr	x10, [x10]
	ldrb	w10, [x10]
	cmp	w10, #46                // =46
	b.eq	.LBB20_12
// %bb.11:                              // %cond_else_block43
                                        //   in Loop: Header=BB20_9 Depth=1
	ldr	x10, [x9, :lo12:gLVTable+456]
	ldr	x11, [x10]
	sub	x11, x11, #1            // =1
	str	x11, [x10]
	b	.LBB20_9
.LBB20_12:                              // %cond_end_block38
	ldr	w8, [x8]
	ldr	w9, [x19]
	sub	w8, w8, w9
	mov	x9, sp
	sub	x21, x9, #16            // =16
	mov	sp, x21
	adrp	x10, gLVTable+464
	str	x21, [x10, :lo12:gLVTable+464]
	mov	x10, sp
	stur	w8, [x9, #-16]
	sub	x8, x10, #16            // =16
	mov	sp, x8
	ldr	w9, [x22]
	cmp	w9, #0                  // =0
	cset	w11, eq
	sturb	w11, [x10, #-16]
	cbnz	w9, .LBB20_14
// %bb.13:                              // %cond_jump_then54
	ldr	w10, [x21]
	orr	w9, w9, w10
	cmp	w9, #0                  // =0
	cset	w9, eq
	strb	w9, [x8]
.LBB20_14:                              // %cond_jump_end
	ldrb	w8, [x8]
	cmp	w8, #1                  // =1
	b.ne	.LBB20_16
// %bb.15:                              // %cond_jump_then57
	ldp	x8, x9, [x20, #424]
	ldr	x0, [x8]
	ldr	x1, [x9]
	bl	strcmp
	mov	w21, w0
	add	x1, x19, #16            // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	b	.LBB20_20
.LBB20_16:                              // %cond_end58
	ldr	w8, [x22]
	cbz	w8, .LBB20_21
// %bb.17:                              // %cond_end64
	ldr	w8, [x21]
	cbz	w8, .LBB20_22
// %bb.18:                              // %cond_end68
	ldr	w8, [x22]
	ldr	x0, [x19, #8]
	mov	w2, #-1
	add	w1, w8, #1              // =1
	bl	string_substring
	mov	x24, sp
	sub	x22, x24, #16           // =16
	mov	sp, x22
	ldr	w9, [x21]
	ldr	x8, [x19]
	adrp	x25, gLVTable+472
	add	x25, x25, :lo12:gLVTable+472
	stur	x0, [x24, #-16]
	add	w1, w9, #1              // =1
	mov	w2, #-1
	mov	x0, x8
	str	x22, [x25]
	bl	string_substring
	mov	x8, sp
	sub	x23, x8, #16            // =16
	mov	x1, x0
	mov	sp, x23
	ldur	x0, [x24, #-16]
	str	x23, [x25, #8]
	stur	x1, [x8, #-16]
	bl	strcmp
	cbz	w0, .LBB20_24
// %bb.19:                              // %cond_jump_then77
	ldp	x8, x9, [x20, #472]
	ldr	x0, [x8]
	ldr	x1, [x9]
	bl	strcmp
	mov	w21, w0
	add	x1, x19, #16            // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	ldr	x0, [x22]
	bl	xfree
	ldr	x0, [x23]
	bl	xfree
.LBB20_20:                              // %cond_jump_then57
	mov	w0, w21
	b	.LBB20_23
.LBB20_21:                              // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	mov	w0, #-1
	b	.LBB20_23
.LBB20_22:                              // %cond_jump_then6
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	mov	w0, #1
.LBB20_23:                              // %cond_jump_then57
	sub	sp, x29, #64            // =64
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x25, [sp], #80     // 16-byte Folded Reload
	ret
.LBB20_24:                              // %cond_end78
	ldp	x1, x0, [x19]
	bl	strcmp
	mov	w20, w0
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	ldr	x0, [x22]
	bl	xfree
	ldr	x0, [x23]
	bl	xfree
	mov	w0, w20
	b	.LBB20_23
.Lfunc_end20:
	.size	15filer_lambda1, .Lfunc_end20-15filer_lambda1
	.cfi_endproc
                                        // -- End function
	.globl	list_sort_block_charp11_15filer // -- Begin function list_sort_block_charp11_15filer
	.p2align	2
	.type	list_sort_block_charp11_15filer,@function
list_sort_block_charp11_15filer:        // @list_sort_block_charp11_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-48]!        // 8-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x19, x1
	mov	x20, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #32             // =32
	str	x20, [x8, #32760]
	add	x8, sp, #16, lsl #12    // =65536
	add	x8, x8, #24             // =24
	add	x9, sp, #8              // =8
	mov	x0, x20
	mov	x1, x19
	str	x19, [sp, #8]
	stp	x8, x9, [x21, #424]
	bl	list_merge_sort2_charp12_15filer
	mov	x19, x0
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x21
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end21:
	.size	list_sort_block_charp11_15filer, .Lfunc_end21-list_sort_block_charp11_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_merge_sort2_charp12_15filer // -- Begin function list_merge_sort2_charp12_15filer
	.p2align	2
	.type	list_merge_sort2_charp12_15filer,@function
list_merge_sort2_charp12_15filer:       // @list_merge_sort2_charp12_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-80]!        // 8-byte Folded Spill
	stp	x24, x23, [sp, #16]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w28, -80
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	sub	x8, x29, #56            // =56
	add	x9, x19, #8             // =8
	stur	x22, [x29, #-56]
	str	x21, [x19, #8]
	stp	x8, x9, [x20, #440]
	ldr	x8, [x22]
	cbz	x8, .LBB22_7
// %bb.1:                               // %cond_end
	ldur	x8, [x29, #-56]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB22_8
// %bb.2:                               // %cond_end8
	adrp	x2, .Lglobal_string.122
	adrp	x3, .Lglobal_string.123
	adrp	x5, .Lglobal_string.124
	adrp	x6, .Lglobal_string.125
	add	x2, x2, :lo12:.Lglobal_string.122
	add	x3, x3, :lo12:.Lglobal_string.123
	add	x5, x5, :lo12:.Lglobal_string.124
	add	x6, x6, :lo12:.Lglobal_string.125
	mov	w0, #1
	mov	w1, #24
	mov	w4, #1401
	bl	debug_xcalloc
	bl	list_initialize_charp21_15filer
	mov	x8, sp
	sub	x23, x8, #16            // =16
	mov	sp, x23
	adrp	x21, gLVTable+456
	adrp	x2, .Lglobal_string.126
	adrp	x3, .Lglobal_string.127
	adrp	x5, .Lglobal_string.128
	adrp	x6, .Lglobal_string.129
	add	x21, x21, :lo12:gLVTable+456
	stur	x0, [x8, #-16]
	add	x2, x2, :lo12:.Lglobal_string.126
	add	x3, x3, :lo12:.Lglobal_string.127
	add	x5, x5, :lo12:.Lglobal_string.128
	add	x6, x6, :lo12:.Lglobal_string.129
	mov	w0, #1
	mov	w1, #24
	mov	w4, #1402
	str	x23, [x21]
	bl	debug_xcalloc
	bl	list_initialize_charp22_15filer
	mov	x8, sp
	sub	x24, x8, #16            // =16
	mov	sp, x24
	ldur	x9, [x29, #-56]
	str	x24, [x21, #8]
	stur	x0, [x8, #-16]
	ldr	x8, [x9]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	mov	sp, x10
	adrp	x22, gLVTable+472
	str	x10, [x21, #16]
	stur	x8, [x9, #-16]
.LBB22_3:                               // %cond_jump_then11
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21, #16]
	ldr	x9, [x21]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp23_15filer
	ldp	x9, x8, [x21, #8]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x8, [x8, #16]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp25_15filer
	ldr	x8, [x21, #16]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB22_6
// %bb.4:                               // %cond_end27
                                        //   in Loop: Header=BB22_3 Depth=1
	ldr	x8, [x22, :lo12:gLVTable+472]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x22, :lo12:gLVTable+472]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB22_3
// %bb.5:                               // %cond_jump_then33
	ldr	x8, [x21, #16]
	ldr	x9, [x21]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp27_15filer
.LBB22_6:                               // %cond_end_block
	ldr	x0, [x23]
	ldr	x1, [x19, #8]
	bl	list_merge_sort2_charp12_15filer
	ldr	x8, [x24]
	ldr	x1, [x19, #8]
	mov	x20, x0
	mov	x0, x8
	bl	list_merge_sort2_charp12_15filer
	ldr	x2, [x19, #8]
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	bl	list_merge_list2_charp33_15filer
	mov	x22, x0
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	bl	list_finalize_charp43_15filer
	mov	x0, x20
	bl	xfree
	mov	x0, x21
	bl	list_finalize_charp45_15filer
	mov	x0, x21
	bl	xfree
	ldr	x20, [x23]
	mov	x0, x20
	bl	list_finalize_charp47_15filer
	mov	x0, x20
	bl	xfree
	ldr	x20, [x24]
	mov	x0, x20
	bl	list_finalize_charp49_15filer
	mov	x0, x20
	bl	xfree
	mov	x0, x22
	b	.LBB22_10
.LBB22_7:                               // %cond_jump_then
	ldr	x8, [x20, #440]
	ldr	x0, [x8]
	bl	list_clone_charp13_15filer
	b	.LBB22_9
.LBB22_8:                               // %cond_jump_then7
	ldr	x8, [x20, #440]
	ldr	x0, [x8]
	bl	list_clone_charp17_15filer
.LBB22_9:                               // %cond_jump_then
	mov	x21, x0
	add	x1, x19, #16            // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	x0, x21
.LBB22_10:                              // %cond_jump_then
	sub	sp, x29, #64            // =64
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #80          // 8-byte Folded Reload
	ret
.Lfunc_end22:
	.size	list_merge_sort2_charp12_15filer, .Lfunc_end22-list_merge_sort2_charp12_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_clone_charp13_15filer // -- Begin function list_clone_charp13_15filer
	.p2align	2
	.type	list_clone_charp13_15filer,@function
list_clone_charp13_15filer:             // @list_clone_charp13_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	adrp	x2, .Lglobal_string.66
	adrp	x3, .Lglobal_string.67
	adrp	x5, .Lglobal_string.68
	adrp	x6, .Lglobal_string.69
	add	x8, sp, #24             // =24
	add	x2, x2, :lo12:.Lglobal_string.66
	add	x3, x3, :lo12:.Lglobal_string.67
	add	x5, x5, :lo12:.Lglobal_string.68
	add	x6, x6, :lo12:.Lglobal_string.69
	mov	w0, #1
	mov	w1, #24
	mov	w4, #654
	str	x19, [sp, #24]
	str	x8, [x20, #480]
	bl	debug_xcalloc
	bl	list_initialize_charp14_15filer
	ldr	x8, [sp, #24]
	add	x9, sp, #16             // =16
	str	x0, [sp, #16]
	str	x9, [x20, #488]
	ldr	x8, [x8]
	add	x9, sp, #8              // =8
	str	x9, [x20, #496]
	adrp	x20, gLVTable+488
	add	x20, x20, :lo12:gLVTable+488
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB23_2
.LBB23_1:                               // %cond_jump_then
                                        // =>This Inner Loop Header: Depth=1
	ldp	x9, x8, [x20]
	ldr	x8, [x8]
	ldr	x19, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x19
	bl	list_push_back_charp15_15filer
	ldr	x8, [x20, #8]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB23_1
.LBB23_2:                               // %cond_end_block
	ldr	x19, [sp, #16]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #32             // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end23:
	.size	list_clone_charp13_15filer, .Lfunc_end23-list_clone_charp13_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp14_15filer // -- Begin function list_initialize_charp14_15filer
	.p2align	2
	.type	list_initialize_charp14_15filer,@function
list_initialize_charp14_15filer:        // @list_initialize_charp14_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #504]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end24:
	.size	list_initialize_charp14_15filer, .Lfunc_end24-list_initialize_charp14_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp15_15filer // -- Begin function list_push_back_charp15_15filer
	.p2align	2
	.type	list_push_back_charp15_15filer,@function
list_push_back_charp15_15filer:         // @list_push_back_charp15_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #504]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB25_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB25_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.74
	adrp	x3, .Lglobal_string.75
	adrp	x5, .Lglobal_string.76
	adrp	x6, .Lglobal_string.77
	add	x2, x2, :lo12:.Lglobal_string.74
	add	x3, x3, :lo12:.Lglobal_string.75
	add	x5, x5, :lo12:.Lglobal_string.76
	add	x6, x6, :lo12:.Lglobal_string.77
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB25_5
.LBB25_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.70
	adrp	x3, .Lglobal_string.71
	adrp	x5, .Lglobal_string.72
	adrp	x6, .Lglobal_string.73
	add	x2, x2, :lo12:.Lglobal_string.70
	add	x3, x3, :lo12:.Lglobal_string.71
	add	x5, x5, :lo12:.Lglobal_string.72
	add	x6, x6, :lo12:.Lglobal_string.73
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB25_5
.LBB25_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.78
	adrp	x3, .Lglobal_string.79
	adrp	x5, .Lglobal_string.80
	adrp	x6, .Lglobal_string.81
	add	x2, x2, :lo12:.Lglobal_string.78
	add	x3, x3, :lo12:.Lglobal_string.79
	add	x5, x5, :lo12:.Lglobal_string.80
	add	x6, x6, :lo12:.Lglobal_string.81
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB25_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end25:
	.size	list_push_back_charp15_15filer, .Lfunc_end25-list_push_back_charp15_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp16_15filer // -- Begin function list_push_back_charp16_15filer
	.p2align	2
	.type	list_push_back_charp16_15filer,@function
list_push_back_charp16_15filer:         // @list_push_back_charp16_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #504]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB26_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB26_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.86
	adrp	x3, .Lglobal_string.87
	adrp	x5, .Lglobal_string.88
	adrp	x6, .Lglobal_string.89
	add	x2, x2, :lo12:.Lglobal_string.86
	add	x3, x3, :lo12:.Lglobal_string.87
	add	x5, x5, :lo12:.Lglobal_string.88
	add	x6, x6, :lo12:.Lglobal_string.89
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB26_5
.LBB26_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.82
	adrp	x3, .Lglobal_string.83
	adrp	x5, .Lglobal_string.84
	adrp	x6, .Lglobal_string.85
	add	x2, x2, :lo12:.Lglobal_string.82
	add	x3, x3, :lo12:.Lglobal_string.83
	add	x5, x5, :lo12:.Lglobal_string.84
	add	x6, x6, :lo12:.Lglobal_string.85
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB26_5
.LBB26_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.90
	adrp	x3, .Lglobal_string.91
	adrp	x5, .Lglobal_string.92
	adrp	x6, .Lglobal_string.93
	add	x2, x2, :lo12:.Lglobal_string.90
	add	x3, x3, :lo12:.Lglobal_string.91
	add	x5, x5, :lo12:.Lglobal_string.92
	add	x6, x6, :lo12:.Lglobal_string.93
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB26_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end26:
	.size	list_push_back_charp16_15filer, .Lfunc_end26-list_push_back_charp16_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_clone_charp17_15filer // -- Begin function list_clone_charp17_15filer
	.p2align	2
	.type	list_clone_charp17_15filer,@function
list_clone_charp17_15filer:             // @list_clone_charp17_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	adrp	x2, .Lglobal_string.94
	adrp	x3, .Lglobal_string.95
	adrp	x5, .Lglobal_string.96
	adrp	x6, .Lglobal_string.97
	add	x8, sp, #24             // =24
	add	x2, x2, :lo12:.Lglobal_string.94
	add	x3, x3, :lo12:.Lglobal_string.95
	add	x5, x5, :lo12:.Lglobal_string.96
	add	x6, x6, :lo12:.Lglobal_string.97
	mov	w0, #1
	mov	w1, #24
	mov	w4, #654
	str	x19, [sp, #24]
	str	x8, [x20, #480]
	bl	debug_xcalloc
	bl	list_initialize_charp18_15filer
	ldr	x8, [sp, #24]
	add	x9, sp, #16             // =16
	str	x0, [sp, #16]
	str	x9, [x20, #488]
	ldr	x8, [x8]
	add	x9, sp, #8              // =8
	str	x9, [x20, #496]
	adrp	x20, gLVTable+488
	add	x20, x20, :lo12:gLVTable+488
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB27_2
.LBB27_1:                               // %cond_jump_then
                                        // =>This Inner Loop Header: Depth=1
	ldp	x9, x8, [x20]
	ldr	x8, [x8]
	ldr	x19, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x19
	bl	list_push_back_charp19_15filer
	ldr	x8, [x20, #8]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB27_1
.LBB27_2:                               // %cond_end_block
	ldr	x19, [sp, #16]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #32             // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end27:
	.size	list_clone_charp17_15filer, .Lfunc_end27-list_clone_charp17_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp18_15filer // -- Begin function list_initialize_charp18_15filer
	.p2align	2
	.type	list_initialize_charp18_15filer,@function
list_initialize_charp18_15filer:        // @list_initialize_charp18_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #504]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end28:
	.size	list_initialize_charp18_15filer, .Lfunc_end28-list_initialize_charp18_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp19_15filer // -- Begin function list_push_back_charp19_15filer
	.p2align	2
	.type	list_push_back_charp19_15filer,@function
list_push_back_charp19_15filer:         // @list_push_back_charp19_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #504]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB29_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB29_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.102
	adrp	x3, .Lglobal_string.103
	adrp	x5, .Lglobal_string.104
	adrp	x6, .Lglobal_string.105
	add	x2, x2, :lo12:.Lglobal_string.102
	add	x3, x3, :lo12:.Lglobal_string.103
	add	x5, x5, :lo12:.Lglobal_string.104
	add	x6, x6, :lo12:.Lglobal_string.105
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB29_5
.LBB29_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.98
	adrp	x3, .Lglobal_string.99
	adrp	x5, .Lglobal_string.100
	adrp	x6, .Lglobal_string.101
	add	x2, x2, :lo12:.Lglobal_string.98
	add	x3, x3, :lo12:.Lglobal_string.99
	add	x5, x5, :lo12:.Lglobal_string.100
	add	x6, x6, :lo12:.Lglobal_string.101
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB29_5
.LBB29_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.106
	adrp	x3, .Lglobal_string.107
	adrp	x5, .Lglobal_string.108
	adrp	x6, .Lglobal_string.109
	add	x2, x2, :lo12:.Lglobal_string.106
	add	x3, x3, :lo12:.Lglobal_string.107
	add	x5, x5, :lo12:.Lglobal_string.108
	add	x6, x6, :lo12:.Lglobal_string.109
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB29_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end29:
	.size	list_push_back_charp19_15filer, .Lfunc_end29-list_push_back_charp19_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp20_15filer // -- Begin function list_push_back_charp20_15filer
	.p2align	2
	.type	list_push_back_charp20_15filer,@function
list_push_back_charp20_15filer:         // @list_push_back_charp20_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #504]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB30_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB30_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.114
	adrp	x3, .Lglobal_string.115
	adrp	x5, .Lglobal_string.116
	adrp	x6, .Lglobal_string.117
	add	x2, x2, :lo12:.Lglobal_string.114
	add	x3, x3, :lo12:.Lglobal_string.115
	add	x5, x5, :lo12:.Lglobal_string.116
	add	x6, x6, :lo12:.Lglobal_string.117
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB30_5
.LBB30_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.110
	adrp	x3, .Lglobal_string.111
	adrp	x5, .Lglobal_string.112
	adrp	x6, .Lglobal_string.113
	add	x2, x2, :lo12:.Lglobal_string.110
	add	x3, x3, :lo12:.Lglobal_string.111
	add	x5, x5, :lo12:.Lglobal_string.112
	add	x6, x6, :lo12:.Lglobal_string.113
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB30_5
.LBB30_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.118
	adrp	x3, .Lglobal_string.119
	adrp	x5, .Lglobal_string.120
	adrp	x6, .Lglobal_string.121
	add	x2, x2, :lo12:.Lglobal_string.118
	add	x3, x3, :lo12:.Lglobal_string.119
	add	x5, x5, :lo12:.Lglobal_string.120
	add	x6, x6, :lo12:.Lglobal_string.121
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+504
	add	x10, x10, :lo12:gLVTable+504
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB30_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end30:
	.size	list_push_back_charp20_15filer, .Lfunc_end30-list_push_back_charp20_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp21_15filer // -- Begin function list_initialize_charp21_15filer
	.p2align	2
	.type	list_initialize_charp21_15filer,@function
list_initialize_charp21_15filer:        // @list_initialize_charp21_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #480]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end31:
	.size	list_initialize_charp21_15filer, .Lfunc_end31-list_initialize_charp21_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp22_15filer // -- Begin function list_initialize_charp22_15filer
	.p2align	2
	.type	list_initialize_charp22_15filer,@function
list_initialize_charp22_15filer:        // @list_initialize_charp22_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #480]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end32:
	.size	list_initialize_charp22_15filer, .Lfunc_end32-list_initialize_charp22_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp23_15filer // -- Begin function list_push_back_charp23_15filer
	.p2align	2
	.type	list_push_back_charp23_15filer,@function
list_push_back_charp23_15filer:         // @list_push_back_charp23_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB33_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB33_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.134
	adrp	x3, .Lglobal_string.135
	adrp	x5, .Lglobal_string.136
	adrp	x6, .Lglobal_string.137
	add	x2, x2, :lo12:.Lglobal_string.134
	add	x3, x3, :lo12:.Lglobal_string.135
	add	x5, x5, :lo12:.Lglobal_string.136
	add	x6, x6, :lo12:.Lglobal_string.137
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB33_5
.LBB33_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.130
	adrp	x3, .Lglobal_string.131
	adrp	x5, .Lglobal_string.132
	adrp	x6, .Lglobal_string.133
	add	x2, x2, :lo12:.Lglobal_string.130
	add	x3, x3, :lo12:.Lglobal_string.131
	add	x5, x5, :lo12:.Lglobal_string.132
	add	x6, x6, :lo12:.Lglobal_string.133
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB33_5
.LBB33_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.138
	adrp	x3, .Lglobal_string.139
	adrp	x5, .Lglobal_string.140
	adrp	x6, .Lglobal_string.141
	add	x2, x2, :lo12:.Lglobal_string.138
	add	x3, x3, :lo12:.Lglobal_string.139
	add	x5, x5, :lo12:.Lglobal_string.140
	add	x6, x6, :lo12:.Lglobal_string.141
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB33_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end33:
	.size	list_push_back_charp23_15filer, .Lfunc_end33-list_push_back_charp23_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp24_15filer // -- Begin function list_push_back_charp24_15filer
	.p2align	2
	.type	list_push_back_charp24_15filer,@function
list_push_back_charp24_15filer:         // @list_push_back_charp24_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB34_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB34_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.146
	adrp	x3, .Lglobal_string.147
	adrp	x5, .Lglobal_string.148
	adrp	x6, .Lglobal_string.149
	add	x2, x2, :lo12:.Lglobal_string.146
	add	x3, x3, :lo12:.Lglobal_string.147
	add	x5, x5, :lo12:.Lglobal_string.148
	add	x6, x6, :lo12:.Lglobal_string.149
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB34_5
.LBB34_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.142
	adrp	x3, .Lglobal_string.143
	adrp	x5, .Lglobal_string.144
	adrp	x6, .Lglobal_string.145
	add	x2, x2, :lo12:.Lglobal_string.142
	add	x3, x3, :lo12:.Lglobal_string.143
	add	x5, x5, :lo12:.Lglobal_string.144
	add	x6, x6, :lo12:.Lglobal_string.145
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB34_5
.LBB34_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.150
	adrp	x3, .Lglobal_string.151
	adrp	x5, .Lglobal_string.152
	adrp	x6, .Lglobal_string.153
	add	x2, x2, :lo12:.Lglobal_string.150
	add	x3, x3, :lo12:.Lglobal_string.151
	add	x5, x5, :lo12:.Lglobal_string.152
	add	x6, x6, :lo12:.Lglobal_string.153
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB34_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end34:
	.size	list_push_back_charp24_15filer, .Lfunc_end34-list_push_back_charp24_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp25_15filer // -- Begin function list_push_back_charp25_15filer
	.p2align	2
	.type	list_push_back_charp25_15filer,@function
list_push_back_charp25_15filer:         // @list_push_back_charp25_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB35_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB35_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.158
	adrp	x3, .Lglobal_string.159
	adrp	x5, .Lglobal_string.160
	adrp	x6, .Lglobal_string.161
	add	x2, x2, :lo12:.Lglobal_string.158
	add	x3, x3, :lo12:.Lglobal_string.159
	add	x5, x5, :lo12:.Lglobal_string.160
	add	x6, x6, :lo12:.Lglobal_string.161
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB35_5
.LBB35_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.154
	adrp	x3, .Lglobal_string.155
	adrp	x5, .Lglobal_string.156
	adrp	x6, .Lglobal_string.157
	add	x2, x2, :lo12:.Lglobal_string.154
	add	x3, x3, :lo12:.Lglobal_string.155
	add	x5, x5, :lo12:.Lglobal_string.156
	add	x6, x6, :lo12:.Lglobal_string.157
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB35_5
.LBB35_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.162
	adrp	x3, .Lglobal_string.163
	adrp	x5, .Lglobal_string.164
	adrp	x6, .Lglobal_string.165
	add	x2, x2, :lo12:.Lglobal_string.162
	add	x3, x3, :lo12:.Lglobal_string.163
	add	x5, x5, :lo12:.Lglobal_string.164
	add	x6, x6, :lo12:.Lglobal_string.165
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB35_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end35:
	.size	list_push_back_charp25_15filer, .Lfunc_end35-list_push_back_charp25_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp26_15filer // -- Begin function list_push_back_charp26_15filer
	.p2align	2
	.type	list_push_back_charp26_15filer,@function
list_push_back_charp26_15filer:         // @list_push_back_charp26_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB36_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB36_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.170
	adrp	x3, .Lglobal_string.171
	adrp	x5, .Lglobal_string.172
	adrp	x6, .Lglobal_string.173
	add	x2, x2, :lo12:.Lglobal_string.170
	add	x3, x3, :lo12:.Lglobal_string.171
	add	x5, x5, :lo12:.Lglobal_string.172
	add	x6, x6, :lo12:.Lglobal_string.173
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB36_5
.LBB36_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.166
	adrp	x3, .Lglobal_string.167
	adrp	x5, .Lglobal_string.168
	adrp	x6, .Lglobal_string.169
	add	x2, x2, :lo12:.Lglobal_string.166
	add	x3, x3, :lo12:.Lglobal_string.167
	add	x5, x5, :lo12:.Lglobal_string.168
	add	x6, x6, :lo12:.Lglobal_string.169
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB36_5
.LBB36_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.174
	adrp	x3, .Lglobal_string.175
	adrp	x5, .Lglobal_string.176
	adrp	x6, .Lglobal_string.177
	add	x2, x2, :lo12:.Lglobal_string.174
	add	x3, x3, :lo12:.Lglobal_string.175
	add	x5, x5, :lo12:.Lglobal_string.176
	add	x6, x6, :lo12:.Lglobal_string.177
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB36_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end36:
	.size	list_push_back_charp26_15filer, .Lfunc_end36-list_push_back_charp26_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp27_15filer // -- Begin function list_push_back_charp27_15filer
	.p2align	2
	.type	list_push_back_charp27_15filer,@function
list_push_back_charp27_15filer:         // @list_push_back_charp27_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB37_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB37_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.182
	adrp	x3, .Lglobal_string.183
	adrp	x5, .Lglobal_string.184
	adrp	x6, .Lglobal_string.185
	add	x2, x2, :lo12:.Lglobal_string.182
	add	x3, x3, :lo12:.Lglobal_string.183
	add	x5, x5, :lo12:.Lglobal_string.184
	add	x6, x6, :lo12:.Lglobal_string.185
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB37_5
.LBB37_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.178
	adrp	x3, .Lglobal_string.179
	adrp	x5, .Lglobal_string.180
	adrp	x6, .Lglobal_string.181
	add	x2, x2, :lo12:.Lglobal_string.178
	add	x3, x3, :lo12:.Lglobal_string.179
	add	x5, x5, :lo12:.Lglobal_string.180
	add	x6, x6, :lo12:.Lglobal_string.181
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB37_5
.LBB37_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.186
	adrp	x3, .Lglobal_string.187
	adrp	x5, .Lglobal_string.188
	adrp	x6, .Lglobal_string.189
	add	x2, x2, :lo12:.Lglobal_string.186
	add	x3, x3, :lo12:.Lglobal_string.187
	add	x5, x5, :lo12:.Lglobal_string.188
	add	x6, x6, :lo12:.Lglobal_string.189
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB37_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end37:
	.size	list_push_back_charp27_15filer, .Lfunc_end37-list_push_back_charp27_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp28_15filer // -- Begin function list_push_back_charp28_15filer
	.p2align	2
	.type	list_push_back_charp28_15filer,@function
list_push_back_charp28_15filer:         // @list_push_back_charp28_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB38_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB38_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.194
	adrp	x3, .Lglobal_string.195
	adrp	x5, .Lglobal_string.196
	adrp	x6, .Lglobal_string.197
	add	x2, x2, :lo12:.Lglobal_string.194
	add	x3, x3, :lo12:.Lglobal_string.195
	add	x5, x5, :lo12:.Lglobal_string.196
	add	x6, x6, :lo12:.Lglobal_string.197
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB38_5
.LBB38_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.190
	adrp	x3, .Lglobal_string.191
	adrp	x5, .Lglobal_string.192
	adrp	x6, .Lglobal_string.193
	add	x2, x2, :lo12:.Lglobal_string.190
	add	x3, x3, :lo12:.Lglobal_string.191
	add	x5, x5, :lo12:.Lglobal_string.192
	add	x6, x6, :lo12:.Lglobal_string.193
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB38_5
.LBB38_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.198
	adrp	x3, .Lglobal_string.199
	adrp	x5, .Lglobal_string.200
	adrp	x6, .Lglobal_string.201
	add	x2, x2, :lo12:.Lglobal_string.198
	add	x3, x3, :lo12:.Lglobal_string.199
	add	x5, x5, :lo12:.Lglobal_string.200
	add	x6, x6, :lo12:.Lglobal_string.201
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB38_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end38:
	.size	list_push_back_charp28_15filer, .Lfunc_end38-list_push_back_charp28_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_merge_list2_charp33_15filer // -- Begin function list_merge_list2_charp33_15filer
	.p2align	2
	.type	list_merge_list2_charp33_15filer,@function
list_merge_list2_charp33_15filer:       // @list_merge_list2_charp33_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x25, [sp, #-80]!   // 16-byte Folded Spill
	stp	x24, x23, [sp, #16]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #48             // =48
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w28, -80
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	x20, x2
	mov	x21, x1
	mov	x22, x0
	add	x0, x19, #48            // =48
	mov	w2, #65536
	mov	x1, x23
	bl	xmemcpy
	adrp	x2, .Lglobal_string.202
	adrp	x3, .Lglobal_string.203
	adrp	x5, .Lglobal_string.204
	adrp	x6, .Lglobal_string.205
	add	x8, x19, #40            // =40
	add	x9, x19, #32            // =32
	add	x10, x19, #24           // =24
	add	x2, x2, :lo12:.Lglobal_string.202
	add	x3, x3, :lo12:.Lglobal_string.203
	add	x5, x5, :lo12:.Lglobal_string.204
	add	x6, x6, :lo12:.Lglobal_string.205
	mov	w0, #1
	mov	w1, #24
	mov	w4, #1322
	stp	x21, x22, [x19, #32]
	str	x20, [x19, #24]
	stp	x8, x9, [x23, #480]
	str	x10, [x23, #496]
	bl	debug_xcalloc
	bl	list_initialize_charp34_15filer
	ldp	x11, x9, [x19, #32]
	add	x8, x19, #16            // =16
	str	x0, [x19, #16]
	str	x8, [x23, #504]
	ldr	x8, [x9]
	add	x10, x19, #8            // =8
	str	x10, [x23, #512]
	add	x9, x19, #0             // =0
	str	x8, [x19, #8]
	ldr	x8, [x11]
	str	x9, [x23, #520]
	adrp	x23, gLVTable+512
	adrp	x24, gLVTable+520
	adrp	x25, gLVTable+496
	adrp	x21, gLVTable+512
	adrp	x22, gLVTable+520
	add	x23, x23, :lo12:gLVTable+512
	add	x24, x24, :lo12:gLVTable+520
	add	x25, x25, :lo12:gLVTable+496
	str	x8, [x19]
.LBB39_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x10, sp
	sub	x8, x10, #16            // =16
	mov	sp, x8
	ldr	x9, [x21, :lo12:gLVTable+512]
	ldr	x11, [x9]
	cmp	x11, #0                 // =0
	cset	w9, ne
	sturb	w9, [x10, #-16]
	cbz	x11, .LBB39_3
// %bb.2:                               // %cond_jump_then
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x10, [x22, :lo12:gLVTable+520]
	ldr	x10, [x10]
	cmp	x10, #0                 // =0
	cset	w10, ne
	and	w9, w9, w10
	strb	w9, [x8]
.LBB39_3:                               // %cond_jump_end
                                        //   in Loop: Header=BB39_1 Depth=1
	ldrb	w8, [x8]
	cmp	w8, #1                  // =1
	b.ne	.LBB39_12
// %bb.4:                               // %cond_jump_then8
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x8, [x23]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, .LBB39_8
// %bb.5:                               // %"cond_jump_elif0\0A"
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x8, [x24]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, .LBB39_10
// %bb.6:                               // %"cond_jump_elif1\0A"
                                        //   in Loop: Header=BB39_1 Depth=1
	ldp	x8, x9, [x25, #16]
	ldr	x10, [x25]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	x10, [x10]
	ldr	x0, [x8]
	ldr	x1, [x9]
	blr	x10
	ldr	x8, [x25, #8]
	cmp	w0, #1                  // =1
	ldr	x20, [x8]
	b.ge	.LBB39_9
// %bb.7:                               // %cond_jump_then19
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x8, [x23]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp35_15filer
.LBB39_8:                               //   in Loop: Header=BB39_1 Depth=1
	mov	x8, x23
	b	.LBB39_11
.LBB39_9:                               // %cond_jump_then27
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x8, [x24]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp37_15filer
.LBB39_10:                              //   in Loop: Header=BB39_1 Depth=1
	mov	x8, x24
.LBB39_11:                              // %cond_end11
                                        //   in Loop: Header=BB39_1 Depth=1
	ldr	x8, [x8]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
.LBB39_12:                              // %cond_end
                                        //   in Loop: Header=BB39_1 Depth=1
	ldp	x8, x9, [x23]
	ldr	x10, [x8]
	ldr	x8, [x9]
	cbz	x10, .LBB39_18
// %bb.13:                              // %"cond_jump_elif0\0A38"
                                        //   in Loop: Header=BB39_1 Depth=1
	cbnz	x8, .LBB39_1
// %bb.14:                              // %"cond_jump_elif_then0\0A39"
	ldr	x8, [x21, :lo12:gLVTable+512]
	ldr	x8, [x8]
	cbz	x8, .LBB39_22
// %bb.15:
	adrp	x22, gLVTable+504
	add	x22, x22, :lo12:gLVTable+504
.LBB39_16:                              // %loop_top_block63
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21, :lo12:gLVTable+512]
	ldr	x8, [x8]
	cbz	x8, .LBB39_22
// %bb.17:                              // %cond_jump_then68
                                        //   in Loop: Header=BB39_16 Depth=1
	ldp	x9, x8, [x22]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp41_15filer
	ldr	x8, [x22, #8]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	b	.LBB39_16
.LBB39_18:                              // %cond_jump_then37
	cbz	x8, .LBB39_22
// %bb.19:
	adrp	x21, gLVTable+504
	add	x21, x21, :lo12:gLVTable+504
.LBB39_20:                              // %loop_top_block44
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x22, :lo12:gLVTable+520]
	ldr	x8, [x8]
	cbz	x8, .LBB39_22
// %bb.21:                              // %cond_jump_then49
                                        //   in Loop: Header=BB39_20 Depth=1
	ldr	x8, [x21, #16]
	ldr	x9, [x21]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp39_15filer
	ldr	x8, [x21, #16]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	b	.LBB39_20
.LBB39_22:                              // %cond_end_block
	ldr	x20, [x19, #16]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #48            // =48
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	sub	sp, x29, #64            // =64
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x25, [sp], #80     // 16-byte Folded Reload
	ret
.Lfunc_end39:
	.size	list_merge_list2_charp33_15filer, .Lfunc_end39-list_merge_list2_charp33_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp34_15filer // -- Begin function list_initialize_charp34_15filer
	.p2align	2
	.type	list_initialize_charp34_15filer,@function
list_initialize_charp34_15filer:        // @list_initialize_charp34_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #528]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end40:
	.size	list_initialize_charp34_15filer, .Lfunc_end40-list_initialize_charp34_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp35_15filer // -- Begin function list_push_back_charp35_15filer
	.p2align	2
	.type	list_push_back_charp35_15filer,@function
list_push_back_charp35_15filer:         // @list_push_back_charp35_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB41_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB41_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.210
	adrp	x3, .Lglobal_string.211
	adrp	x5, .Lglobal_string.212
	adrp	x6, .Lglobal_string.213
	add	x2, x2, :lo12:.Lglobal_string.210
	add	x3, x3, :lo12:.Lglobal_string.211
	add	x5, x5, :lo12:.Lglobal_string.212
	add	x6, x6, :lo12:.Lglobal_string.213
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB41_5
.LBB41_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.206
	adrp	x3, .Lglobal_string.207
	adrp	x5, .Lglobal_string.208
	adrp	x6, .Lglobal_string.209
	add	x2, x2, :lo12:.Lglobal_string.206
	add	x3, x3, :lo12:.Lglobal_string.207
	add	x5, x5, :lo12:.Lglobal_string.208
	add	x6, x6, :lo12:.Lglobal_string.209
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB41_5
.LBB41_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.214
	adrp	x3, .Lglobal_string.215
	adrp	x5, .Lglobal_string.216
	adrp	x6, .Lglobal_string.217
	add	x2, x2, :lo12:.Lglobal_string.214
	add	x3, x3, :lo12:.Lglobal_string.215
	add	x5, x5, :lo12:.Lglobal_string.216
	add	x6, x6, :lo12:.Lglobal_string.217
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB41_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end41:
	.size	list_push_back_charp35_15filer, .Lfunc_end41-list_push_back_charp35_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp36_15filer // -- Begin function list_push_back_charp36_15filer
	.p2align	2
	.type	list_push_back_charp36_15filer,@function
list_push_back_charp36_15filer:         // @list_push_back_charp36_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB42_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB42_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.222
	adrp	x3, .Lglobal_string.223
	adrp	x5, .Lglobal_string.224
	adrp	x6, .Lglobal_string.225
	add	x2, x2, :lo12:.Lglobal_string.222
	add	x3, x3, :lo12:.Lglobal_string.223
	add	x5, x5, :lo12:.Lglobal_string.224
	add	x6, x6, :lo12:.Lglobal_string.225
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB42_5
.LBB42_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.218
	adrp	x3, .Lglobal_string.219
	adrp	x5, .Lglobal_string.220
	adrp	x6, .Lglobal_string.221
	add	x2, x2, :lo12:.Lglobal_string.218
	add	x3, x3, :lo12:.Lglobal_string.219
	add	x5, x5, :lo12:.Lglobal_string.220
	add	x6, x6, :lo12:.Lglobal_string.221
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB42_5
.LBB42_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.226
	adrp	x3, .Lglobal_string.227
	adrp	x5, .Lglobal_string.228
	adrp	x6, .Lglobal_string.229
	add	x2, x2, :lo12:.Lglobal_string.226
	add	x3, x3, :lo12:.Lglobal_string.227
	add	x5, x5, :lo12:.Lglobal_string.228
	add	x6, x6, :lo12:.Lglobal_string.229
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB42_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end42:
	.size	list_push_back_charp36_15filer, .Lfunc_end42-list_push_back_charp36_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp37_15filer // -- Begin function list_push_back_charp37_15filer
	.p2align	2
	.type	list_push_back_charp37_15filer,@function
list_push_back_charp37_15filer:         // @list_push_back_charp37_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB43_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB43_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.234
	adrp	x3, .Lglobal_string.235
	adrp	x5, .Lglobal_string.236
	adrp	x6, .Lglobal_string.237
	add	x2, x2, :lo12:.Lglobal_string.234
	add	x3, x3, :lo12:.Lglobal_string.235
	add	x5, x5, :lo12:.Lglobal_string.236
	add	x6, x6, :lo12:.Lglobal_string.237
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB43_5
.LBB43_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.230
	adrp	x3, .Lglobal_string.231
	adrp	x5, .Lglobal_string.232
	adrp	x6, .Lglobal_string.233
	add	x2, x2, :lo12:.Lglobal_string.230
	add	x3, x3, :lo12:.Lglobal_string.231
	add	x5, x5, :lo12:.Lglobal_string.232
	add	x6, x6, :lo12:.Lglobal_string.233
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB43_5
.LBB43_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.238
	adrp	x3, .Lglobal_string.239
	adrp	x5, .Lglobal_string.240
	adrp	x6, .Lglobal_string.241
	add	x2, x2, :lo12:.Lglobal_string.238
	add	x3, x3, :lo12:.Lglobal_string.239
	add	x5, x5, :lo12:.Lglobal_string.240
	add	x6, x6, :lo12:.Lglobal_string.241
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB43_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end43:
	.size	list_push_back_charp37_15filer, .Lfunc_end43-list_push_back_charp37_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp38_15filer // -- Begin function list_push_back_charp38_15filer
	.p2align	2
	.type	list_push_back_charp38_15filer,@function
list_push_back_charp38_15filer:         // @list_push_back_charp38_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB44_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB44_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.246
	adrp	x3, .Lglobal_string.247
	adrp	x5, .Lglobal_string.248
	adrp	x6, .Lglobal_string.249
	add	x2, x2, :lo12:.Lglobal_string.246
	add	x3, x3, :lo12:.Lglobal_string.247
	add	x5, x5, :lo12:.Lglobal_string.248
	add	x6, x6, :lo12:.Lglobal_string.249
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB44_5
.LBB44_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.242
	adrp	x3, .Lglobal_string.243
	adrp	x5, .Lglobal_string.244
	adrp	x6, .Lglobal_string.245
	add	x2, x2, :lo12:.Lglobal_string.242
	add	x3, x3, :lo12:.Lglobal_string.243
	add	x5, x5, :lo12:.Lglobal_string.244
	add	x6, x6, :lo12:.Lglobal_string.245
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB44_5
.LBB44_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.250
	adrp	x3, .Lglobal_string.251
	adrp	x5, .Lglobal_string.252
	adrp	x6, .Lglobal_string.253
	add	x2, x2, :lo12:.Lglobal_string.250
	add	x3, x3, :lo12:.Lglobal_string.251
	add	x5, x5, :lo12:.Lglobal_string.252
	add	x6, x6, :lo12:.Lglobal_string.253
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB44_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end44:
	.size	list_push_back_charp38_15filer, .Lfunc_end44-list_push_back_charp38_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp39_15filer // -- Begin function list_push_back_charp39_15filer
	.p2align	2
	.type	list_push_back_charp39_15filer,@function
list_push_back_charp39_15filer:         // @list_push_back_charp39_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB45_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB45_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.258
	adrp	x3, .Lglobal_string.259
	adrp	x5, .Lglobal_string.260
	adrp	x6, .Lglobal_string.261
	add	x2, x2, :lo12:.Lglobal_string.258
	add	x3, x3, :lo12:.Lglobal_string.259
	add	x5, x5, :lo12:.Lglobal_string.260
	add	x6, x6, :lo12:.Lglobal_string.261
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB45_5
.LBB45_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.254
	adrp	x3, .Lglobal_string.255
	adrp	x5, .Lglobal_string.256
	adrp	x6, .Lglobal_string.257
	add	x2, x2, :lo12:.Lglobal_string.254
	add	x3, x3, :lo12:.Lglobal_string.255
	add	x5, x5, :lo12:.Lglobal_string.256
	add	x6, x6, :lo12:.Lglobal_string.257
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB45_5
.LBB45_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.262
	adrp	x3, .Lglobal_string.263
	adrp	x5, .Lglobal_string.264
	adrp	x6, .Lglobal_string.265
	add	x2, x2, :lo12:.Lglobal_string.262
	add	x3, x3, :lo12:.Lglobal_string.263
	add	x5, x5, :lo12:.Lglobal_string.264
	add	x6, x6, :lo12:.Lglobal_string.265
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB45_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end45:
	.size	list_push_back_charp39_15filer, .Lfunc_end45-list_push_back_charp39_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp40_15filer // -- Begin function list_push_back_charp40_15filer
	.p2align	2
	.type	list_push_back_charp40_15filer,@function
list_push_back_charp40_15filer:         // @list_push_back_charp40_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB46_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB46_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.270
	adrp	x3, .Lglobal_string.271
	adrp	x5, .Lglobal_string.272
	adrp	x6, .Lglobal_string.273
	add	x2, x2, :lo12:.Lglobal_string.270
	add	x3, x3, :lo12:.Lglobal_string.271
	add	x5, x5, :lo12:.Lglobal_string.272
	add	x6, x6, :lo12:.Lglobal_string.273
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB46_5
.LBB46_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.266
	adrp	x3, .Lglobal_string.267
	adrp	x5, .Lglobal_string.268
	adrp	x6, .Lglobal_string.269
	add	x2, x2, :lo12:.Lglobal_string.266
	add	x3, x3, :lo12:.Lglobal_string.267
	add	x5, x5, :lo12:.Lglobal_string.268
	add	x6, x6, :lo12:.Lglobal_string.269
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB46_5
.LBB46_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.274
	adrp	x3, .Lglobal_string.275
	adrp	x5, .Lglobal_string.276
	adrp	x6, .Lglobal_string.277
	add	x2, x2, :lo12:.Lglobal_string.274
	add	x3, x3, :lo12:.Lglobal_string.275
	add	x5, x5, :lo12:.Lglobal_string.276
	add	x6, x6, :lo12:.Lglobal_string.277
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB46_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end46:
	.size	list_push_back_charp40_15filer, .Lfunc_end46-list_push_back_charp40_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp41_15filer // -- Begin function list_push_back_charp41_15filer
	.p2align	2
	.type	list_push_back_charp41_15filer,@function
list_push_back_charp41_15filer:         // @list_push_back_charp41_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB47_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB47_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.282
	adrp	x3, .Lglobal_string.283
	adrp	x5, .Lglobal_string.284
	adrp	x6, .Lglobal_string.285
	add	x2, x2, :lo12:.Lglobal_string.282
	add	x3, x3, :lo12:.Lglobal_string.283
	add	x5, x5, :lo12:.Lglobal_string.284
	add	x6, x6, :lo12:.Lglobal_string.285
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB47_5
.LBB47_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.278
	adrp	x3, .Lglobal_string.279
	adrp	x5, .Lglobal_string.280
	adrp	x6, .Lglobal_string.281
	add	x2, x2, :lo12:.Lglobal_string.278
	add	x3, x3, :lo12:.Lglobal_string.279
	add	x5, x5, :lo12:.Lglobal_string.280
	add	x6, x6, :lo12:.Lglobal_string.281
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB47_5
.LBB47_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.286
	adrp	x3, .Lglobal_string.287
	adrp	x5, .Lglobal_string.288
	adrp	x6, .Lglobal_string.289
	add	x2, x2, :lo12:.Lglobal_string.286
	add	x3, x3, :lo12:.Lglobal_string.287
	add	x5, x5, :lo12:.Lglobal_string.288
	add	x6, x6, :lo12:.Lglobal_string.289
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB47_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end47:
	.size	list_push_back_charp41_15filer, .Lfunc_end47-list_push_back_charp41_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp42_15filer // -- Begin function list_push_back_charp42_15filer
	.p2align	2
	.type	list_push_back_charp42_15filer,@function
list_push_back_charp42_15filer:         // @list_push_back_charp42_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	str	x8, [x22, #528]
	str	x9, [x22, #536]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB48_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB48_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.294
	adrp	x3, .Lglobal_string.295
	adrp	x5, .Lglobal_string.296
	adrp	x6, .Lglobal_string.297
	add	x2, x2, :lo12:.Lglobal_string.294
	add	x3, x3, :lo12:.Lglobal_string.295
	add	x5, x5, :lo12:.Lglobal_string.296
	add	x6, x6, :lo12:.Lglobal_string.297
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB48_5
.LBB48_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.290
	adrp	x3, .Lglobal_string.291
	adrp	x5, .Lglobal_string.292
	adrp	x6, .Lglobal_string.293
	add	x2, x2, :lo12:.Lglobal_string.290
	add	x3, x3, :lo12:.Lglobal_string.291
	add	x5, x5, :lo12:.Lglobal_string.292
	add	x6, x6, :lo12:.Lglobal_string.293
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB48_5
.LBB48_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.298
	adrp	x3, .Lglobal_string.299
	adrp	x5, .Lglobal_string.300
	adrp	x6, .Lglobal_string.301
	add	x2, x2, :lo12:.Lglobal_string.298
	add	x3, x3, :lo12:.Lglobal_string.299
	add	x5, x5, :lo12:.Lglobal_string.300
	add	x6, x6, :lo12:.Lglobal_string.301
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+528
	add	x10, x10, :lo12:gLVTable+528
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB48_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end48:
	.size	list_push_back_charp42_15filer, .Lfunc_end48-list_push_back_charp42_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp43_15filer // -- Begin function list_finalize_charp43_15filer
	.p2align	2
	.type	list_finalize_charp43_15filer,@function
list_finalize_charp43_15filer:          // @list_finalize_charp43_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #480]
	cbz	x20, .LBB49_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+488
	adrp	x10, gLVTable+488
	add	x21, x21, :lo12:gLVTable+488
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+488]
	ldr	x8, [x20]
	cbz	x8, .LBB49_3
.LBB49_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB49_2
.LBB49_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end49:
	.size	list_finalize_charp43_15filer, .Lfunc_end49-list_finalize_charp43_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp45_15filer // -- Begin function list_finalize_charp45_15filer
	.p2align	2
	.type	list_finalize_charp45_15filer,@function
list_finalize_charp45_15filer:          // @list_finalize_charp45_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #480]
	cbz	x20, .LBB50_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+488
	adrp	x10, gLVTable+488
	add	x21, x21, :lo12:gLVTable+488
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+488]
	ldr	x8, [x20]
	cbz	x8, .LBB50_3
.LBB50_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB50_2
.LBB50_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end50:
	.size	list_finalize_charp45_15filer, .Lfunc_end50-list_finalize_charp45_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp47_15filer // -- Begin function list_finalize_charp47_15filer
	.p2align	2
	.type	list_finalize_charp47_15filer,@function
list_finalize_charp47_15filer:          // @list_finalize_charp47_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #480]
	cbz	x20, .LBB51_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+488
	adrp	x10, gLVTable+488
	add	x21, x21, :lo12:gLVTable+488
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+488]
	ldr	x8, [x20]
	cbz	x8, .LBB51_3
.LBB51_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB51_2
.LBB51_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end51:
	.size	list_finalize_charp47_15filer, .Lfunc_end51-list_finalize_charp47_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp49_15filer // -- Begin function list_finalize_charp49_15filer
	.p2align	2
	.type	list_finalize_charp49_15filer,@function
list_finalize_charp49_15filer:          // @list_finalize_charp49_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #480]
	cbz	x20, .LBB52_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+488
	adrp	x10, gLVTable+488
	add	x21, x21, :lo12:gLVTable+488
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+488]
	ldr	x8, [x20]
	cbz	x8, .LBB52_3
.LBB52_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB52_2
.LBB52_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end52:
	.size	list_finalize_charp49_15filer, .Lfunc_end52-list_finalize_charp49_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp51_15filer // -- Begin function list_finalize_charp51_15filer
	.p2align	2
	.type	list_finalize_charp51_15filer,@function
list_finalize_charp51_15filer:          // @list_finalize_charp51_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #424]
	cbz	x20, .LBB53_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+432
	adrp	x10, gLVTable+432
	add	x21, x21, :lo12:gLVTable+432
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+432]
	ldr	x8, [x20]
	cbz	x8, .LBB53_3
.LBB53_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB53_2
.LBB53_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end53:
	.size	list_finalize_charp51_15filer, .Lfunc_end53-list_finalize_charp51_15filer
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_initialize      // -- Begin function ViFiler_initialize
	.p2align	2
	.type	ViFiler_initialize,@function
ViFiler_initialize:                     // @ViFiler_initialize
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #17, lsl #12    // =69632
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 69696
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x19, gLVTable
	mov	x20, x0
	add	x19, x19, :lo12:gLVTable
	add	x0, sp, #1, lsl #12     // =4096
	add	x0, x0, #32             // =32
	mov	w2, #65536
	mov	x1, x19
	bl	xmemcpy
	add	x8, sp, #1, lsl #12     // =4096
	add	x8, x8, #24             // =24
	str	x20, [sp, #4120]
	str	x8, [x19, #400]
	bl	xgetmaxy
	add	x8, sp, #1, lsl #12     // =4096
	add	x8, x8, #20             // =20
	str	x8, [x19, #408]
	str	w0, [sp, #4116]
	bl	xgetmaxx
	mov	w10, #26215
	ldr	w8, [sp, #4116]
	movk	w10, #26214, lsl #16
	ldr	x20, [sp, #4120]
	smull	x10, w0, w10
	add	x9, sp, #1, lsl #12     // =4096
	add	x11, sp, #1, lsl #12    // =4096
	lsr	x12, x10, #32
	lsr	x10, x10, #63
	add	x9, x9, #16             // =16
	str	w0, [sp, #4112]
	add	x11, x11, #12           // =12
	add	w1, w10, w12, asr #1
	mov	w0, w8
	mov	w2, wzr
	mov	w3, wzr
	stp	x9, x11, [x19, #416]
	str	w1, [sp, #4108]
	bl	newwin
	str	x0, [x20, #16]
	ldr	x8, [sp, #4120]
	mov	w1, #1
	ldr	x0, [x8, #16]
	bl	keypad
	ldr	x8, [sp, #4120]
	add	x10, sp, #1, lsl #12    // =4096
	mov	x11, sp
	mov	x0, sp
	strb	wzr, [x8, #36]
	ldr	x8, [sp, #4120]
	mov	w1, #4096
	str	wzr, [x8, #24]
	ldr	x8, [sp, #4120]
	str	wzr, [x8, #28]
	ldr	x8, [sp, #4120]
	ldr	w9, [sp, #4108]
	str	w9, [x8, #32]
	str	x10, [x19, #432]
	str	x11, [sp, #4096]
	bl	getcwd
	ldr	x0, [sp, #4120]
	ldr	x1, [sp, #4096]
	bl	ViFiler_cd
	ldr	x20, [sp, #4120]
	add	x1, sp, #1, lsl #12     // =4096
	add	x1, x1, #32             // =32
	mov	w2, #65536
	mov	x0, x19
	bl	xmemcpy
	mov	x0, x20
	add	sp, sp, #17, lsl #12    // =69632
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end54:
	.size	ViFiler_initialize, .Lfunc_end54-ViFiler_initialize
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_finalize        // -- Begin function ViFiler_finalize
	.p2align	2
	.type	ViFiler_finalize,@function
ViFiler_finalize:                       // @ViFiler_finalize
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #400]
	cbz	x19, .LBB55_2
// %bb.1:                               // %cond_end
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	delwin
.LBB55_2:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #16             // =16
	mov	w2, #65536
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end55:
	.size	ViFiler_finalize, .Lfunc_end55-ViFiler_finalize
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_view            // -- Begin function ViFiler_view
	.p2align	2
	.type	ViFiler_view,@function
ViFiler_view:                           // @ViFiler_view
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-48]!        // 8-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65600
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x19, x1
	mov	x20, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #32             // =32
	str	x20, [x8, #32760]
	add	x8, sp, #16, lsl #12    // =65536
	add	x8, x8, #24             // =24
	add	x9, sp, #8              // =8
	str	x19, [sp, #8]
	stp	x8, x9, [x21, #400]
	bl	xgetmaxy
	add	x8, sp, #8, lsl #12     // =32768
	add	x8, x8, #32             // =32
	ldr	x8, [x8, #32760]
	add	x9, sp, #4              // =4
	str	x9, [x21, #416]
	str	w0, [sp, #4]
	ldr	w1, [x8, #24]
	ldr	x8, [x8, #8]
	add	w9, w1, w0
	add	w2, w9, #1              // =1
	mov	x0, x8
	bl	list_sublist_charp53_15filer
	adrp	x1, 15filer_lambda2
	add	x1, x1, :lo12:15filer_lambda2
	mov	x19, x0
	bl	list_each_charp57_15filer
	mov	x0, x19
	bl	list_finalize_charp58_15filer
	mov	x0, x19
	bl	xfree
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x21
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end56:
	.size	ViFiler_view, .Lfunc_end56-ViFiler_view
	.cfi_endproc
                                        // -- End function
	.globl	list_sublist_charp53_15filer // -- Begin function list_sublist_charp53_15filer
	.p2align	2
	.type	list_sublist_charp53_15filer,@function
list_sublist_charp53_15filer:           // @list_sublist_charp53_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x25, [sp, #-80]!   // 16-byte Folded Spill
	stp	x24, x23, [sp, #16]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w28, -80
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	w20, w2
	mov	w21, w1
	mov	x22, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x23
	bl	xmemcpy
	adrp	x2, .Lglobal_string.302
	adrp	x3, .Lglobal_string.303
	adrp	x5, .Lglobal_string.304
	adrp	x6, .Lglobal_string.305
	add	x8, x19, #24            // =24
	add	x9, x19, #20            // =20
	add	x10, x19, #16           // =16
	add	x2, x2, :lo12:.Lglobal_string.302
	add	x3, x3, :lo12:.Lglobal_string.303
	add	x5, x5, :lo12:.Lglobal_string.304
	add	x6, x6, :lo12:.Lglobal_string.305
	mov	w0, #1
	mov	w1, #24
	mov	w4, #1126
	str	x22, [x19, #24]
	stp	w20, w21, [x19, #16]
	stp	x8, x9, [x23, #424]
	str	x10, [x23, #440]
	bl	debug_xcalloc
	bl	list_initialize_charp54_15filer
	ldr	w8, [x19, #20]
	add	x9, x19, #8             // =8
	str	x9, [x23, #448]
	str	x0, [x19, #8]
	tbnz	w8, #31, .LBB57_12
// %bb.1:                               // %cond_end
	ldr	w8, [x19, #16]
	tbnz	w8, #31, .LBB57_13
.LBB57_2:                               // %cond_end11
	ldr	w8, [x19, #20]
	tbnz	w8, #31, .LBB57_14
.LBB57_3:                               // %cond_end22
	ldr	x8, [x19, #24]
	ldr	w9, [x19, #16]
	ldr	w8, [x8, #16]
	cmp	w9, w8
	b.lt	.LBB57_5
// %bb.4:                               // %cond_jump_then25
	adrp	x8, gLVTable+424
	add	x8, x8, :lo12:gLVTable+424
	ldr	x9, [x8]
	ldr	x8, [x8, #16]
	ldr	x9, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8]
.LBB57_5:                               // %cond_end26
	ldr	x8, [x19, #24]
	mov	x9, sp
	sub	x21, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x21
	adrp	x22, gLVTable+456
	stur	x8, [x9, #-16]
	mov	x8, sp
	add	x22, x22, :lo12:gLVTable+456
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x23, gLVTable+432
	adrp	x24, gLVTable+440
	adrp	x25, gLVTable+448
	add	x23, x23, :lo12:gLVTable+432
	add	x24, x24, :lo12:gLVTable+440
	add	x25, x25, :lo12:gLVTable+448
	stp	x21, x9, [x22]
	stur	wzr, [x8, #-16]
	ldr	x8, [x21]
	cbnz	x8, .LBB57_7
	b	.LBB57_11
.LBB57_6:                               // %cond_end38
                                        //   in Loop: Header=BB57_7 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x22, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x21]
	cbz	x8, .LBB57_11
.LBB57_7:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x10, sp
	sub	x8, x10, #16            // =16
	mov	sp, x8
	ldr	x9, [x23, #32]
	ldr	x11, [x23]
	ldr	w9, [x9]
	ldr	w11, [x11]
	cmp	w9, w11
	cset	w9, ge
	sturb	w9, [x10, #-16]
	b.lt	.LBB57_9
// %bb.8:                               // %cond_jump_then33
                                        //   in Loop: Header=BB57_7 Depth=1
	ldr	x10, [x24, #24]
	ldr	x11, [x24]
	ldr	w10, [x10]
	ldr	w11, [x11]
	cmp	w10, w11
	cset	w10, lt
	and	w9, w9, w10
	strb	w9, [x8]
.LBB57_9:                               // %cond_jump_end
                                        //   in Loop: Header=BB57_7 Depth=1
	ldrb	w8, [x8]
	tbz	w8, #0, .LBB57_6
// %bb.10:                              // %cond_jump_then39
                                        //   in Loop: Header=BB57_7 Depth=1
	ldp	x9, x8, [x25]
	ldr	x8, [x8]
	ldr	x20, [x9]
	ldr	x0, [x8]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x20
	bl	list_push_back_charp55_15filer
	b	.LBB57_6
.LBB57_11:                              // %cond_end_block
	ldr	x20, [x19, #8]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	sub	sp, x29, #64            // =64
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x25, [sp], #80     // 16-byte Folded Reload
	ret
.LBB57_12:                              // %cond_jump_then
	adrp	x8, gLVTable+424
	add	x8, x8, :lo12:gLVTable+424
	ldp	x9, x8, [x8]
	ldr	x9, [x9]
	ldr	w10, [x8]
	ldr	w9, [x9, #16]
	add	w9, w10, w9
	str	w9, [x8]
	ldr	w8, [x19, #16]
	tbz	w8, #31, .LBB57_2
.LBB57_13:                              // %cond_jump_then10
	adrp	x8, gLVTable+424
	add	x8, x8, :lo12:gLVTable+424
	ldr	x9, [x8]
	ldr	x8, [x8, #16]
	ldr	x9, [x9]
	ldr	w10, [x8]
	ldr	w9, [x9, #16]
	add	w9, w9, w10
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	w8, [x19, #20]
	tbz	w8, #31, .LBB57_3
.LBB57_14:                              // %cond_jump_then21
	adrp	x8, gLVTable+432
	ldr	x8, [x8, :lo12:gLVTable+432]
	str	wzr, [x8]
	b	.LBB57_3
.Lfunc_end57:
	.size	list_sublist_charp53_15filer, .Lfunc_end57-list_sublist_charp53_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp54_15filer // -- Begin function list_initialize_charp54_15filer
	.p2align	2
	.type	list_initialize_charp54_15filer,@function
list_initialize_charp54_15filer:        // @list_initialize_charp54_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #472]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end58:
	.size	list_initialize_charp54_15filer, .Lfunc_end58-list_initialize_charp54_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp55_15filer // -- Begin function list_push_back_charp55_15filer
	.p2align	2
	.type	list_push_back_charp55_15filer,@function
list_push_back_charp55_15filer:         // @list_push_back_charp55_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #472]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB59_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB59_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.310
	adrp	x3, .Lglobal_string.311
	adrp	x5, .Lglobal_string.312
	adrp	x6, .Lglobal_string.313
	add	x2, x2, :lo12:.Lglobal_string.310
	add	x3, x3, :lo12:.Lglobal_string.311
	add	x5, x5, :lo12:.Lglobal_string.312
	add	x6, x6, :lo12:.Lglobal_string.313
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB59_5
.LBB59_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.306
	adrp	x3, .Lglobal_string.307
	adrp	x5, .Lglobal_string.308
	adrp	x6, .Lglobal_string.309
	add	x2, x2, :lo12:.Lglobal_string.306
	add	x3, x3, :lo12:.Lglobal_string.307
	add	x5, x5, :lo12:.Lglobal_string.308
	add	x6, x6, :lo12:.Lglobal_string.309
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB59_5
.LBB59_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.314
	adrp	x3, .Lglobal_string.315
	adrp	x5, .Lglobal_string.316
	adrp	x6, .Lglobal_string.317
	add	x2, x2, :lo12:.Lglobal_string.314
	add	x3, x3, :lo12:.Lglobal_string.315
	add	x5, x5, :lo12:.Lglobal_string.316
	add	x6, x6, :lo12:.Lglobal_string.317
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB59_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end59:
	.size	list_push_back_charp55_15filer, .Lfunc_end59-list_push_back_charp55_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp56_15filer // -- Begin function list_push_back_charp56_15filer
	.p2align	2
	.type	list_push_back_charp56_15filer,@function
list_push_back_charp56_15filer:         // @list_push_back_charp56_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #472]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB60_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB60_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.322
	adrp	x3, .Lglobal_string.323
	adrp	x5, .Lglobal_string.324
	adrp	x6, .Lglobal_string.325
	add	x2, x2, :lo12:.Lglobal_string.322
	add	x3, x3, :lo12:.Lglobal_string.323
	add	x5, x5, :lo12:.Lglobal_string.324
	add	x6, x6, :lo12:.Lglobal_string.325
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB60_5
.LBB60_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.318
	adrp	x3, .Lglobal_string.319
	adrp	x5, .Lglobal_string.320
	adrp	x6, .Lglobal_string.321
	add	x2, x2, :lo12:.Lglobal_string.318
	add	x3, x3, :lo12:.Lglobal_string.319
	add	x5, x5, :lo12:.Lglobal_string.320
	add	x6, x6, :lo12:.Lglobal_string.321
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB60_5
.LBB60_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.326
	adrp	x3, .Lglobal_string.327
	adrp	x5, .Lglobal_string.328
	adrp	x6, .Lglobal_string.329
	add	x2, x2, :lo12:.Lglobal_string.326
	add	x3, x3, :lo12:.Lglobal_string.327
	add	x5, x5, :lo12:.Lglobal_string.328
	add	x6, x6, :lo12:.Lglobal_string.329
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+472
	add	x10, x10, :lo12:gLVTable+472
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB60_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end60:
	.size	list_push_back_charp56_15filer, .Lfunc_end60-list_push_back_charp56_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda2         // -- Begin function 15filer_lambda2
	.p2align	2
	.type	15filer_lambda2,@function
15filer_lambda2:                        // @"15filer_lambda2"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x2
	mov	w19, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	ldr	x10, [x22, #400]
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	stp	x8, x9, [x22, #424]
	add	x8, sp, #8              // =8
	str	x21, [sp, #24]
	str	w19, [sp, #20]
	str	x20, [sp, #8]
	str	x8, [x22, #440]
	ldr	x8, [x10]
	ldr	w9, [x8, #28]
	cmp	w19, w9
	cset	w8, eq
	strb	w8, [sp, #7]
	adrp	x8, gLVTable+400
	b.ne	.LBB61_2
// %bb.1:                               // %cond_jump_then
	ldr	x10, [x8, :lo12:gLVTable+400]
	cmp	w19, w9
	cset	w9, eq
	ldr	x10, [x10]
	ldrb	w10, [x10, #36]
	and	w9, w9, w10
	strb	w9, [sp, #7]
.LBB61_2:                               // %cond_jump_end
	ldr	x8, [x8, :lo12:gLVTable+400]
	ldrb	w9, [sp, #7]
	ldr	x8, [x8]
	cmp	w9, #1                  // =1
	ldr	x0, [x8, #16]
	b.ne	.LBB61_4
// %bb.3:                               // %cond_jump_then6
	mov	w1, #262144
	mov	x2, xzr
	bl	wattr_on
	adrp	x19, gLVTable+400
	add	x19, x19, :lo12:gLVTable+400
	ldr	x8, [x19]
	ldp	x10, x9, [x19, #24]
	adrp	x3, .Lglobal_string.332
	add	x3, x3, :lo12:.Lglobal_string.332
	ldr	x8, [x8]
	ldr	w1, [x9]
	ldr	x4, [x10]
	mov	w2, wzr
	ldr	x0, [x8, #16]
	bl	mvwprintw
	ldr	x8, [x19]
	mov	w1, #262144
	mov	x2, xzr
	ldr	x8, [x8]
	ldr	x0, [x8, #16]
	bl	wattr_off
	b	.LBB61_5
.LBB61_4:                               // %cond_else_block
	adrp	x8, gLVTable+424
	add	x8, x8, :lo12:gLVTable+424
	ldp	x8, x9, [x8]
	adrp	x3, .Lglobal_string.333
	add	x3, x3, :lo12:.Lglobal_string.333
	mov	w2, wzr
	ldr	w1, [x9]
	ldr	x4, [x8]
	bl	mvwprintw
.LBB61_5:                               // %cond_end
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #32             // =32
	mov	w2, #65536
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end61:
	.size	15filer_lambda2, .Lfunc_end61-15filer_lambda2
	.cfi_endproc
                                        // -- End function
	.globl	list_each_charp57_15filer // -- Begin function list_each_charp57_15filer
	.p2align	2
	.type	list_each_charp57_15filer,@function
list_each_charp57_15filer:              // @list_each_charp57_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #424]
	ldr	x8, [x21]
	adrp	x20, gLVTable+432
	adrp	x21, gLVTable+440
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+432
	add	x21, x21, :lo12:gLVTable+440
	stp	x10, x11, [x22, #440]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB62_3
.LBB62_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB62_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB62_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB62_1
.LBB62_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end62:
	.size	list_each_charp57_15filer, .Lfunc_end62-list_each_charp57_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp58_15filer // -- Begin function list_finalize_charp58_15filer
	.p2align	2
	.type	list_finalize_charp58_15filer,@function
list_finalize_charp58_15filer:          // @list_finalize_charp58_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #424]
	cbz	x20, .LBB63_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+432
	adrp	x10, gLVTable+432
	add	x21, x21, :lo12:gLVTable+432
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+432]
	ldr	x8, [x20]
	cbz	x8, .LBB63_3
.LBB63_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB63_2
.LBB63_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end63:
	.size	list_finalize_charp58_15filer, .Lfunc_end63-list_finalize_charp58_15filer
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_find            // -- Begin function ViFiler_find
	.p2align	2
	.type	ViFiler_find,@function
ViFiler_find:                           // @ViFiler_find
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-96]!        // 8-byte Folded Spill
	stp	x26, x25, [sp, #16]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill
	add	x29, sp, #80            // =80
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w28, -96
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #72            // =72
	add	x9, x19, #8             // =8
	mov	x0, x20
	mov	x1, xzr
	stur	x21, [x29, #-72]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #400]
	bl	"Vi_commandBox-15"
	add	x8, x19, #0             // =0
	str	x8, [x22, #416]
	str	x0, [x19]
	cbz	x0, .LBB64_5
// %bb.1:                               // %cond_jump_then
	adrp	x21, gLVTable+416
	add	x21, x21, :lo12:gLVTable+416
	ldr	x8, [x21]
	adrp	x1, .Lglobal_string.334
	add	x1, x1, :lo12:.Lglobal_string.334
	ldr	x0, [x8]
	bl	popen
	mov	x8, sp
	sub	x20, x8, #16            // =16
	mov	sp, x20
	adrp	x2, .Lglobal_string.335
	adrp	x3, .Lglobal_string.336
	adrp	x5, .Lglobal_string.337
	adrp	x6, .Lglobal_string.338
	stur	x0, [x8, #-16]
	add	x2, x2, :lo12:.Lglobal_string.335
	add	x3, x3, :lo12:.Lglobal_string.336
	add	x5, x5, :lo12:.Lglobal_string.337
	add	x6, x6, :lo12:.Lglobal_string.338
	mov	w0, #1
	mov	w1, #16
	mov	w4, #93
	str	x20, [x21, #8]
	bl	debug_xcalloc
	bl	buffer_initialize
	mov	x8, sp
	sub	x22, x8, #16            // =16
	mov	sp, x22
	str	x22, [x21, #16]
	adrp	x21, gLVTable+424
	add	x21, x21, :lo12:gLVTable+424
	stur	x0, [x8, #-16]
.LBB64_2:                               // %loop_top_block
                                        // =>This Inner Loop Header: Depth=1
	ldr	x0, [x20]
	bl	feof
	tbnz	w0, #0, .LBB64_4
// %bb.3:                               // %cond_then_block
                                        //   in Loop: Header=BB64_2 Depth=1
	mov	x23, sp
	sub	x8, x23, #16            // =16
	mov	sp, x8
	sub	x0, sp, #1024           // =1024
	str	x8, [x21, #32]
	mov	sp, x0
	ldr	x8, [x21]
	stur	x0, [x23, #-16]
	mov	w1, #1024
	ldr	x2, [x8]
	bl	fgets
	ldr	x8, [x21, #8]
	ldur	x1, [x23, #-16]
	ldr	x0, [x8]
	bl	buffer_append_str
	b	.LBB64_2
.LBB64_4:                               // %cond_end_block
	ldr	x0, [x20]
	bl	pclose
	ldr	x0, [x22]
	bl	buffer_to_string
	mov	x20, x0
	adrp	x0, .Lglobal_string.339
	add	x0, x0, :lo12:.Lglobal_string.339
	strb	wzr, [sp, #-16]!
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	mov	w5, wzr
	mov	w6, wzr
	mov	w7, wzr
	bl	regex
	add	sp, sp, #16             // =16
	mov	x1, x0
	mov	x0, x20
	bl	string_split
	mov	x23, sp
	sub	x8, x23, #16            // =16
	mov	sp, x8
	adrp	x24, gLVTable+400
	adrp	x2, .Lglobal_string.340
	adrp	x3, .Lglobal_string.341
	adrp	x5, .Lglobal_string.342
	adrp	x6, .Lglobal_string.343
	add	x24, x24, :lo12:gLVTable+400
	stur	x0, [x23, #-16]
	add	x2, x2, :lo12:.Lglobal_string.340
	add	x3, x3, :lo12:.Lglobal_string.341
	add	x5, x5, :lo12:.Lglobal_string.342
	add	x6, x6, :lo12:.Lglobal_string.343
	mov	w0, #1
	mov	w1, #24
	mov	w4, #108
	str	x8, [x24, #40]
	bl	debug_xcalloc
	bl	list_initialize_charp60_15filer
	mov	x21, sp
	sub	x8, x21, #16            // =16
	mov	sp, x8
	ldr	x9, [x24]
	str	x8, [x24, #48]
	stur	x0, [x21, #-16]
	adrp	x1, 15filer_lambda3
	ldr	x8, [x9]
	add	x1, x1, :lo12:15filer_lambda3
	ldr	x0, [x8, #8]
	bl	list_each_charp64_15filer
	ldr	x8, [x24]
	ldur	x26, [x21, #-16]
	ldr	x25, [x8]
	ldr	x21, [x25, #8]
	mov	x0, x21
	bl	list_finalize_charp65_15filer
	mov	x0, x21
	bl	xfree
	str	x26, [x25, #8]
	ldr	x8, [x24]
	ldr	x8, [x8]
	str	wzr, [x8, #24]
	ldr	x8, [x24]
	ldr	x8, [x8]
	str	wzr, [x8, #28]
	ldur	x21, [x23, #-16]
	mov	x0, x21
	bl	list_finalize_charp67_15filer
	mov	x0, x21
	bl	xfree
	ldr	x21, [x22]
	mov	x0, x21
	bl	buffer_finalize
	mov	x0, x21
	bl	xfree
	mov	x0, x20
	bl	xfree
.LBB64_5:                               // %cond_end
	ldr	x0, [x19]
	bl	xfree
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #80            // =80
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #96          // 8-byte Folded Reload
	ret
.Lfunc_end64:
	.size	ViFiler_find, .Lfunc_end64-ViFiler_find
	.cfi_endproc
                                        // -- End function
	.globl	list_initialize_charp60_15filer // -- Begin function list_initialize_charp60_15filer
	.p2align	2
	.type	list_initialize_charp60_15filer,@function
list_initialize_charp60_15filer:        // @list_initialize_charp60_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #456]
	str	xzr, [x19]
	ldr	x8, [sp, #8]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #16]
	ldr	x19, [sp, #8]
	bl	xmemcpy
	mov	x0, x19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end65:
	.size	list_initialize_charp60_15filer, .Lfunc_end65-list_initialize_charp60_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda3         // -- Begin function 15filer_lambda3
	.p2align	2
	.type	15filer_lambda3,@function
15filer_lambda3:                        // @"15filer_lambda3"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	ldr	x10, [x22, #440]
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	stp	x8, x9, [x22, #456]
	add	x8, sp, #8              // =8
	str	x21, [sp, #24]
	str	w20, [sp, #20]
	str	x19, [sp, #8]
	str	x8, [x22, #472]
	ldr	x0, [x10]
	mov	x1, x21
	mov	w2, wzr
	bl	list_find_charp61_15filer
	cbz	w0, .LBB66_2
// %bb.1:                               // %cond_jump_then
	adrp	x8, gLVTable+448
	add	x8, x8, :lo12:gLVTable+448
	ldp	x9, x8, [x8]
	ldr	x0, [x8]
	ldr	x19, [x9]
	bl	xmemdup
	mov	x1, x0
	mov	x0, x19
	bl	list_push_back_charp63_15filer
.LBB66_2:                               // %cond_end
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #32             // =32
	mov	w2, #65536
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end66:
	.size	15filer_lambda3, .Lfunc_end66-15filer_lambda3
	.cfi_endproc
                                        // -- End function
	.globl	list_find_charp61_15filer // -- Begin function list_find_charp61_15filer
	.p2align	2
	.type	list_find_charp61_15filer,@function
list_find_charp61_15filer:              // @list_find_charp61_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	w19, w2
	mov	x20, x1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	adrp	x1, 15filer_lambda4
	add	x8, sp, #24             // =24
	add	x9, sp, #16             // =16
	add	x10, sp, #12            // =12
	add	x11, sp, #8             // =8
	add	x1, x1, :lo12:15filer_lambda4
	mov	x0, x21
	stp	x20, x21, [sp, #16]
	stp	w19, w19, [sp, #8]
	stp	x8, x9, [x22, #480]
	stp	x10, x11, [x22, #496]
	bl	list_each_charp62_15filer
	ldr	w19, [sp, #8]
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x22
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end67:
	.size	list_find_charp61_15filer, .Lfunc_end67-list_find_charp61_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda4         // -- Begin function 15filer_lambda4
	.p2align	2
	.type	15filer_lambda4,@function
15filer_lambda4:                        // @"15filer_lambda4"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x19, gLVTable
	add	x19, x19, :lo12:gLVTable
	mov	x20, x2
	mov	w21, w1
	mov	x22, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x19
	bl	xmemcpy
	ldr	x10, [x19, #488]
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	str	x8, [x19, #512]
	add	x8, sp, #8              // =8
	str	x22, [sp, #24]
	str	w21, [sp, #20]
	str	x9, [x19, #520]
	str	x20, [sp, #8]
	str	x8, [x19, #528]
	ldr	x1, [x10]
	mov	x0, x22
	bl	string_equals
	tbz	w0, #0, .LBB68_2
// %bb.1:                               // %cond_jump_then
	ldr	x8, [x19, #520]
	ldr	x9, [x19, #504]
	add	x1, sp, #32             // =32
	mov	w2, #65536
	ldr	w8, [x8]
	mov	x0, x19
	str	w8, [x9]
	ldr	x8, [x19, #528]
	mov	w9, #1
	ldr	x8, [x8]
	strb	w9, [x8]
	b	.LBB68_3
.LBB68_2:                               // %cond_end
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, sp, #32             // =32
	mov	w2, #65536
.LBB68_3:                               // %cond_end
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end68:
	.size	15filer_lambda4, .Lfunc_end68-15filer_lambda4
	.cfi_endproc
                                        // -- End function
	.globl	list_each_charp62_15filer // -- Begin function list_each_charp62_15filer
	.p2align	2
	.type	list_each_charp62_15filer,@function
list_each_charp62_15filer:              // @list_each_charp62_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	str	x8, [x22, #512]
	str	x9, [x22, #520]
	ldr	x8, [x21]
	adrp	x20, gLVTable+520
	adrp	x21, gLVTable+528
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+520
	add	x21, x21, :lo12:gLVTable+528
	str	x10, [x22, #528]
	str	x11, [x22, #536]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB69_3
.LBB69_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB69_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB69_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB69_1
.LBB69_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end69:
	.size	list_each_charp62_15filer, .Lfunc_end69-list_each_charp62_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_push_back_charp63_15filer // -- Begin function list_push_back_charp63_15filer
	.p2align	2
	.type	list_push_back_charp63_15filer,@function
list_push_back_charp63_15filer:         // @list_push_back_charp63_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #8             // =8
	stur	x21, [x29, #-40]
	str	x20, [x19, #8]
	stp	x8, x9, [x22, #480]
	ldr	w8, [x21, #16]
	cbz	w8, .LBB70_3
// %bb.1:                               // %"cond_jump_elif0\0A"
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #16]
	cmp	w8, #1                  // =1
	b.ne	.LBB70_4
// %bb.2:                               // %"cond_jump_elif_then0\0A"
	adrp	x2, .Lglobal_string.348
	adrp	x3, .Lglobal_string.349
	adrp	x5, .Lglobal_string.350
	adrp	x6, .Lglobal_string.351
	add	x2, x2, :lo12:.Lglobal_string.348
	add	x3, x3, :lo12:.Lglobal_string.349
	add	x5, x5, :lo12:.Lglobal_string.350
	add	x6, x6, :lo12:.Lglobal_string.351
	mov	w0, #1
	mov	w1, #24
	mov	w4, #702
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	x8, [x9, #16]
	b	.LBB70_5
.LBB70_3:                               // %cond_jump_then
	adrp	x2, .Lglobal_string.344
	adrp	x3, .Lglobal_string.345
	adrp	x5, .Lglobal_string.346
	adrp	x6, .Lglobal_string.347
	add	x2, x2, :lo12:.Lglobal_string.344
	add	x3, x3, :lo12:.Lglobal_string.345
	add	x5, x5, :lo12:.Lglobal_string.346
	add	x6, x6, :lo12:.Lglobal_string.347
	mov	w0, #1
	mov	w1, #24
	mov	w4, #693
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	str	x9, [x10, #16]
	mov	x9, x0
	stur	x0, [x8, #-16]
	str	xzr, [x0, #8]
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	mov	x11, x0
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	str	x11, [x9, #8]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9]
	b	.LBB70_5
.LBB70_4:                               // %cond_else_block
	adrp	x2, .Lglobal_string.352
	adrp	x3, .Lglobal_string.353
	adrp	x5, .Lglobal_string.354
	adrp	x6, .Lglobal_string.355
	add	x2, x2, :lo12:.Lglobal_string.352
	add	x3, x3, :lo12:.Lglobal_string.353
	add	x5, x5, :lo12:.Lglobal_string.354
	add	x6, x6, :lo12:.Lglobal_string.355
	mov	w0, #1
	mov	w1, #24
	mov	w4, #712
	bl	debug_xcalloc
	mov	x8, sp
	sub	x9, x8, #16             // =16
	mov	sp, x9
	adrp	x10, gLVTable+480
	add	x10, x10, :lo12:gLVTable+480
	ldr	x11, [x10]
	str	x9, [x10, #16]
	stur	x0, [x8, #-16]
	ldr	x9, [x11]
	mov	x11, x0
	ldr	x9, [x9, #8]
	str	x9, [x0, #8]
	mov	x9, x0
	str	xzr, [x9, #16]
	ldr	x9, [x10, #8]
	ldr	x9, [x9]
	str	x9, [x11]
	ldr	x9, [x10]
	ldur	x11, [x8, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	x11, [x9, #16]
	ldr	x9, [x10]
	ldur	x8, [x8, #-16]
	ldr	x9, [x9]
	str	x8, [x9, #8]
.LBB70_5:                               // %cond_end
	ldur	x8, [x29, #-40]
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	ldr	w9, [x8, #16]
	mov	w2, #65536
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end70:
	.size	list_push_back_charp63_15filer, .Lfunc_end70-list_push_back_charp63_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_each_charp64_15filer // -- Begin function list_each_charp64_15filer
	.p2align	2
	.type	list_each_charp64_15filer,@function
list_each_charp64_15filer:              // @list_each_charp64_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #456]
	ldr	x8, [x21]
	adrp	x20, gLVTable+464
	adrp	x21, gLVTable+472
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+464
	add	x21, x21, :lo12:gLVTable+472
	stp	x10, x11, [x22, #472]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB71_3
.LBB71_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB71_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB71_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB71_1
.LBB71_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end71:
	.size	list_each_charp64_15filer, .Lfunc_end71-list_each_charp64_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp65_15filer // -- Begin function list_finalize_charp65_15filer
	.p2align	2
	.type	list_finalize_charp65_15filer,@function
list_finalize_charp65_15filer:          // @list_finalize_charp65_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #456]
	cbz	x20, .LBB72_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+464
	adrp	x10, gLVTable+464
	add	x21, x21, :lo12:gLVTable+464
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+464]
	ldr	x8, [x20]
	cbz	x8, .LBB72_3
.LBB72_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB72_2
.LBB72_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end72:
	.size	list_finalize_charp65_15filer, .Lfunc_end72-list_finalize_charp65_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp67_15filer // -- Begin function list_finalize_charp67_15filer
	.p2align	2
	.type	list_finalize_charp67_15filer,@function
list_finalize_charp67_15filer:          // @list_finalize_charp67_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #456]
	cbz	x20, .LBB73_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+464
	adrp	x10, gLVTable+464
	add	x21, x21, :lo12:gLVTable+464
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+464]
	ldr	x8, [x20]
	cbz	x8, .LBB73_3
.LBB73_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB73_2
.LBB73_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end73:
	.size	list_finalize_charp67_15filer, .Lfunc_end73-list_finalize_charp67_15filer
	.cfi_endproc
                                        // -- End function
	.globl	ViFiler_input           // -- Begin function ViFiler_input
	.p2align	2
	.type	ViFiler_input,@function
ViFiler_input:                          // @ViFiler_input
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #400]
	ldr	x0, [x21, #16]
	bl	wgetch
	ldur	x8, [x29, #-40]
	add	x9, x19, #20            // =20
	str	w0, [x19, #20]
	str	x9, [x22, #416]
	ldp	w9, w10, [x8, #24]
	ldr	x0, [x8, #8]
	mov	x2, xzr
	add	w1, w9, w10
	bl	list_item_charp69_15filer
	add	x8, x19, #8             // =8
	str	x8, [x22, #424]
	str	x0, [x19, #8]
	bl	xgetmaxy
	ldr	w8, [x19, #20]
	add	x9, x19, #4             // =4
	str	x9, [x22, #432]
	str	w0, [x19, #4]
	cmp	w8, #101                // =101
	b.le	.LBB74_4
// %bb.1:                               // %entry
	sub	w9, w8, #102            // =102
	cmp	w9, #9                  // =9
	b.hi	.LBB74_11
// %bb.2:                               // %entry
	adrp	x8, .LJTI74_1
	add	x8, x8, :lo12:.LJTI74_1
	adr	x10, .LBB74_3
	ldrb	w11, [x8, x9]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB74_3:                               // %cond_then_block161
	ldur	x0, [x29, #-40]
	ldr	x1, [x19, #24]
	bl	ViFiler_find
	b	.LBB74_24
.LBB74_4:                               // %entry
	sub	w8, w8, #3              // =3
	cmp	w8, #18                 // =18
	b.hi	.LBB74_24
// %bb.5:                               // %entry
	adrp	x9, .LJTI74_0
	add	x9, x9, :lo12:.LJTI74_0
	adr	x10, .LBB74_6
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB74_6:                               // %cond_then_block66
	ldur	x8, [x29, #-40]
	ldr	w9, [x8, #28]
	add	w9, w9, #10             // =10
	str	w9, [x8, #28]
	ldur	x8, [x29, #-40]
	ldr	w9, [x19, #4]
	ldr	w8, [x8, #28]
	cmp	w8, w9
	b.lt	.LBB74_9
// %bb.7:                               // %cond_jump_then76
	adrp	x8, gLVTable+400
	add	x8, x8, :lo12:gLVTable+400
	ldr	x9, [x8]
	ldr	x10, [x8, #32]
	ldr	x9, [x9]
	ldr	w10, [x10]
	ldr	w9, [x9, #28]
	sub	w9, w9, w10
	mov	x10, sp
	sub	x11, x10, #16           // =16
	mov	sp, x11
	ldr	x12, [x8]
	str	x11, [x8, #40]
	stur	w9, [x10, #-16]
	ldr	x11, [x12]
	ldr	w12, [x11, #24]
	add	w9, w12, w9
	str	w9, [x11, #24]
	ldr	x9, [x8]
	ldur	w10, [x10, #-16]
	ldr	x9, [x9]
	ldr	w11, [x9, #28]
	sub	w10, w11, w10
	str	w10, [x9, #28]
	ldr	x9, [x8]
	ldr	x9, [x9]
	ldr	w10, [x9, #28]
	sub	w10, w10, #1            // =1
	str	w10, [x9, #28]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x0, [x8, #8]
	ldr	w20, [x8, #24]
	bl	list_length_charp74_15filer
	cmp	w20, w0
	b.lt	.LBB74_9
// %bb.8:                               // %cond_jump_then100
	adrp	x8, gLVTable+400
	ldr	x8, [x8, :lo12:gLVTable+400]
	ldr	x20, [x8]
	ldr	x0, [x20, #8]
	bl	list_length_charp75_15filer
	sub	w8, w0, #1              // =1
	str	w8, [x20, #24]
.LBB74_9:                               // %cond_end77
	ldur	x8, [x29, #-40]
	ldr	x0, [x8, #8]
	ldr	w20, [x8, #28]
	bl	list_length_charp76_15filer
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #24]
	mvn	w8, w8
	add	w8, w8, w0
	cmp	w20, w8
	b.lt	.LBB74_24
// %bb.10:                              // %cond_jump_then111
	adrp	x20, gLVTable+400
	ldr	x8, [x20, :lo12:gLVTable+400]
	ldr	x21, [x8]
	ldr	x0, [x21, #8]
	bl	list_length_charp77_15filer
	b	.LBB74_20
.LBB74_11:                              // %entry
	cmp	w8, #258                // =258
	b.eq	.LBB74_15
// %bb.12:                              // %entry
	cmp	w8, #259                // =259
	b.ne	.LBB74_24
.LBB74_13:                              // %cond_then_block43
	ldur	x8, [x29, #-40]
	ldr	w9, [x8, #28]
	sub	w9, w9, #1              // =1
	str	w9, [x8, #28]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #28]
	tbz	w8, #31, .LBB74_24
// %bb.14:                              // %cond_jump_then53
	adrp	x8, gLVTable+400
	ldr	x9, [x8, :lo12:gLVTable+400]
	ldr	x9, [x9]
	ldr	w10, [x9, #24]
	sub	w10, w10, #1            // =1
	str	w10, [x9, #24]
	ldr	x9, [x8, :lo12:gLVTable+400]
	ldr	x9, [x9]
	str	wzr, [x9, #28]
	ldr	x9, [x8, :lo12:gLVTable+400]
	ldr	x9, [x9]
	ldr	w9, [x9, #24]
	tbz	w9, #31, .LBB74_24
	b	.LBB74_28
.LBB74_15:                              // %cond_then_block
	ldur	x8, [x29, #-40]
	ldr	w9, [x8, #28]
	add	w9, w9, #1              // =1
	str	w9, [x8, #28]
	ldur	x8, [x29, #-40]
	ldr	w9, [x19, #4]
	ldr	w8, [x8, #28]
	cmp	w8, w9
	b.lt	.LBB74_18
// %bb.16:                              // %cond_jump_then
	adrp	x8, gLVTable+400
	add	x8, x8, :lo12:gLVTable+400
	ldr	x9, [x8]
	ldr	x9, [x9]
	ldr	w10, [x9, #24]
	add	w10, w10, #1            // =1
	str	w10, [x9, #24]
	ldr	x9, [x8, #32]
	ldr	x10, [x8]
	ldr	w9, [x9]
	ldr	x10, [x10]
	sub	w9, w9, #1              // =1
	str	w9, [x10, #28]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x0, [x8, #8]
	ldr	w20, [x8, #24]
	bl	list_length_charp70_15filer
	cmp	w20, w0
	b.lt	.LBB74_18
// %bb.17:                              // %cond_jump_then25
	adrp	x8, gLVTable+400
	ldr	x8, [x8, :lo12:gLVTable+400]
	ldr	x20, [x8]
	ldr	x0, [x20, #8]
	bl	list_length_charp71_15filer
	sub	w8, w0, #1              // =1
	str	w8, [x20, #24]
.LBB74_18:                              // %cond_end
	ldur	x8, [x29, #-40]
	ldr	x0, [x8, #8]
	ldr	w20, [x8, #28]
	bl	list_length_charp72_15filer
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #24]
	mvn	w8, w8
	add	w8, w8, w0
	cmp	w20, w8
	b.lt	.LBB74_24
// %bb.19:                              // %cond_jump_then36
	adrp	x20, gLVTable+400
	ldr	x8, [x20, :lo12:gLVTable+400]
	ldr	x21, [x8]
	ldr	x0, [x21, #8]
	bl	list_length_charp73_15filer
.LBB74_20:                              // %end_block
	ldr	x8, [x20, :lo12:gLVTable+400]
	ldr	x8, [x8]
	ldr	w8, [x8, #24]
	mvn	w8, w8
	add	w8, w8, w0
	str	w8, [x21, #28]
	b	.LBB74_24
.LBB74_21:                              // %cond_then_block167
	ldr	x0, [x19, #24]
	ldr	x1, [x19, #8]
	bl	"Vi_openNewFile-6"
	b	.LBB74_23
.LBB74_22:                              // %cond_then_block146
	ldr	x8, [x19, #24]
	ldr	x0, [x8, #8]
	bl	"ViWin_writeFile-6"
	ldr	x0, [x19, #24]
	ldr	x1, [x19, #8]
	mov	w2, #-1
	bl	"Vi_openFile-6"
.LBB74_23:                              // %cond_then_block154
	ldur	x8, [x29, #-40]
	strb	wzr, [x8, #36]
.LBB74_24:                              // %end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.LBB74_25:                              // %cond_then_block119
	ldur	x8, [x29, #-40]
	ldr	w9, [x8, #28]
	sub	w9, w9, #10             // =10
	str	w9, [x8, #28]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8, #28]
	tbz	w8, #31, .LBB74_24
// %bb.26:                              // %cond_jump_then128
	adrp	x8, gLVTable+400
	add	x8, x8, :lo12:gLVTable+400
	ldr	x9, [x8]
	mov	x11, sp
	sub	x12, x11, #16           // =16
	ldr	x9, [x9]
	ldr	w9, [x9, #28]
	neg	w10, w9
	mov	sp, x12
	ldr	x13, [x8]
	str	x12, [x8, #40]
	stur	w10, [x11, #-16]
	ldr	x10, [x13]
	ldr	w11, [x10, #24]
	add	w9, w11, w9
	str	w9, [x10, #24]
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	wzr, [x9, #28]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8, #24]
	tbz	w8, #31, .LBB74_24
// %bb.27:                              // %cond_jump_then142
	adrp	x8, gLVTable+400
.LBB74_28:                              // %cond_jump_then62
	ldr	x8, [x8, :lo12:gLVTable+400]
	ldr	x8, [x8]
	str	wzr, [x8, #24]
	b	.LBB74_24
.Lfunc_end74:
	.size	ViFiler_input, .Lfunc_end74-ViFiler_input
	.cfi_endproc
	.section	.rodata,"a",@progbits
.LJTI74_0:
	.byte	(.LBB74_23-.LBB74_6)>>2
	.byte	(.LBB74_6-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_22-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_23-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_24-.LBB74_6)>>2
	.byte	(.LBB74_25-.LBB74_6)>>2
.LJTI74_1:
	.byte	(.LBB74_3-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_15-.LBB74_3)>>2
	.byte	(.LBB74_13-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_24-.LBB74_3)>>2
	.byte	(.LBB74_21-.LBB74_3)>>2
                                        // -- End function
	.text
	.globl	list_item_charp69_15filer // -- Begin function list_item_charp69_15filer
	.p2align	2
	.type	list_item_charp69_15filer,@function
list_item_charp69_15filer:              // @list_item_charp69_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x23, [sp, #-64]!   // 16-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w28, -64
	adrp	x23, gLVTable
	add	x23, x23, :lo12:gLVTable
	mov	x20, x2
	mov	w21, w1
	mov	x22, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x23
	bl	xmemcpy
	add	x8, x19, #24            // =24
	add	x9, x19, #20            // =20
	add	x10, x19, #8            // =8
	str	x22, [x19, #24]
	str	w21, [x19, #20]
	str	x20, [x19, #8]
	stp	x8, x9, [x23, #440]
	str	x10, [x23, #456]
	tbz	w21, #31, .LBB75_2
// %bb.1:                               // %cond_jump_then
	adrp	x8, gLVTable+440
	add	x8, x8, :lo12:gLVTable+440
	ldp	x9, x8, [x8]
	ldr	x9, [x9]
	ldr	w10, [x8]
	ldr	w9, [x9, #16]
	add	w9, w10, w9
	str	w9, [x8]
.LBB75_2:                               // %cond_end
	ldr	x8, [x19, #24]
	mov	x11, sp
	ldr	x10, [x8]
	sub	x8, x11, #16            // =16
	mov	sp, x8
	adrp	x9, gLVTable+464
	stur	x10, [x11, #-16]
	mov	x10, sp
	add	x9, x9, :lo12:gLVTable+464
	sub	x11, x10, #16           // =16
	mov	sp, x11
	stur	wzr, [x10, #-16]
	adrp	x10, gLVTable+448
	add	x10, x10, :lo12:gLVTable+448
	stp	x8, x11, [x9]
	ldr	x11, [x8]
	cbz	x11, .LBB75_5
.LBB75_3:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	ldr	x11, [x10]
	ldp	x13, x12, [x10, #16]
	ldr	w14, [x11]
	ldr	w12, [x12]
	ldr	x11, [x13]
	cmp	w14, w12
	b.eq	.LBB75_6
// %bb.4:                               // %cond_end13
                                        //   in Loop: Header=BB75_3 Depth=1
	ldr	x11, [x11, #16]
	ldr	x12, [x9]
	str	x11, [x12]
	ldr	x11, [x9, #8]
	ldr	w12, [x11]
	add	w12, w12, #1            // =1
	str	w12, [x11]
	ldr	x11, [x8]
	cbnz	x11, .LBB75_3
.LBB75_5:                               // %cond_end_block
	ldr	x20, [x19, #8]
	b	.LBB75_7
.LBB75_6:                               // %cond_jump_then12
	ldr	x20, [x11]
.LBB75_7:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	mov	x0, x20
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x23, [sp], #64     // 16-byte Folded Reload
	ret
.Lfunc_end75:
	.size	list_item_charp69_15filer, .Lfunc_end75-list_item_charp69_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp70_15filer // -- Begin function list_length_charp70_15filer
	.p2align	2
	.type	list_length_charp70_15filer,@function
list_length_charp70_15filer:            // @list_length_charp70_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end76:
	.size	list_length_charp70_15filer, .Lfunc_end76-list_length_charp70_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp71_15filer // -- Begin function list_length_charp71_15filer
	.p2align	2
	.type	list_length_charp71_15filer,@function
list_length_charp71_15filer:            // @list_length_charp71_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end77:
	.size	list_length_charp71_15filer, .Lfunc_end77-list_length_charp71_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp72_15filer // -- Begin function list_length_charp72_15filer
	.p2align	2
	.type	list_length_charp72_15filer,@function
list_length_charp72_15filer:            // @list_length_charp72_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end78:
	.size	list_length_charp72_15filer, .Lfunc_end78-list_length_charp72_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp73_15filer // -- Begin function list_length_charp73_15filer
	.p2align	2
	.type	list_length_charp73_15filer,@function
list_length_charp73_15filer:            // @list_length_charp73_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end79:
	.size	list_length_charp73_15filer, .Lfunc_end79-list_length_charp73_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp74_15filer // -- Begin function list_length_charp74_15filer
	.p2align	2
	.type	list_length_charp74_15filer,@function
list_length_charp74_15filer:            // @list_length_charp74_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #448]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end80:
	.size	list_length_charp74_15filer, .Lfunc_end80-list_length_charp74_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp75_15filer // -- Begin function list_length_charp75_15filer
	.p2align	2
	.type	list_length_charp75_15filer,@function
list_length_charp75_15filer:            // @list_length_charp75_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #448]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end81:
	.size	list_length_charp75_15filer, .Lfunc_end81-list_length_charp75_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp76_15filer // -- Begin function list_length_charp76_15filer
	.p2align	2
	.type	list_length_charp76_15filer,@function
list_length_charp76_15filer:            // @list_length_charp76_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end82:
	.size	list_length_charp76_15filer, .Lfunc_end82-list_length_charp76_15filer
	.cfi_endproc
                                        // -- End function
	.globl	list_length_charp77_15filer // -- Begin function list_length_charp77_15filer
	.p2align	2
	.type	list_length_charp77_15filer,@function
list_length_charp77_15filer:            // @list_length_charp77_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	str	x19, [sp, #8]
	str	x8, [x20, #440]
	ldr	w19, [x19, #16]
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	mov	w0, w19
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end83:
	.size	list_length_charp77_15filer, .Lfunc_end83-list_length_charp77_15filer
	.cfi_endproc
                                        // -- End function
	.globl	xclear                  // -- Begin function xclear
	.p2align	2
	.type	xclear,@function
xclear:                                 // @xclear
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x20, [sp, #-32]!   // 16-byte Folded Spill
	stp	x19, x30, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w28, -32
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	x19, x0
	add	x0, sp, #16             // =16
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	add	x8, sp, #8              // =8
	mov	x0, x19
	str	x19, [sp, #8]
	str	x8, [x20, #400]
	bl	werase
	add	x1, sp, #16             // =16
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #16             // =16
	ldp	x19, x30, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x20, [sp], #32     // 16-byte Folded Reload
	ret
.Lfunc_end84:
	.size	xclear, .Lfunc_end84-xclear
	.cfi_endproc
                                        // -- End function
	.globl	sig_winch               // -- Begin function sig_winch
	.p2align	2
	.type	sig_winch,@function
sig_winch:                              // @sig_winch
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-48]!        // 8-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	.cfi_def_cfa_offset 65584
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w28, -48
	adrp	x20, gLVTable
	add	x20, x20, :lo12:gLVTable
	mov	w19, w0
	mov	x0, sp
	mov	w2, #65536
	mov	x1, x20
	bl	xmemcpy
	adrp	x21, gVi
	ldr	x0, [x21, :lo12:gVi]
	add	x8, sp, #12, lsl #12    // =49152
	add	x8, x8, #16             // =16
	str	w19, [x8, #16380]
	add	x8, sp, #16, lsl #12    // =65536
	add	x8, x8, #12             // =12
	str	x8, [x20, #400]
	bl	"Vi_repositionWindows-6"
	ldr	x0, [x21, :lo12:gVi]
	bl	"Vi_repositionFiler-15"
	ldr	x0, [x21, :lo12:gVi]
	bl	"Vi_clearView-15"
	ldr	x0, [x21, :lo12:gVi]
	bl	"Vi_view-15"
	mov	x1, sp
	mov	w2, #65536
	mov	x0, x20
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end85:
	.size	sig_winch, .Lfunc_end85-sig_winch
	.cfi_endproc
                                        // -- End function
	.globl	list_finalize_charp78_15filer // -- Begin function list_finalize_charp78_15filer
	.p2align	2
	.type	list_finalize_charp78_15filer,@function
list_finalize_charp78_15filer:          // @list_finalize_charp78_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x21, [sp, #-48]!   // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #16             // =16
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w28, -48
	adrp	x21, gLVTable
	add	x21, x21, :lo12:gLVTable
	mov	x20, x0
	add	x0, x19, #16            // =16
	mov	w2, #65536
	mov	x1, x21
	bl	xmemcpy
	add	x8, x19, #8             // =8
	str	x20, [x19, #8]
	str	x8, [x21, #408]
	cbz	x20, .LBB86_3
// %bb.1:                               // %cond_end
	ldr	x8, [x19, #8]
	mov	x9, sp
	sub	x20, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x20
	adrp	x21, gLVTable+416
	adrp	x10, gLVTable+416
	add	x21, x21, :lo12:gLVTable+416
	stur	x8, [x9, #-16]
	str	x20, [x10, :lo12:gLVTable+416]
	ldr	x8, [x20]
	cbz	x8, .LBB86_3
.LBB86_2:                               // %cond_jump_then5
                                        // =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	xfree
	ldr	x8, [x21]
	mov	x9, sp
	sub	x10, x9, #16            // =16
	ldr	x8, [x8]
	mov	sp, x10
	ldr	x11, [x21]
	str	x10, [x21, #8]
	stur	x8, [x9, #-16]
	ldr	x8, [x11]
	ldr	x8, [x8, #16]
	str	x8, [x11]
	ldur	x0, [x9, #-16]
	bl	xfree
	ldr	x8, [x20]
	cbnz	x8, .LBB86_2
.LBB86_3:                               // %cond_jump_then
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #16            // =16
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #32            // =32
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x21, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end86:
	.size	list_finalize_charp78_15filer, .Lfunc_end86-list_finalize_charp78_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda5         // -- Begin function 15filer_lambda5
	.p2align	2
	.type	15filer_lambda5,@function
15filer_lambda5:                        // @"15filer_lambda5"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	add	x10, sp, #8             // =8
	str	x21, [sp, #24]
	str	w20, [sp, #20]
	str	x19, [sp, #8]
	stp	x8, x9, [x22, #408]
	str	x10, [x22, #424]
	ldr	x0, [x21]
	bl	xclear
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x22
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end87:
	.size	15filer_lambda5, .Lfunc_end87-15filer_lambda5
	.cfi_endproc
                                        // -- End function
	.globl	list_each_ViWinp80_15filer // -- Begin function list_each_ViWinp80_15filer
	.p2align	2
	.type	list_each_ViWinp80_15filer,@function
list_each_ViWinp80_15filer:             // @list_each_ViWinp80_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #408]
	ldr	x8, [x21]
	adrp	x20, gLVTable+416
	adrp	x21, gLVTable+424
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+416
	add	x21, x21, :lo12:gLVTable+424
	stp	x10, x11, [x22, #424]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB88_3
.LBB88_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB88_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB88_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB88_1
.LBB88_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end88:
	.size	list_each_ViWinp80_15filer, .Lfunc_end88-list_each_ViWinp80_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda6         // -- Begin function 15filer_lambda6
	.p2align	2
	.type	15filer_lambda6,@function
15filer_lambda6:                        // @"15filer_lambda6"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	ldr	x10, [x22, #400]
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	stp	x8, x9, [x22, #408]
	add	x8, sp, #8              // =8
	str	x21, [sp, #24]
	str	w20, [sp, #20]
	str	x19, [sp, #8]
	str	x8, [x22, #424]
	ldr	x1, [x10]
	mov	x0, x21
	bl	"ViWin_view-12"
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x22
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end89:
	.size	15filer_lambda6, .Lfunc_end89-15filer_lambda6
	.cfi_endproc
                                        // -- End function
	.globl	list_each_ViWinp81_15filer // -- Begin function list_each_ViWinp81_15filer
	.p2align	2
	.type	list_each_ViWinp81_15filer,@function
list_each_ViWinp81_15filer:             // @list_each_ViWinp81_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #408]
	ldr	x8, [x21]
	adrp	x20, gLVTable+416
	adrp	x21, gLVTable+424
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+416
	add	x21, x21, :lo12:gLVTable+424
	stp	x10, x11, [x22, #424]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB90_3
.LBB90_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB90_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB90_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB90_1
.LBB90_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end90:
	.size	list_each_ViWinp81_15filer, .Lfunc_end90-list_each_ViWinp81_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda7         // -- Begin function 15filer_lambda7
	.p2align	2
	.type	15filer_lambda7,@function
15filer_lambda7:                        // @"15filer_lambda7"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	add	x10, sp, #8             // =8
	str	x21, [sp, #24]
	str	w20, [sp, #20]
	str	x19, [sp, #8]
	stp	x8, x9, [x22, #408]
	str	x10, [x22, #424]
	ldr	x0, [x21]
	bl	wrefresh
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x22
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end91:
	.size	15filer_lambda7, .Lfunc_end91-15filer_lambda7
	.cfi_endproc
                                        // -- End function
	.globl	list_each_ViWinp82_15filer // -- Begin function list_each_ViWinp82_15filer
	.p2align	2
	.type	list_each_ViWinp82_15filer,@function
list_each_ViWinp82_15filer:             // @list_each_ViWinp82_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #408]
	ldr	x8, [x21]
	adrp	x20, gLVTable+416
	adrp	x21, gLVTable+424
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+416
	add	x21, x21, :lo12:gLVTable+424
	stp	x10, x11, [x22, #424]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB92_3
.LBB92_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB92_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB92_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB92_1
.LBB92_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end92:
	.size	list_each_ViWinp82_15filer, .Lfunc_end92-list_each_ViWinp82_15filer
	.cfi_endproc
                                        // -- End function
	.globl	15filer_lambda8         // -- Begin function 15filer_lambda8
	.p2align	2
	.type	15filer_lambda8,@function
15filer_lambda8:                        // @"15filer_lambda8"
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x28, x22, [sp, #-48]!   // 16-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 16-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 16-byte Folded Spill
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	.cfi_def_cfa_offset 65616
	.cfi_offset w30, -8
	.cfi_offset w19, -16
	.cfi_offset w20, -24
	.cfi_offset w21, -32
	.cfi_offset w22, -40
	.cfi_offset w28, -48
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
	add	x0, sp, #32             // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	add	x8, sp, #24             // =24
	add	x9, sp, #20             // =20
	add	x10, sp, #8             // =8
	str	x21, [sp, #24]
	str	w20, [sp, #20]
	str	x19, [sp, #8]
	stp	x8, x9, [x22, #408]
	str	x10, [x22, #424]
	ldr	x0, [x21]
	mov	w1, #1
	bl	clearok
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	wclear
	ldr	x8, [sp, #24]
	mov	w1, wzr
	ldr	x0, [x8]
	bl	clearok
	ldr	x8, [x22, #400]
	ldr	x0, [sp, #24]
	ldr	x1, [x8]
	bl	"ViWin_view-12"
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	wrefresh
	add	x1, sp, #32             // =32
	mov	w2, #65536
	mov	x0, x22
	bl	xmemcpy
	add	sp, sp, #16, lsl #12    // =65536
	add	sp, sp, #32             // =32
	ldp	x19, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x22, [sp], #48     // 16-byte Folded Reload
	ret
.Lfunc_end93:
	.size	15filer_lambda8, .Lfunc_end93-15filer_lambda8
	.cfi_endproc
                                        // -- End function
	.globl	list_each_ViWinp83_15filer // -- Begin function list_each_ViWinp83_15filer
	.p2align	2
	.type	list_each_ViWinp83_15filer,@function
list_each_ViWinp83_15filer:             // @list_each_ViWinp83_15filer
	.cfi_startproc
// %bb.0:                               // %entry
	str	x28, [sp, #-64]!        // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	sub	sp, sp, #16, lsl #12    // =65536
	sub	sp, sp, #32             // =32
	mov	x19, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w28, -64
	adrp	x22, gLVTable
	add	x22, x22, :lo12:gLVTable
	mov	x20, x1
	mov	x21, x0
	add	x0, x19, #32            // =32
	mov	w2, #65536
	mov	x1, x22
	bl	xmemcpy
	sub	x8, x29, #40            // =40
	add	x9, x19, #24            // =24
	stur	x21, [x29, #-40]
	str	x20, [x19, #24]
	stp	x8, x9, [x22, #408]
	ldr	x8, [x21]
	adrp	x20, gLVTable+416
	adrp	x21, gLVTable+424
	add	x10, x19, #16           // =16
	add	x11, x19, #12           // =12
	add	x20, x20, :lo12:gLVTable+416
	add	x21, x21, :lo12:gLVTable+424
	stp	x10, x11, [x22, #424]
	str	wzr, [x19, #12]
	str	x8, [x19, #16]
	ldr	x8, [x19, #16]
	cbz	x8, .LBB94_3
.LBB94_1:                               // %cond_then_block
                                        // =>This Inner Loop Header: Depth=1
	mov	x22, sp
	sub	x2, x22, #16            // =16
	mov	sp, x2
	ldp	x9, x8, [x20]
	str	x2, [x20, #24]
	sturb	wzr, [x22, #-16]
	ldr	x10, [x20, #16]
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	w1, [x10]
	ldr	x0, [x8]
	blr	x9
	ldurb	w8, [x22, #-16]
	cmp	w8, #1                  // =1
	b.eq	.LBB94_3
// %bb.2:                               // %cond_end
                                        //   in Loop: Header=BB94_1 Depth=1
	ldr	x8, [x21]
	ldr	x9, [x8]
	ldr	x9, [x9, #16]
	str	x9, [x8]
	ldr	x8, [x21, #8]
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x8, [x19, #16]
	cbnz	x8, .LBB94_1
.LBB94_3:                               // %cond_end_block
	adrp	x0, gLVTable
	add	x0, x0, :lo12:gLVTable
	add	x1, x19, #32            // =32
	mov	w2, #65536
	bl	xmemcpy
	sub	sp, x29, #48            // =48
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #64          // 8-byte Folded Reload
	ret
.Lfunc_end94:
	.size	list_each_ViWinp83_15filer, .Lfunc_end94-list_each_ViWinp83_15filer
	.cfi_endproc
                                        // -- End function
	.type	gLVTable,@object        // @gLVTable
	.local	gLVTable
	.comm	gLVTable,65536,8
	.type	.Lglobal_string,@object // @global_string
	.section	.rodata,"a",@progbits
.Lglobal_string:
	.asciz	"list%<int*%>"
	.size	.Lglobal_string, 13

	.type	.Lglobal_string.1,@object // @global_string.1
.Lglobal_string.1:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.1, 50

	.type	.Lglobal_string.2,@object // @global_string.2
.Lglobal_string.2:
	.asciz	"sublist_intp0_15filer"
	.size	.Lglobal_string.2, 22

	.type	.Lglobal_string.3,@object // @global_string.3
.Lglobal_string.3:
	.asciz	"list_sublist_intp0_15filer"
	.size	.Lglobal_string.3, 27

	.type	.Lglobal_string.4,@object // @global_string.4
.Lglobal_string.4:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.4, 18

	.type	.Lglobal_string.5,@object // @global_string.5
.Lglobal_string.5:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.5, 50

	.type	.Lglobal_string.6,@object // @global_string.6
.Lglobal_string.6:
	.asciz	"push_back_intp2_15filer"
	.size	.Lglobal_string.6, 24

	.type	.Lglobal_string.7,@object // @global_string.7
.Lglobal_string.7:
	.asciz	"list_push_back_intp2_15filer"
	.size	.Lglobal_string.7, 29

	.type	.Lglobal_string.8,@object // @global_string.8
.Lglobal_string.8:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.8, 18

	.type	.Lglobal_string.9,@object // @global_string.9
.Lglobal_string.9:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.9, 50

	.type	.Lglobal_string.10,@object // @global_string.10
.Lglobal_string.10:
	.asciz	"push_back_intp2_15filer"
	.size	.Lglobal_string.10, 24

	.type	.Lglobal_string.11,@object // @global_string.11
.Lglobal_string.11:
	.asciz	"list_push_back_intp2_15filer"
	.size	.Lglobal_string.11, 29

	.type	.Lglobal_string.12,@object // @global_string.12
.Lglobal_string.12:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.12, 18

	.type	.Lglobal_string.13,@object // @global_string.13
.Lglobal_string.13:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.13, 50

	.type	.Lglobal_string.14,@object // @global_string.14
.Lglobal_string.14:
	.asciz	"push_back_intp2_15filer"
	.size	.Lglobal_string.14, 24

	.type	.Lglobal_string.15,@object // @global_string.15
.Lglobal_string.15:
	.asciz	"list_push_back_intp2_15filer"
	.size	.Lglobal_string.15, 29

	.type	.Lglobal_string.16,@object // @global_string.16
.Lglobal_string.16:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.16, 18

	.type	.Lglobal_string.17,@object // @global_string.17
.Lglobal_string.17:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.17, 50

	.type	.Lglobal_string.18,@object // @global_string.18
.Lglobal_string.18:
	.asciz	"push_back_intp3_15filer"
	.size	.Lglobal_string.18, 24

	.type	.Lglobal_string.19,@object // @global_string.19
.Lglobal_string.19:
	.asciz	"list_push_back_intp3_15filer"
	.size	.Lglobal_string.19, 29

	.type	.Lglobal_string.20,@object // @global_string.20
.Lglobal_string.20:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.20, 18

	.type	.Lglobal_string.21,@object // @global_string.21
.Lglobal_string.21:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.21, 50

	.type	.Lglobal_string.22,@object // @global_string.22
.Lglobal_string.22:
	.asciz	"push_back_intp3_15filer"
	.size	.Lglobal_string.22, 24

	.type	.Lglobal_string.23,@object // @global_string.23
.Lglobal_string.23:
	.asciz	"list_push_back_intp3_15filer"
	.size	.Lglobal_string.23, 29

	.type	.Lglobal_string.24,@object // @global_string.24
.Lglobal_string.24:
	.asciz	"list_item%<int*%>"
	.size	.Lglobal_string.24, 18

	.type	.Lglobal_string.25,@object // @global_string.25
.Lglobal_string.25:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.25, 50

	.type	.Lglobal_string.26,@object // @global_string.26
.Lglobal_string.26:
	.asciz	"push_back_intp3_15filer"
	.size	.Lglobal_string.26, 24

	.type	.Lglobal_string.27,@object // @global_string.27
.Lglobal_string.27:
	.asciz	"list_push_back_intp3_15filer"
	.size	.Lglobal_string.27, 29

	.type	.Lglobal_string.28,@object // @global_string.28
.Lglobal_string.28:
	.asciz	" "
	.size	.Lglobal_string.28, 2

	.type	.Lglobal_string.29,@object // @global_string.29
.Lglobal_string.29:
	.asciz	"%ls"
	.size	.Lglobal_string.29, 4

	.type	.Lglobal_string.30,@object // @global_string.30
.Lglobal_string.30:
	.asciz	" "
	.size	.Lglobal_string.30, 2

	.type	.Lglobal_string.31,@object // @global_string.31
.Lglobal_string.31:
	.asciz	"%ls"
	.size	.Lglobal_string.31, 4

	.type	.Lglobal_string.32,@object // @global_string.32
.Lglobal_string.32:
	.asciz	"%ls"
	.size	.Lglobal_string.32, 4

	.type	.Lglobal_string.33,@object // @global_string.33
.Lglobal_string.33:
	.asciz	"%ls"
	.size	.Lglobal_string.33, 4

	.type	.Lglobal_string.34,@object // @global_string.34
.Lglobal_string.34:
	.asciz	"%ls"
	.size	.Lglobal_string.34, 4

	.type	.Lglobal_string.35,@object // @global_string.35
.Lglobal_string.35:
	.asciz	" "
	.size	.Lglobal_string.35, 2

	.type	.Lglobal_string.36,@object // @global_string.36
.Lglobal_string.36:
	.asciz	"%ls"
	.size	.Lglobal_string.36, 4

	.type	.Lglobal_string.37,@object // @global_string.37
.Lglobal_string.37:
	.asciz	" "
	.size	.Lglobal_string.37, 2

	.type	.Lglobal_string.38,@object // @global_string.38
.Lglobal_string.38:
	.asciz	"%ls"
	.size	.Lglobal_string.38, 4

	.type	.Lglobal_string.39,@object // @global_string.39
.Lglobal_string.39:
	.asciz	"%ls"
	.size	.Lglobal_string.39, 4

	.type	.Lglobal_string.40,@object // @global_string.40
.Lglobal_string.40:
	.asciz	"%ls"
	.size	.Lglobal_string.40, 4

	.type	.Lglobal_string.41,@object // @global_string.41
.Lglobal_string.41:
	.asciz	"%ls"
	.size	.Lglobal_string.41, 4

	.type	.Lglobal_string.42,@object // @global_string.42
.Lglobal_string.42:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.42, 14

	.type	.Lglobal_string.43,@object // @global_string.43
.Lglobal_string.43:
	.asciz	"15filer.nc"
	.size	.Lglobal_string.43, 11

	.type	.Lglobal_string.44,@object // @global_string.44
.Lglobal_string.44:
	.asciz	"cd"
	.size	.Lglobal_string.44, 3

	.type	.Lglobal_string.45,@object // @global_string.45
.Lglobal_string.45:
	.asciz	"ViFiler_cd"
	.size	.Lglobal_string.45, 11

	.type	.Lglobal_string.46,@object // @global_string.46
.Lglobal_string.46:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.46, 19

	.type	.Lglobal_string.47,@object // @global_string.47
.Lglobal_string.47:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.47, 50

	.type	.Lglobal_string.48,@object // @global_string.48
.Lglobal_string.48:
	.asciz	"push_back_charp10_15filer"
	.size	.Lglobal_string.48, 26

	.type	.Lglobal_string.49,@object // @global_string.49
.Lglobal_string.49:
	.asciz	"list_push_back_charp10_15filer"
	.size	.Lglobal_string.49, 31

	.type	.Lglobal_string.50,@object // @global_string.50
.Lglobal_string.50:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.50, 19

	.type	.Lglobal_string.51,@object // @global_string.51
.Lglobal_string.51:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.51, 50

	.type	.Lglobal_string.52,@object // @global_string.52
.Lglobal_string.52:
	.asciz	"push_back_charp10_15filer"
	.size	.Lglobal_string.52, 26

	.type	.Lglobal_string.53,@object // @global_string.53
.Lglobal_string.53:
	.asciz	"list_push_back_charp10_15filer"
	.size	.Lglobal_string.53, 31

	.type	.Lglobal_string.54,@object // @global_string.54
.Lglobal_string.54:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.54, 19

	.type	.Lglobal_string.55,@object // @global_string.55
.Lglobal_string.55:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.55, 50

	.type	.Lglobal_string.56,@object // @global_string.56
.Lglobal_string.56:
	.asciz	"push_back_charp10_15filer"
	.size	.Lglobal_string.56, 26

	.type	.Lglobal_string.57,@object // @global_string.57
.Lglobal_string.57:
	.asciz	"list_push_back_charp10_15filer"
	.size	.Lglobal_string.57, 31

	.type	.Lglobal_string.58,@object // @global_string.58
.Lglobal_string.58:
	.asciz	"."
	.size	.Lglobal_string.58, 2

	.type	.Lglobal_string.59,@object // @global_string.59
.Lglobal_string.59:
	.asciz	"."
	.size	.Lglobal_string.59, 2

	.type	.Lglobal_string.60,@object // @global_string.60
.Lglobal_string.60:
	.asciz	".."
	.size	.Lglobal_string.60, 3

	.type	.Lglobal_string.61,@object // @global_string.61
.Lglobal_string.61:
	.asciz	".."
	.size	.Lglobal_string.61, 3

	.type	.Lglobal_string.62,@object // @global_string.62
.Lglobal_string.62:
	.asciz	"."
	.size	.Lglobal_string.62, 2

	.type	.Lglobal_string.63,@object // @global_string.63
.Lglobal_string.63:
	.asciz	"."
	.size	.Lglobal_string.63, 2

	.type	.Lglobal_string.64,@object // @global_string.64
.Lglobal_string.64:
	.asciz	".."
	.size	.Lglobal_string.64, 3

	.type	.Lglobal_string.65,@object // @global_string.65
.Lglobal_string.65:
	.asciz	".."
	.size	.Lglobal_string.65, 3

	.type	.Lglobal_string.66,@object // @global_string.66
.Lglobal_string.66:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.66, 14

	.type	.Lglobal_string.67,@object // @global_string.67
.Lglobal_string.67:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.67, 50

	.type	.Lglobal_string.68,@object // @global_string.68
.Lglobal_string.68:
	.asciz	"clone_charp13_15filer"
	.size	.Lglobal_string.68, 22

	.type	.Lglobal_string.69,@object // @global_string.69
.Lglobal_string.69:
	.asciz	"list_clone_charp13_15filer"
	.size	.Lglobal_string.69, 27

	.type	.Lglobal_string.70,@object // @global_string.70
.Lglobal_string.70:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.70, 19

	.type	.Lglobal_string.71,@object // @global_string.71
.Lglobal_string.71:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.71, 50

	.type	.Lglobal_string.72,@object // @global_string.72
.Lglobal_string.72:
	.asciz	"push_back_charp15_15filer"
	.size	.Lglobal_string.72, 26

	.type	.Lglobal_string.73,@object // @global_string.73
.Lglobal_string.73:
	.asciz	"list_push_back_charp15_15filer"
	.size	.Lglobal_string.73, 31

	.type	.Lglobal_string.74,@object // @global_string.74
.Lglobal_string.74:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.74, 19

	.type	.Lglobal_string.75,@object // @global_string.75
.Lglobal_string.75:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.75, 50

	.type	.Lglobal_string.76,@object // @global_string.76
.Lglobal_string.76:
	.asciz	"push_back_charp15_15filer"
	.size	.Lglobal_string.76, 26

	.type	.Lglobal_string.77,@object // @global_string.77
.Lglobal_string.77:
	.asciz	"list_push_back_charp15_15filer"
	.size	.Lglobal_string.77, 31

	.type	.Lglobal_string.78,@object // @global_string.78
.Lglobal_string.78:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.78, 19

	.type	.Lglobal_string.79,@object // @global_string.79
.Lglobal_string.79:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.79, 50

	.type	.Lglobal_string.80,@object // @global_string.80
.Lglobal_string.80:
	.asciz	"push_back_charp15_15filer"
	.size	.Lglobal_string.80, 26

	.type	.Lglobal_string.81,@object // @global_string.81
.Lglobal_string.81:
	.asciz	"list_push_back_charp15_15filer"
	.size	.Lglobal_string.81, 31

	.type	.Lglobal_string.82,@object // @global_string.82
.Lglobal_string.82:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.82, 19

	.type	.Lglobal_string.83,@object // @global_string.83
.Lglobal_string.83:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.83, 50

	.type	.Lglobal_string.84,@object // @global_string.84
.Lglobal_string.84:
	.asciz	"push_back_charp16_15filer"
	.size	.Lglobal_string.84, 26

	.type	.Lglobal_string.85,@object // @global_string.85
.Lglobal_string.85:
	.asciz	"list_push_back_charp16_15filer"
	.size	.Lglobal_string.85, 31

	.type	.Lglobal_string.86,@object // @global_string.86
.Lglobal_string.86:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.86, 19

	.type	.Lglobal_string.87,@object // @global_string.87
.Lglobal_string.87:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.87, 50

	.type	.Lglobal_string.88,@object // @global_string.88
.Lglobal_string.88:
	.asciz	"push_back_charp16_15filer"
	.size	.Lglobal_string.88, 26

	.type	.Lglobal_string.89,@object // @global_string.89
.Lglobal_string.89:
	.asciz	"list_push_back_charp16_15filer"
	.size	.Lglobal_string.89, 31

	.type	.Lglobal_string.90,@object // @global_string.90
.Lglobal_string.90:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.90, 19

	.type	.Lglobal_string.91,@object // @global_string.91
.Lglobal_string.91:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.91, 50

	.type	.Lglobal_string.92,@object // @global_string.92
.Lglobal_string.92:
	.asciz	"push_back_charp16_15filer"
	.size	.Lglobal_string.92, 26

	.type	.Lglobal_string.93,@object // @global_string.93
.Lglobal_string.93:
	.asciz	"list_push_back_charp16_15filer"
	.size	.Lglobal_string.93, 31

	.type	.Lglobal_string.94,@object // @global_string.94
.Lglobal_string.94:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.94, 14

	.type	.Lglobal_string.95,@object // @global_string.95
.Lglobal_string.95:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.95, 50

	.type	.Lglobal_string.96,@object // @global_string.96
.Lglobal_string.96:
	.asciz	"clone_charp17_15filer"
	.size	.Lglobal_string.96, 22

	.type	.Lglobal_string.97,@object // @global_string.97
.Lglobal_string.97:
	.asciz	"list_clone_charp17_15filer"
	.size	.Lglobal_string.97, 27

	.type	.Lglobal_string.98,@object // @global_string.98
.Lglobal_string.98:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.98, 19

	.type	.Lglobal_string.99,@object // @global_string.99
.Lglobal_string.99:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.99, 50

	.type	.Lglobal_string.100,@object // @global_string.100
.Lglobal_string.100:
	.asciz	"push_back_charp19_15filer"
	.size	.Lglobal_string.100, 26

	.type	.Lglobal_string.101,@object // @global_string.101
.Lglobal_string.101:
	.asciz	"list_push_back_charp19_15filer"
	.size	.Lglobal_string.101, 31

	.type	.Lglobal_string.102,@object // @global_string.102
.Lglobal_string.102:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.102, 19

	.type	.Lglobal_string.103,@object // @global_string.103
.Lglobal_string.103:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.103, 50

	.type	.Lglobal_string.104,@object // @global_string.104
.Lglobal_string.104:
	.asciz	"push_back_charp19_15filer"
	.size	.Lglobal_string.104, 26

	.type	.Lglobal_string.105,@object // @global_string.105
.Lglobal_string.105:
	.asciz	"list_push_back_charp19_15filer"
	.size	.Lglobal_string.105, 31

	.type	.Lglobal_string.106,@object // @global_string.106
.Lglobal_string.106:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.106, 19

	.type	.Lglobal_string.107,@object // @global_string.107
.Lglobal_string.107:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.107, 50

	.type	.Lglobal_string.108,@object // @global_string.108
.Lglobal_string.108:
	.asciz	"push_back_charp19_15filer"
	.size	.Lglobal_string.108, 26

	.type	.Lglobal_string.109,@object // @global_string.109
.Lglobal_string.109:
	.asciz	"list_push_back_charp19_15filer"
	.size	.Lglobal_string.109, 31

	.type	.Lglobal_string.110,@object // @global_string.110
.Lglobal_string.110:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.110, 19

	.type	.Lglobal_string.111,@object // @global_string.111
.Lglobal_string.111:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.111, 50

	.type	.Lglobal_string.112,@object // @global_string.112
.Lglobal_string.112:
	.asciz	"push_back_charp20_15filer"
	.size	.Lglobal_string.112, 26

	.type	.Lglobal_string.113,@object // @global_string.113
.Lglobal_string.113:
	.asciz	"list_push_back_charp20_15filer"
	.size	.Lglobal_string.113, 31

	.type	.Lglobal_string.114,@object // @global_string.114
.Lglobal_string.114:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.114, 19

	.type	.Lglobal_string.115,@object // @global_string.115
.Lglobal_string.115:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.115, 50

	.type	.Lglobal_string.116,@object // @global_string.116
.Lglobal_string.116:
	.asciz	"push_back_charp20_15filer"
	.size	.Lglobal_string.116, 26

	.type	.Lglobal_string.117,@object // @global_string.117
.Lglobal_string.117:
	.asciz	"list_push_back_charp20_15filer"
	.size	.Lglobal_string.117, 31

	.type	.Lglobal_string.118,@object // @global_string.118
.Lglobal_string.118:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.118, 19

	.type	.Lglobal_string.119,@object // @global_string.119
.Lglobal_string.119:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.119, 50

	.type	.Lglobal_string.120,@object // @global_string.120
.Lglobal_string.120:
	.asciz	"push_back_charp20_15filer"
	.size	.Lglobal_string.120, 26

	.type	.Lglobal_string.121,@object // @global_string.121
.Lglobal_string.121:
	.asciz	"list_push_back_charp20_15filer"
	.size	.Lglobal_string.121, 31

	.type	.Lglobal_string.122,@object // @global_string.122
.Lglobal_string.122:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.122, 14

	.type	.Lglobal_string.123,@object // @global_string.123
.Lglobal_string.123:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.123, 50

	.type	.Lglobal_string.124,@object // @global_string.124
.Lglobal_string.124:
	.asciz	"merge_sort2_charp12_15filer"
	.size	.Lglobal_string.124, 28

	.type	.Lglobal_string.125,@object // @global_string.125
.Lglobal_string.125:
	.asciz	"list_merge_sort2_charp12_15filer"
	.size	.Lglobal_string.125, 33

	.type	.Lglobal_string.126,@object // @global_string.126
.Lglobal_string.126:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.126, 14

	.type	.Lglobal_string.127,@object // @global_string.127
.Lglobal_string.127:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.127, 50

	.type	.Lglobal_string.128,@object // @global_string.128
.Lglobal_string.128:
	.asciz	"merge_sort2_charp12_15filer"
	.size	.Lglobal_string.128, 28

	.type	.Lglobal_string.129,@object // @global_string.129
.Lglobal_string.129:
	.asciz	"list_merge_sort2_charp12_15filer"
	.size	.Lglobal_string.129, 33

	.type	.Lglobal_string.130,@object // @global_string.130
.Lglobal_string.130:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.130, 19

	.type	.Lglobal_string.131,@object // @global_string.131
.Lglobal_string.131:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.131, 50

	.type	.Lglobal_string.132,@object // @global_string.132
.Lglobal_string.132:
	.asciz	"push_back_charp23_15filer"
	.size	.Lglobal_string.132, 26

	.type	.Lglobal_string.133,@object // @global_string.133
.Lglobal_string.133:
	.asciz	"list_push_back_charp23_15filer"
	.size	.Lglobal_string.133, 31

	.type	.Lglobal_string.134,@object // @global_string.134
.Lglobal_string.134:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.134, 19

	.type	.Lglobal_string.135,@object // @global_string.135
.Lglobal_string.135:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.135, 50

	.type	.Lglobal_string.136,@object // @global_string.136
.Lglobal_string.136:
	.asciz	"push_back_charp23_15filer"
	.size	.Lglobal_string.136, 26

	.type	.Lglobal_string.137,@object // @global_string.137
.Lglobal_string.137:
	.asciz	"list_push_back_charp23_15filer"
	.size	.Lglobal_string.137, 31

	.type	.Lglobal_string.138,@object // @global_string.138
.Lglobal_string.138:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.138, 19

	.type	.Lglobal_string.139,@object // @global_string.139
.Lglobal_string.139:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.139, 50

	.type	.Lglobal_string.140,@object // @global_string.140
.Lglobal_string.140:
	.asciz	"push_back_charp23_15filer"
	.size	.Lglobal_string.140, 26

	.type	.Lglobal_string.141,@object // @global_string.141
.Lglobal_string.141:
	.asciz	"list_push_back_charp23_15filer"
	.size	.Lglobal_string.141, 31

	.type	.Lglobal_string.142,@object // @global_string.142
.Lglobal_string.142:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.142, 19

	.type	.Lglobal_string.143,@object // @global_string.143
.Lglobal_string.143:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.143, 50

	.type	.Lglobal_string.144,@object // @global_string.144
.Lglobal_string.144:
	.asciz	"push_back_charp24_15filer"
	.size	.Lglobal_string.144, 26

	.type	.Lglobal_string.145,@object // @global_string.145
.Lglobal_string.145:
	.asciz	"list_push_back_charp24_15filer"
	.size	.Lglobal_string.145, 31

	.type	.Lglobal_string.146,@object // @global_string.146
.Lglobal_string.146:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.146, 19

	.type	.Lglobal_string.147,@object // @global_string.147
.Lglobal_string.147:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.147, 50

	.type	.Lglobal_string.148,@object // @global_string.148
.Lglobal_string.148:
	.asciz	"push_back_charp24_15filer"
	.size	.Lglobal_string.148, 26

	.type	.Lglobal_string.149,@object // @global_string.149
.Lglobal_string.149:
	.asciz	"list_push_back_charp24_15filer"
	.size	.Lglobal_string.149, 31

	.type	.Lglobal_string.150,@object // @global_string.150
.Lglobal_string.150:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.150, 19

	.type	.Lglobal_string.151,@object // @global_string.151
.Lglobal_string.151:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.151, 50

	.type	.Lglobal_string.152,@object // @global_string.152
.Lglobal_string.152:
	.asciz	"push_back_charp24_15filer"
	.size	.Lglobal_string.152, 26

	.type	.Lglobal_string.153,@object // @global_string.153
.Lglobal_string.153:
	.asciz	"list_push_back_charp24_15filer"
	.size	.Lglobal_string.153, 31

	.type	.Lglobal_string.154,@object // @global_string.154
.Lglobal_string.154:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.154, 19

	.type	.Lglobal_string.155,@object // @global_string.155
.Lglobal_string.155:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.155, 50

	.type	.Lglobal_string.156,@object // @global_string.156
.Lglobal_string.156:
	.asciz	"push_back_charp25_15filer"
	.size	.Lglobal_string.156, 26

	.type	.Lglobal_string.157,@object // @global_string.157
.Lglobal_string.157:
	.asciz	"list_push_back_charp25_15filer"
	.size	.Lglobal_string.157, 31

	.type	.Lglobal_string.158,@object // @global_string.158
.Lglobal_string.158:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.158, 19

	.type	.Lglobal_string.159,@object // @global_string.159
.Lglobal_string.159:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.159, 50

	.type	.Lglobal_string.160,@object // @global_string.160
.Lglobal_string.160:
	.asciz	"push_back_charp25_15filer"
	.size	.Lglobal_string.160, 26

	.type	.Lglobal_string.161,@object // @global_string.161
.Lglobal_string.161:
	.asciz	"list_push_back_charp25_15filer"
	.size	.Lglobal_string.161, 31

	.type	.Lglobal_string.162,@object // @global_string.162
.Lglobal_string.162:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.162, 19

	.type	.Lglobal_string.163,@object // @global_string.163
.Lglobal_string.163:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.163, 50

	.type	.Lglobal_string.164,@object // @global_string.164
.Lglobal_string.164:
	.asciz	"push_back_charp25_15filer"
	.size	.Lglobal_string.164, 26

	.type	.Lglobal_string.165,@object // @global_string.165
.Lglobal_string.165:
	.asciz	"list_push_back_charp25_15filer"
	.size	.Lglobal_string.165, 31

	.type	.Lglobal_string.166,@object // @global_string.166
.Lglobal_string.166:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.166, 19

	.type	.Lglobal_string.167,@object // @global_string.167
.Lglobal_string.167:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.167, 50

	.type	.Lglobal_string.168,@object // @global_string.168
.Lglobal_string.168:
	.asciz	"push_back_charp26_15filer"
	.size	.Lglobal_string.168, 26

	.type	.Lglobal_string.169,@object // @global_string.169
.Lglobal_string.169:
	.asciz	"list_push_back_charp26_15filer"
	.size	.Lglobal_string.169, 31

	.type	.Lglobal_string.170,@object // @global_string.170
.Lglobal_string.170:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.170, 19

	.type	.Lglobal_string.171,@object // @global_string.171
.Lglobal_string.171:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.171, 50

	.type	.Lglobal_string.172,@object // @global_string.172
.Lglobal_string.172:
	.asciz	"push_back_charp26_15filer"
	.size	.Lglobal_string.172, 26

	.type	.Lglobal_string.173,@object // @global_string.173
.Lglobal_string.173:
	.asciz	"list_push_back_charp26_15filer"
	.size	.Lglobal_string.173, 31

	.type	.Lglobal_string.174,@object // @global_string.174
.Lglobal_string.174:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.174, 19

	.type	.Lglobal_string.175,@object // @global_string.175
.Lglobal_string.175:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.175, 50

	.type	.Lglobal_string.176,@object // @global_string.176
.Lglobal_string.176:
	.asciz	"push_back_charp26_15filer"
	.size	.Lglobal_string.176, 26

	.type	.Lglobal_string.177,@object // @global_string.177
.Lglobal_string.177:
	.asciz	"list_push_back_charp26_15filer"
	.size	.Lglobal_string.177, 31

	.type	.Lglobal_string.178,@object // @global_string.178
.Lglobal_string.178:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.178, 19

	.type	.Lglobal_string.179,@object // @global_string.179
.Lglobal_string.179:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.179, 50

	.type	.Lglobal_string.180,@object // @global_string.180
.Lglobal_string.180:
	.asciz	"push_back_charp27_15filer"
	.size	.Lglobal_string.180, 26

	.type	.Lglobal_string.181,@object // @global_string.181
.Lglobal_string.181:
	.asciz	"list_push_back_charp27_15filer"
	.size	.Lglobal_string.181, 31

	.type	.Lglobal_string.182,@object // @global_string.182
.Lglobal_string.182:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.182, 19

	.type	.Lglobal_string.183,@object // @global_string.183
.Lglobal_string.183:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.183, 50

	.type	.Lglobal_string.184,@object // @global_string.184
.Lglobal_string.184:
	.asciz	"push_back_charp27_15filer"
	.size	.Lglobal_string.184, 26

	.type	.Lglobal_string.185,@object // @global_string.185
.Lglobal_string.185:
	.asciz	"list_push_back_charp27_15filer"
	.size	.Lglobal_string.185, 31

	.type	.Lglobal_string.186,@object // @global_string.186
.Lglobal_string.186:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.186, 19

	.type	.Lglobal_string.187,@object // @global_string.187
.Lglobal_string.187:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.187, 50

	.type	.Lglobal_string.188,@object // @global_string.188
.Lglobal_string.188:
	.asciz	"push_back_charp27_15filer"
	.size	.Lglobal_string.188, 26

	.type	.Lglobal_string.189,@object // @global_string.189
.Lglobal_string.189:
	.asciz	"list_push_back_charp27_15filer"
	.size	.Lglobal_string.189, 31

	.type	.Lglobal_string.190,@object // @global_string.190
.Lglobal_string.190:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.190, 19

	.type	.Lglobal_string.191,@object // @global_string.191
.Lglobal_string.191:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.191, 50

	.type	.Lglobal_string.192,@object // @global_string.192
.Lglobal_string.192:
	.asciz	"push_back_charp28_15filer"
	.size	.Lglobal_string.192, 26

	.type	.Lglobal_string.193,@object // @global_string.193
.Lglobal_string.193:
	.asciz	"list_push_back_charp28_15filer"
	.size	.Lglobal_string.193, 31

	.type	.Lglobal_string.194,@object // @global_string.194
.Lglobal_string.194:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.194, 19

	.type	.Lglobal_string.195,@object // @global_string.195
.Lglobal_string.195:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.195, 50

	.type	.Lglobal_string.196,@object // @global_string.196
.Lglobal_string.196:
	.asciz	"push_back_charp28_15filer"
	.size	.Lglobal_string.196, 26

	.type	.Lglobal_string.197,@object // @global_string.197
.Lglobal_string.197:
	.asciz	"list_push_back_charp28_15filer"
	.size	.Lglobal_string.197, 31

	.type	.Lglobal_string.198,@object // @global_string.198
.Lglobal_string.198:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.198, 19

	.type	.Lglobal_string.199,@object // @global_string.199
.Lglobal_string.199:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.199, 50

	.type	.Lglobal_string.200,@object // @global_string.200
.Lglobal_string.200:
	.asciz	"push_back_charp28_15filer"
	.size	.Lglobal_string.200, 26

	.type	.Lglobal_string.201,@object // @global_string.201
.Lglobal_string.201:
	.asciz	"list_push_back_charp28_15filer"
	.size	.Lglobal_string.201, 31

	.type	.Lglobal_string.202,@object // @global_string.202
.Lglobal_string.202:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.202, 14

	.type	.Lglobal_string.203,@object // @global_string.203
.Lglobal_string.203:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.203, 50

	.type	.Lglobal_string.204,@object // @global_string.204
.Lglobal_string.204:
	.asciz	"merge_list2_charp33_15filer"
	.size	.Lglobal_string.204, 28

	.type	.Lglobal_string.205,@object // @global_string.205
.Lglobal_string.205:
	.asciz	"list_merge_list2_charp33_15filer"
	.size	.Lglobal_string.205, 33

	.type	.Lglobal_string.206,@object // @global_string.206
.Lglobal_string.206:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.206, 19

	.type	.Lglobal_string.207,@object // @global_string.207
.Lglobal_string.207:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.207, 50

	.type	.Lglobal_string.208,@object // @global_string.208
.Lglobal_string.208:
	.asciz	"push_back_charp35_15filer"
	.size	.Lglobal_string.208, 26

	.type	.Lglobal_string.209,@object // @global_string.209
.Lglobal_string.209:
	.asciz	"list_push_back_charp35_15filer"
	.size	.Lglobal_string.209, 31

	.type	.Lglobal_string.210,@object // @global_string.210
.Lglobal_string.210:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.210, 19

	.type	.Lglobal_string.211,@object // @global_string.211
.Lglobal_string.211:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.211, 50

	.type	.Lglobal_string.212,@object // @global_string.212
.Lglobal_string.212:
	.asciz	"push_back_charp35_15filer"
	.size	.Lglobal_string.212, 26

	.type	.Lglobal_string.213,@object // @global_string.213
.Lglobal_string.213:
	.asciz	"list_push_back_charp35_15filer"
	.size	.Lglobal_string.213, 31

	.type	.Lglobal_string.214,@object // @global_string.214
.Lglobal_string.214:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.214, 19

	.type	.Lglobal_string.215,@object // @global_string.215
.Lglobal_string.215:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.215, 50

	.type	.Lglobal_string.216,@object // @global_string.216
.Lglobal_string.216:
	.asciz	"push_back_charp35_15filer"
	.size	.Lglobal_string.216, 26

	.type	.Lglobal_string.217,@object // @global_string.217
.Lglobal_string.217:
	.asciz	"list_push_back_charp35_15filer"
	.size	.Lglobal_string.217, 31

	.type	.Lglobal_string.218,@object // @global_string.218
.Lglobal_string.218:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.218, 19

	.type	.Lglobal_string.219,@object // @global_string.219
.Lglobal_string.219:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.219, 50

	.type	.Lglobal_string.220,@object // @global_string.220
.Lglobal_string.220:
	.asciz	"push_back_charp36_15filer"
	.size	.Lglobal_string.220, 26

	.type	.Lglobal_string.221,@object // @global_string.221
.Lglobal_string.221:
	.asciz	"list_push_back_charp36_15filer"
	.size	.Lglobal_string.221, 31

	.type	.Lglobal_string.222,@object // @global_string.222
.Lglobal_string.222:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.222, 19

	.type	.Lglobal_string.223,@object // @global_string.223
.Lglobal_string.223:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.223, 50

	.type	.Lglobal_string.224,@object // @global_string.224
.Lglobal_string.224:
	.asciz	"push_back_charp36_15filer"
	.size	.Lglobal_string.224, 26

	.type	.Lglobal_string.225,@object // @global_string.225
.Lglobal_string.225:
	.asciz	"list_push_back_charp36_15filer"
	.size	.Lglobal_string.225, 31

	.type	.Lglobal_string.226,@object // @global_string.226
.Lglobal_string.226:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.226, 19

	.type	.Lglobal_string.227,@object // @global_string.227
.Lglobal_string.227:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.227, 50

	.type	.Lglobal_string.228,@object // @global_string.228
.Lglobal_string.228:
	.asciz	"push_back_charp36_15filer"
	.size	.Lglobal_string.228, 26

	.type	.Lglobal_string.229,@object // @global_string.229
.Lglobal_string.229:
	.asciz	"list_push_back_charp36_15filer"
	.size	.Lglobal_string.229, 31

	.type	.Lglobal_string.230,@object // @global_string.230
.Lglobal_string.230:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.230, 19

	.type	.Lglobal_string.231,@object // @global_string.231
.Lglobal_string.231:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.231, 50

	.type	.Lglobal_string.232,@object // @global_string.232
.Lglobal_string.232:
	.asciz	"push_back_charp37_15filer"
	.size	.Lglobal_string.232, 26

	.type	.Lglobal_string.233,@object // @global_string.233
.Lglobal_string.233:
	.asciz	"list_push_back_charp37_15filer"
	.size	.Lglobal_string.233, 31

	.type	.Lglobal_string.234,@object // @global_string.234
.Lglobal_string.234:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.234, 19

	.type	.Lglobal_string.235,@object // @global_string.235
.Lglobal_string.235:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.235, 50

	.type	.Lglobal_string.236,@object // @global_string.236
.Lglobal_string.236:
	.asciz	"push_back_charp37_15filer"
	.size	.Lglobal_string.236, 26

	.type	.Lglobal_string.237,@object // @global_string.237
.Lglobal_string.237:
	.asciz	"list_push_back_charp37_15filer"
	.size	.Lglobal_string.237, 31

	.type	.Lglobal_string.238,@object // @global_string.238
.Lglobal_string.238:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.238, 19

	.type	.Lglobal_string.239,@object // @global_string.239
.Lglobal_string.239:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.239, 50

	.type	.Lglobal_string.240,@object // @global_string.240
.Lglobal_string.240:
	.asciz	"push_back_charp37_15filer"
	.size	.Lglobal_string.240, 26

	.type	.Lglobal_string.241,@object // @global_string.241
.Lglobal_string.241:
	.asciz	"list_push_back_charp37_15filer"
	.size	.Lglobal_string.241, 31

	.type	.Lglobal_string.242,@object // @global_string.242
.Lglobal_string.242:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.242, 19

	.type	.Lglobal_string.243,@object // @global_string.243
.Lglobal_string.243:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.243, 50

	.type	.Lglobal_string.244,@object // @global_string.244
.Lglobal_string.244:
	.asciz	"push_back_charp38_15filer"
	.size	.Lglobal_string.244, 26

	.type	.Lglobal_string.245,@object // @global_string.245
.Lglobal_string.245:
	.asciz	"list_push_back_charp38_15filer"
	.size	.Lglobal_string.245, 31

	.type	.Lglobal_string.246,@object // @global_string.246
.Lglobal_string.246:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.246, 19

	.type	.Lglobal_string.247,@object // @global_string.247
.Lglobal_string.247:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.247, 50

	.type	.Lglobal_string.248,@object // @global_string.248
.Lglobal_string.248:
	.asciz	"push_back_charp38_15filer"
	.size	.Lglobal_string.248, 26

	.type	.Lglobal_string.249,@object // @global_string.249
.Lglobal_string.249:
	.asciz	"list_push_back_charp38_15filer"
	.size	.Lglobal_string.249, 31

	.type	.Lglobal_string.250,@object // @global_string.250
.Lglobal_string.250:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.250, 19

	.type	.Lglobal_string.251,@object // @global_string.251
.Lglobal_string.251:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.251, 50

	.type	.Lglobal_string.252,@object // @global_string.252
.Lglobal_string.252:
	.asciz	"push_back_charp38_15filer"
	.size	.Lglobal_string.252, 26

	.type	.Lglobal_string.253,@object // @global_string.253
.Lglobal_string.253:
	.asciz	"list_push_back_charp38_15filer"
	.size	.Lglobal_string.253, 31

	.type	.Lglobal_string.254,@object // @global_string.254
.Lglobal_string.254:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.254, 19

	.type	.Lglobal_string.255,@object // @global_string.255
.Lglobal_string.255:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.255, 50

	.type	.Lglobal_string.256,@object // @global_string.256
.Lglobal_string.256:
	.asciz	"push_back_charp39_15filer"
	.size	.Lglobal_string.256, 26

	.type	.Lglobal_string.257,@object // @global_string.257
.Lglobal_string.257:
	.asciz	"list_push_back_charp39_15filer"
	.size	.Lglobal_string.257, 31

	.type	.Lglobal_string.258,@object // @global_string.258
.Lglobal_string.258:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.258, 19

	.type	.Lglobal_string.259,@object // @global_string.259
.Lglobal_string.259:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.259, 50

	.type	.Lglobal_string.260,@object // @global_string.260
.Lglobal_string.260:
	.asciz	"push_back_charp39_15filer"
	.size	.Lglobal_string.260, 26

	.type	.Lglobal_string.261,@object // @global_string.261
.Lglobal_string.261:
	.asciz	"list_push_back_charp39_15filer"
	.size	.Lglobal_string.261, 31

	.type	.Lglobal_string.262,@object // @global_string.262
.Lglobal_string.262:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.262, 19

	.type	.Lglobal_string.263,@object // @global_string.263
.Lglobal_string.263:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.263, 50

	.type	.Lglobal_string.264,@object // @global_string.264
.Lglobal_string.264:
	.asciz	"push_back_charp39_15filer"
	.size	.Lglobal_string.264, 26

	.type	.Lglobal_string.265,@object // @global_string.265
.Lglobal_string.265:
	.asciz	"list_push_back_charp39_15filer"
	.size	.Lglobal_string.265, 31

	.type	.Lglobal_string.266,@object // @global_string.266
.Lglobal_string.266:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.266, 19

	.type	.Lglobal_string.267,@object // @global_string.267
.Lglobal_string.267:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.267, 50

	.type	.Lglobal_string.268,@object // @global_string.268
.Lglobal_string.268:
	.asciz	"push_back_charp40_15filer"
	.size	.Lglobal_string.268, 26

	.type	.Lglobal_string.269,@object // @global_string.269
.Lglobal_string.269:
	.asciz	"list_push_back_charp40_15filer"
	.size	.Lglobal_string.269, 31

	.type	.Lglobal_string.270,@object // @global_string.270
.Lglobal_string.270:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.270, 19

	.type	.Lglobal_string.271,@object // @global_string.271
.Lglobal_string.271:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.271, 50

	.type	.Lglobal_string.272,@object // @global_string.272
.Lglobal_string.272:
	.asciz	"push_back_charp40_15filer"
	.size	.Lglobal_string.272, 26

	.type	.Lglobal_string.273,@object // @global_string.273
.Lglobal_string.273:
	.asciz	"list_push_back_charp40_15filer"
	.size	.Lglobal_string.273, 31

	.type	.Lglobal_string.274,@object // @global_string.274
.Lglobal_string.274:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.274, 19

	.type	.Lglobal_string.275,@object // @global_string.275
.Lglobal_string.275:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.275, 50

	.type	.Lglobal_string.276,@object // @global_string.276
.Lglobal_string.276:
	.asciz	"push_back_charp40_15filer"
	.size	.Lglobal_string.276, 26

	.type	.Lglobal_string.277,@object // @global_string.277
.Lglobal_string.277:
	.asciz	"list_push_back_charp40_15filer"
	.size	.Lglobal_string.277, 31

	.type	.Lglobal_string.278,@object // @global_string.278
.Lglobal_string.278:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.278, 19

	.type	.Lglobal_string.279,@object // @global_string.279
.Lglobal_string.279:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.279, 50

	.type	.Lglobal_string.280,@object // @global_string.280
.Lglobal_string.280:
	.asciz	"push_back_charp41_15filer"
	.size	.Lglobal_string.280, 26

	.type	.Lglobal_string.281,@object // @global_string.281
.Lglobal_string.281:
	.asciz	"list_push_back_charp41_15filer"
	.size	.Lglobal_string.281, 31

	.type	.Lglobal_string.282,@object // @global_string.282
.Lglobal_string.282:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.282, 19

	.type	.Lglobal_string.283,@object // @global_string.283
.Lglobal_string.283:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.283, 50

	.type	.Lglobal_string.284,@object // @global_string.284
.Lglobal_string.284:
	.asciz	"push_back_charp41_15filer"
	.size	.Lglobal_string.284, 26

	.type	.Lglobal_string.285,@object // @global_string.285
.Lglobal_string.285:
	.asciz	"list_push_back_charp41_15filer"
	.size	.Lglobal_string.285, 31

	.type	.Lglobal_string.286,@object // @global_string.286
.Lglobal_string.286:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.286, 19

	.type	.Lglobal_string.287,@object // @global_string.287
.Lglobal_string.287:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.287, 50

	.type	.Lglobal_string.288,@object // @global_string.288
.Lglobal_string.288:
	.asciz	"push_back_charp41_15filer"
	.size	.Lglobal_string.288, 26

	.type	.Lglobal_string.289,@object // @global_string.289
.Lglobal_string.289:
	.asciz	"list_push_back_charp41_15filer"
	.size	.Lglobal_string.289, 31

	.type	.Lglobal_string.290,@object // @global_string.290
.Lglobal_string.290:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.290, 19

	.type	.Lglobal_string.291,@object // @global_string.291
.Lglobal_string.291:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.291, 50

	.type	.Lglobal_string.292,@object // @global_string.292
.Lglobal_string.292:
	.asciz	"push_back_charp42_15filer"
	.size	.Lglobal_string.292, 26

	.type	.Lglobal_string.293,@object // @global_string.293
.Lglobal_string.293:
	.asciz	"list_push_back_charp42_15filer"
	.size	.Lglobal_string.293, 31

	.type	.Lglobal_string.294,@object // @global_string.294
.Lglobal_string.294:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.294, 19

	.type	.Lglobal_string.295,@object // @global_string.295
.Lglobal_string.295:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.295, 50

	.type	.Lglobal_string.296,@object // @global_string.296
.Lglobal_string.296:
	.asciz	"push_back_charp42_15filer"
	.size	.Lglobal_string.296, 26

	.type	.Lglobal_string.297,@object // @global_string.297
.Lglobal_string.297:
	.asciz	"list_push_back_charp42_15filer"
	.size	.Lglobal_string.297, 31

	.type	.Lglobal_string.298,@object // @global_string.298
.Lglobal_string.298:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.298, 19

	.type	.Lglobal_string.299,@object // @global_string.299
.Lglobal_string.299:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.299, 50

	.type	.Lglobal_string.300,@object // @global_string.300
.Lglobal_string.300:
	.asciz	"push_back_charp42_15filer"
	.size	.Lglobal_string.300, 26

	.type	.Lglobal_string.301,@object // @global_string.301
.Lglobal_string.301:
	.asciz	"list_push_back_charp42_15filer"
	.size	.Lglobal_string.301, 31

	.type	.Lglobal_string.302,@object // @global_string.302
.Lglobal_string.302:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.302, 14

	.type	.Lglobal_string.303,@object // @global_string.303
.Lglobal_string.303:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.303, 50

	.type	.Lglobal_string.304,@object // @global_string.304
.Lglobal_string.304:
	.asciz	"sublist_charp53_15filer"
	.size	.Lglobal_string.304, 24

	.type	.Lglobal_string.305,@object // @global_string.305
.Lglobal_string.305:
	.asciz	"list_sublist_charp53_15filer"
	.size	.Lglobal_string.305, 29

	.type	.Lglobal_string.306,@object // @global_string.306
.Lglobal_string.306:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.306, 19

	.type	.Lglobal_string.307,@object // @global_string.307
.Lglobal_string.307:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.307, 50

	.type	.Lglobal_string.308,@object // @global_string.308
.Lglobal_string.308:
	.asciz	"push_back_charp55_15filer"
	.size	.Lglobal_string.308, 26

	.type	.Lglobal_string.309,@object // @global_string.309
.Lglobal_string.309:
	.asciz	"list_push_back_charp55_15filer"
	.size	.Lglobal_string.309, 31

	.type	.Lglobal_string.310,@object // @global_string.310
.Lglobal_string.310:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.310, 19

	.type	.Lglobal_string.311,@object // @global_string.311
.Lglobal_string.311:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.311, 50

	.type	.Lglobal_string.312,@object // @global_string.312
.Lglobal_string.312:
	.asciz	"push_back_charp55_15filer"
	.size	.Lglobal_string.312, 26

	.type	.Lglobal_string.313,@object // @global_string.313
.Lglobal_string.313:
	.asciz	"list_push_back_charp55_15filer"
	.size	.Lglobal_string.313, 31

	.type	.Lglobal_string.314,@object // @global_string.314
.Lglobal_string.314:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.314, 19

	.type	.Lglobal_string.315,@object // @global_string.315
.Lglobal_string.315:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.315, 50

	.type	.Lglobal_string.316,@object // @global_string.316
.Lglobal_string.316:
	.asciz	"push_back_charp55_15filer"
	.size	.Lglobal_string.316, 26

	.type	.Lglobal_string.317,@object // @global_string.317
.Lglobal_string.317:
	.asciz	"list_push_back_charp55_15filer"
	.size	.Lglobal_string.317, 31

	.type	.Lglobal_string.318,@object // @global_string.318
.Lglobal_string.318:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.318, 19

	.type	.Lglobal_string.319,@object // @global_string.319
.Lglobal_string.319:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.319, 50

	.type	.Lglobal_string.320,@object // @global_string.320
.Lglobal_string.320:
	.asciz	"push_back_charp56_15filer"
	.size	.Lglobal_string.320, 26

	.type	.Lglobal_string.321,@object // @global_string.321
.Lglobal_string.321:
	.asciz	"list_push_back_charp56_15filer"
	.size	.Lglobal_string.321, 31

	.type	.Lglobal_string.322,@object // @global_string.322
.Lglobal_string.322:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.322, 19

	.type	.Lglobal_string.323,@object // @global_string.323
.Lglobal_string.323:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.323, 50

	.type	.Lglobal_string.324,@object // @global_string.324
.Lglobal_string.324:
	.asciz	"push_back_charp56_15filer"
	.size	.Lglobal_string.324, 26

	.type	.Lglobal_string.325,@object // @global_string.325
.Lglobal_string.325:
	.asciz	"list_push_back_charp56_15filer"
	.size	.Lglobal_string.325, 31

	.type	.Lglobal_string.326,@object // @global_string.326
.Lglobal_string.326:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.326, 19

	.type	.Lglobal_string.327,@object // @global_string.327
.Lglobal_string.327:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.327, 50

	.type	.Lglobal_string.328,@object // @global_string.328
.Lglobal_string.328:
	.asciz	"push_back_charp56_15filer"
	.size	.Lglobal_string.328, 26

	.type	.Lglobal_string.329,@object // @global_string.329
.Lglobal_string.329:
	.asciz	"list_push_back_charp56_15filer"
	.size	.Lglobal_string.329, 31

	.type	.Lglobal_string.330,@object // @global_string.330
.Lglobal_string.330:
	.asciz	"%s"
	.size	.Lglobal_string.330, 3

	.type	.Lglobal_string.331,@object // @global_string.331
.Lglobal_string.331:
	.asciz	"%s"
	.size	.Lglobal_string.331, 3

	.type	.Lglobal_string.332,@object // @global_string.332
.Lglobal_string.332:
	.asciz	"%s"
	.size	.Lglobal_string.332, 3

	.type	.Lglobal_string.333,@object // @global_string.333
.Lglobal_string.333:
	.asciz	"%s"
	.size	.Lglobal_string.333, 3

	.type	.Lglobal_string.334,@object // @global_string.334
.Lglobal_string.334:
	.asciz	"r"
	.size	.Lglobal_string.334, 2

	.type	.Lglobal_string.335,@object // @global_string.335
.Lglobal_string.335:
	.asciz	"buffer%"
	.size	.Lglobal_string.335, 8

	.type	.Lglobal_string.336,@object // @global_string.336
.Lglobal_string.336:
	.asciz	"15filer.nc"
	.size	.Lglobal_string.336, 11

	.type	.Lglobal_string.337,@object // @global_string.337
.Lglobal_string.337:
	.asciz	"find"
	.size	.Lglobal_string.337, 5

	.type	.Lglobal_string.338,@object // @global_string.338
.Lglobal_string.338:
	.asciz	"ViFiler_find"
	.size	.Lglobal_string.338, 13

	.type	.Lglobal_string.339,@object // @global_string.339
.Lglobal_string.339:
	.asciz	"\n"
	.size	.Lglobal_string.339, 2

	.type	.Lglobal_string.340,@object // @global_string.340
.Lglobal_string.340:
	.asciz	"list%<char*%>"
	.size	.Lglobal_string.340, 14

	.type	.Lglobal_string.341,@object // @global_string.341
.Lglobal_string.341:
	.asciz	"15filer.nc"
	.size	.Lglobal_string.341, 11

	.type	.Lglobal_string.342,@object // @global_string.342
.Lglobal_string.342:
	.asciz	"find"
	.size	.Lglobal_string.342, 5

	.type	.Lglobal_string.343,@object // @global_string.343
.Lglobal_string.343:
	.asciz	"ViFiler_find"
	.size	.Lglobal_string.343, 13

	.type	.Lglobal_string.344,@object // @global_string.344
.Lglobal_string.344:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.344, 19

	.type	.Lglobal_string.345,@object // @global_string.345
.Lglobal_string.345:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.345, 50

	.type	.Lglobal_string.346,@object // @global_string.346
.Lglobal_string.346:
	.asciz	"push_back_charp63_15filer"
	.size	.Lglobal_string.346, 26

	.type	.Lglobal_string.347,@object // @global_string.347
.Lglobal_string.347:
	.asciz	"list_push_back_charp63_15filer"
	.size	.Lglobal_string.347, 31

	.type	.Lglobal_string.348,@object // @global_string.348
.Lglobal_string.348:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.348, 19

	.type	.Lglobal_string.349,@object // @global_string.349
.Lglobal_string.349:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.349, 50

	.type	.Lglobal_string.350,@object // @global_string.350
.Lglobal_string.350:
	.asciz	"push_back_charp63_15filer"
	.size	.Lglobal_string.350, 26

	.type	.Lglobal_string.351,@object // @global_string.351
.Lglobal_string.351:
	.asciz	"list_push_back_charp63_15filer"
	.size	.Lglobal_string.351, 31

	.type	.Lglobal_string.352,@object // @global_string.352
.Lglobal_string.352:
	.asciz	"list_item%<char*%>"
	.size	.Lglobal_string.352, 19

	.type	.Lglobal_string.353,@object // @global_string.353
.Lglobal_string.353:
	.asciz	"/data/data/com.termux/files/home//include/neo-c.h"
	.size	.Lglobal_string.353, 50

	.type	.Lglobal_string.354,@object // @global_string.354
.Lglobal_string.354:
	.asciz	"push_back_charp63_15filer"
	.size	.Lglobal_string.354, 26

	.type	.Lglobal_string.355,@object // @global_string.355
.Lglobal_string.355:
	.asciz	"list_push_back_charp63_15filer"
	.size	.Lglobal_string.355, 31

	.type	gVi,@object             // @gVi
	.bss
	.globl	gVi
	.p2align	3
gVi:
	.xword	0
	.size	gVi, 8

	.type	.Lglobal_string.356,@object // @global_string.356
	.section	.rodata,"a",@progbits
.Lglobal_string.356:
	.asciz	"ViFiler%"
	.size	.Lglobal_string.356, 9

	.type	.Lglobal_string.357,@object // @global_string.357
.Lglobal_string.357:
	.asciz	"15filer.nc"
	.size	.Lglobal_string.357, 11

	.type	.Lglobal_string.358,@object // @global_string.358
.Lglobal_string.358:
	.asciz	"initialize"
	.size	.Lglobal_string.358, 11

	.type	.Lglobal_string.359,@object // @global_string.359
.Lglobal_string.359:
	.asciz	"Vi_initialize"
	.size	.Lglobal_string.359, 14

	.type	.Lglobal_string.360,@object // @global_string.360
.Lglobal_string.360:
	.zero	1
	.size	.Lglobal_string.360, 1

	.type	.Lglobal_string.361,@object // @global_string.361
.Lglobal_string.361:
	.asciz	"%c"
	.size	.Lglobal_string.361, 3


	.section	".note.GNU-stack","",@progbits
