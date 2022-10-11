	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"goToStart()\000"
	.align	2
.LC1:
	.ascii	"roady cross\000"
	.align	2
.LC2:
	.ascii	"press SELECT to begin\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L4
	sub	sp, sp, #12
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r0, #31744
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r1, #10
	ldr	r6, .L4+12
	mov	r0, r1
	mov	r3, r6
	ldr	r4, .L4+16
	ldr	r2, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, r6
	mov	r1, #30
	mov	r0, #10
	ldr	r2, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #50
	mov	r5, #0
	ldr	r7, .L4+28
	ldr	r4, .L4+32
	mov	r2, r3
	mov	r1, #80
	mov	r0, #120
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #10
	mov	r1, #80
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #5
	mov	r1, #80
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #10
	mov	r1, #80
	mov	r0, #166
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #5
	mov	r1, #80
	mov	r0, #171
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r1, #90
	mov	r2, r3
	mov	r0, #128
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r1, #90
	mov	r2, r3
	mov	r0, #152
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r2, #3
	mov	r1, #91
	mov	r0, #156
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r2, #3
	mov	r1, #91
	mov	r0, #131
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #8
	mov	r1, #108
	mov	r0, #141
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #2
	mov	r1, #108
	mov	r0, #144
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #122
	mov	r0, #140
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r1, #120
	mov	r2, r3
	mov	r0, #140
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r1, #120
	mov	r2, r3
	mov	r0, #148
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #60
	mov	r1, #135
	mov	r0, #115
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+36
	mov	r3, #5
	str	r2, [sp]
	mov	r1, #130
	mov	r2, #46
	mov	r0, #122
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+40
	str	r5, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	mgba_printf
	.word	fillScreen
	.word	32767
	.word	drawString
	.word	.LC1
	.word	.LC2
	.word	306
	.word	drawRect
	.word	31775
	.word	currState
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #128
	mvn	r2, #170
	ldr	r0, .L7
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"lives: \000"
	.align	2
.LC4:
	.ascii	"coins: \000"
	.text
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L15
	ldr	r3, .L15+4
	str	r1, [r2]
	ldr	r4, .L15+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #20
	mov	r0, #5
	ldr	r2, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #20
	mov	r0, #189
	ldr	r2, .L15+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	currState
	.word	background
	.word	drawString
	.word	.LC3
	.word	.LC4
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"select\000"
	.text
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #3
	push	{r4, lr}
	ldr	r4, .L24
	ldr	r1, .L24+4
	ldr	r3, [r4]
	ldrh	r1, [r1]
	add	r3, r3, #1
	ldr	r0, .L24+8
	str	r3, [r4]
	tst	r1, #4
	ldr	r3, .L24+12
	ldr	r1, .L24+16
	str	ip, [r0]
	str	r2, [r1]
	str	r2, [r3]
	beq	.L17
	ldr	r3, .L24+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L23
.L17:
	pop	{r4, lr}
	bx	lr
.L23:
	ldr	r0, .L24+24
	ldr	r3, .L24+28
	mov	lr, pc
	bx	r3
	ldr	r0, [r4]
	ldr	r3, .L24+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L25:
	.align	2
.L24:
	.word	seed
	.word	oldButtons
	.word	lives
	.word	heldCount
	.word	coinNum
	.word	buttons
	.word	.LC5
	.word	mgba_printf
	.word	srand
	.word	initializeGame
	.size	start, .-start
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"paused\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, lr}
	ldr	r2, .L28
	ldr	r0, .L28+4
	ldr	r3, .L28+8
	str	r1, [r2]
	ldr	r4, .L28+12
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #10
	mov	r0, #102
	ldr	r2, .L28+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	currState
	.word	4701
	.word	fillScreen
	.word	drawString
	.word	.LC6
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L42
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L31
	ldr	r2, .L42+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L40
.L31:
	tst	r3, #8
	beq	.L30
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
.L30:
	pop	{r4, lr}
	bx	lr
.L41:
	pop	{r4, lr}
	b	goToStart
.L40:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L31
.L43:
	.align	2
.L42:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"yay :) you won!\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	push	{r4, lr}
	ldr	r2, .L46
	mov	r0, #992
	ldr	r3, .L46+4
	str	r1, [r2]
	ldr	r4, .L46+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #20
	mov	r0, #75
	ldr	r2, .L46+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	currState
	.word	fillScreen
	.word	drawString
	.word	.LC7
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L50
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	win.part.0
.L51:
	.align	2
.L50:
	.word	oldButtons
	.size	win, .-win
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"you lost :( tough luck\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, lr}
	ldr	r2, .L54
	mov	r0, #31
	ldr	r3, .L54+4
	str	r1, [r2]
	ldr	r4, .L54+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #20
	mov	r0, #54
	ldr	r2, .L54+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	currState
	.word	fillScreen
	.word	drawString
	.word	.LC8
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"%d\000"
	.align	2
.LC10:
	.ascii	"ROADY\000"
	.align	2
.LC11:
	.ascii	"CROSS\000"
	.text
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L67
	sub	sp, sp, #8
	ldr	r3, .L67+4
	ldr	r5, .L67+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+12
	ldr	r2, [r6]
	ldr	r1, .L67+16
	ldr	r0, .L67+20
	mov	lr, pc
	bx	r4
	ldr	r2, [r5]
	ldr	r1, .L67+16
	ldr	r0, .L67+24
	mov	lr, pc
	bx	r4
	ldr	r4, .L67+28
	mov	r3, #0
	mov	r1, #12
	mov	r0, #100
	ldr	r2, .L67+32
	mov	lr, pc
	bx	r4
	mov	r1, #22
	mov	r0, #100
	ldr	r2, .L67+36
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+40
	mov	lr, pc
	bx	r3
	mov	r3, #10
	ldr	r8, .L67+44
	mov	r2, r3
	mov	r1, #20
	mov	r0, #41
	ldr	r7, .L67+48
	str	r8, [sp]
	mov	lr, pc
	bx	r7
	mov	r3, #10
	mov	r1, #20
	mov	r2, r3
	mov	r0, #225
	str	r8, [sp]
	mov	lr, pc
	bx	r7
	mov	r3, #0
	mov	r1, #20
	mov	r0, #41
	ldr	r2, .L67+20
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #20
	mov	r0, #225
	ldr	r2, .L67+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L57
	ldr	r3, .L67+60
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L64
.L57:
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L65
.L58:
	ldr	r3, [r5]
	cmp	r3, #9
	bgt	.L66
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L66:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToWin
.L65:
	bl	goToLose
	b	.L58
.L64:
	bl	goToPause
	b	.L57
.L68:
	.align	2
.L67:
	.word	lives
	.word	updateGame
	.word	coinNum
	.word	sprintf
	.word	.LC9
	.word	buff1
	.word	buff2
	.word	drawString
	.word	.LC10
	.word	.LC11
	.word	waitForVBlank
	.word	6694
	.word	drawRect
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mvn	r0, #170
	mov	ip, #128
	ldr	r2, .L83+4
	ldr	r6, .L83+8
	ldr	r10, .L83+12
	strh	r2, [r3]	@ movhi
	ldr	r2, .L83+16
	strh	ip, [r3, #132]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r5, .L83+20
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L83+24
	ldr	r8, .L83+28
	ldr	r7, .L83+32
	ldr	fp, .L83+36
	ldr	r4, .L83+40
.L71:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L79
.L73:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L72
.L72:
	tst	r0, #4
	beq	.L79
	ldr	r3, .L83+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L74:
	tst	r0, #4
	beq	.L79
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L75:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L76:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L77:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L79:
	mov	r0, r3
	b	.L71
.L84:
	.align	2
.L83:
	.word	mgba_open
	.word	1027
	.word	currState
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	buff2,41,4
	.comm	buff1,41,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	currState,4,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
