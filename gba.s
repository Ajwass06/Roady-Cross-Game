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
	.file	"gba.c"
	.text
	.align	2
	.global	collision
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	cmp	ip, r1
	ble	.L5
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L8
.L5:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L8:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L5
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L10:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L10
	mov	r2, #67108864
.L11:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L11
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ble	.L18
	ldr	ip, .L26
	rsb	r3, r1, r1, lsl #4
	add	r3, r0, r3, lsl #4
	ldr	r0, [ip]
	mov	ip, #0
	add	r3, r3, r2
	rsb	r4, r2, r2, lsl #31
	add	r0, r0, r3, lsl #1
	lsl	r4, r4, #1
.L20:
	cmp	r2, #0
	addgt	r1, r0, r4
	ble	.L23
.L21:
	ldrh	r3, [sp, #8]
	strh	r3, [r1], #2	@ movhi
	cmp	r1, r0
	bne	.L21
.L23:
	add	ip, ip, #1
	cmp	lr, ip
	add	r0, r0, #480
	bne	.L20
.L18:
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	sub	sp, sp, #8
	ldr	r2, [r3]
	strh	r0, [sp, #6]	@ movhi
	add	r1, r2, #76800
.L29:
	ldrh	r3, [sp, #6]
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L29
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
