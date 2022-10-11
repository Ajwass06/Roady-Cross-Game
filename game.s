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
	.file	"game.c"
	.text
	.align	2
	.global	background
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	background, %function
background:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r5, .L4
	sub	sp, sp, #12
	ldr	r4, .L4+4
	mov	r3, #20
	mov	r2, #240
	mov	r1, #140
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+8
	mov	r3, #100
	str	r2, [sp]
	mov	r1, #40
	mov	r2, #240
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r3, #40
	mov	r0, r1
	mov	r2, #240
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	6694
	.word	drawRect
	.word	7399
	.size	background, .-background
	.align	2
	.global	initializeAnimal
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeAnimal, %function
initializeAnimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r1, #123
	mov	r10, #121
	mov	r9, #145
	mov	r8, #143
	mov	r7, #142
	mov	r6, #119
	mov	r5, #127
	mov	r4, #122
	mov	lr, #150
	mov	r2, #148
	mov	ip, #124
	mov	r0, #156
	ldr	r3, .L8
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #20]
	str	r7, [r3, #36]
	str	r6, [r3, #48]
	str	r5, [r3, #64]
	str	r4, [r3, #80]
	str	lr, [r3, #84]
	str	ip, [r3, #96]
	str	r0, [r3, #100]
	str	r1, [r3, #16]
	str	r1, [r3, #32]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	animal
	.size	initializeAnimal, .-initializeAnimal
	.align	2
	.global	updateAnimal
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAnimal, %function
updateAnimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L62
	ldr	r1, [r3]
	ands	r1, r1, #1
	moveq	r2, #3
	movne	r2, #7
	ldr	r3, .L62+4
	push	{r4, r5, r6, r7, lr}
	str	r2, [r3, #112]
	str	r2, [r3, #116]
	ldr	r2, .L62+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L14
	ldr	ip, .L62+12
	ldrh	ip, [ip]
	tst	ip, #64
	beq	.L57
.L14:
	tst	r2, #128
	beq	.L17
	ldr	ip, .L62+12
	ldrh	ip, [ip]
	tst	ip, #128
	beq	.L58
.L17:
	tst	r2, #32
	ldr	ip, [r3, #48]
	and	r2, r2, #16
	beq	.L19
	ldr	lr, .L62+12
	ldrh	r4, [lr]
	tst	r4, #32
	bne	.L19
	ldr	lr, [r3, #112]
	ldr	r7, [r3]
	ldr	r6, [r3, #16]
	ldr	r5, [r3, #32]
	sub	r7, r7, lr
	sub	r6, r6, lr
	sub	r5, r5, lr
	str	r7, [r3]
	str	r6, [r3, #16]
	ldr	r7, [r3, #64]
	ldr	r6, [r3, #80]
	str	r5, [r3, #32]
	ldr	r5, [r3, #96]
	sub	ip, ip, lr
	sub	r7, r7, lr
	sub	r6, r6, lr
	sub	r5, r5, lr
	cmp	r1, #0
	str	ip, [r3, #48]
	str	r7, [r3, #64]
	str	r6, [r3, #80]
	str	r5, [r3, #96]
	beq	.L20
	ldr	r5, [r0]
	cmp	r2, #0
	sub	lr, r5, lr
	str	lr, [r0]
	bne	.L21
.L22:
	cmp	ip, #5
	ble	.L59
.L27:
	ldr	r2, [r3, #64]
	cmp	r2, #234
	ble	.L26
	mov	r2, #228
	mov	lr, #224
	mov	r1, #226
	mov	r4, #232
	mov	ip, #227
	mov	r0, #229
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	ldr	r2, [r3, #100]
	str	lr, [r3, #48]
	ldr	lr, .L62+16
	cmp	r2, #153
	str	r4, [r3, #64]
	str	r1, [r3]
	str	r1, [lr]
	str	ip, [r3, #80]
	str	r0, [r3, #96]
	ble	.L31
.L61:
	mov	r1, #146
	mov	r4, #143
	mov	r2, #140
	mov	lr, #148
	mov	ip, #154
	mov	r0, #138
	str	r1, [r3, #52]
	str	r1, [r3, #68]
	ldr	r1, .L62+16
	str	r4, [r3, #4]
	str	lr, [r3, #84]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	str	ip, [r3, #100]
	str	r0, [r1, #4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L19:
	cmp	r2, #0
	beq	.L23
	ldr	r2, .L62+12
	ldrh	r4, [r2]
.L21:
	tst	r4, #16
	bne	.L23
	ldr	r2, [r3, #112]
	ldr	r5, [r3]
	ldr	r4, [r3, #16]
	ldr	lr, [r3, #32]
	add	r5, r5, r2
	add	r4, r4, r2
	add	lr, lr, r2
	str	r5, [r3]
	str	r4, [r3, #16]
	ldr	r5, [r3, #64]
	ldr	r4, [r3, #80]
	str	lr, [r3, #32]
	ldr	lr, [r3, #96]
	add	ip, ip, r2
	add	r5, r5, r2
	add	r4, r4, r2
	add	lr, lr, r2
	cmp	r1, #0
	str	ip, [r3, #48]
	str	r5, [r3, #64]
	str	r4, [r3, #80]
	str	lr, [r3, #96]
	beq	.L24
	ldr	lr, [r0]
	cmp	ip, #5
	add	r2, lr, r2
	str	r2, [r0]
	bgt	.L27
	b	.L59
.L23:
	cmp	r1, #0
	bne	.L22
.L24:
	cmp	ip, #3
	ble	.L60
	ldr	r2, [r3, #64]
	cmp	r2, #234
	ble	.L36
	mov	r4, #232
	mov	lr, #224
	mov	ip, #226
	mov	r2, #228
	mov	r0, #227
	mov	r1, #229
	str	r4, [r3, #64]
	str	lr, [r3, #48]
.L55:
	str	ip, [r3]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	str	r0, [r3, #80]
	str	r1, [r3, #96]
.L36:
	ldr	r2, [r3, #100]
	cmp	r2, #158
	ble	.L29
	mov	r1, #148
	mov	r2, #142
	mov	lr, #145
	mov	ip, #150
	mov	r0, #156
	str	r1, [r3, #52]
	str	r1, [r3, #68]
	str	lr, [r3, #4]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	str	ip, [r3, #84]
	str	r0, [r3, #100]
.L10:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L58:
	ldr	ip, [r3, #116]
	ldr	lr, [r3, #4]
	add	lr, lr, ip
	str	lr, [r3, #4]
	ldr	lr, [r3, #52]
	add	lr, lr, ip
	ldr	r5, [r3, #20]
	ldr	r4, [r3, #36]
	str	lr, [r3, #52]
	ldr	lr, [r3, #100]
	cmp	r1, #0
	add	r5, r5, ip
	add	r4, r4, ip
	add	lr, lr, ip
	str	r5, [r3, #20]
	str	r4, [r3, #36]
	ldr	r5, [r3, #68]
	ldr	r4, [r3, #84]
	str	lr, [r3, #100]
	ldrne	lr, [r0, #4]
	add	r5, r5, ip
	add	r4, r4, ip
	addne	ip, lr, ip
	str	r5, [r3, #68]
	str	r4, [r3, #84]
	strne	ip, [r0, #4]
	b	.L17
.L57:
	ldr	ip, [r3, #116]
	ldr	lr, [r3, #4]
	sub	lr, lr, ip
	str	lr, [r3, #4]
	ldr	lr, [r3, #52]
	sub	lr, lr, ip
	ldr	r5, [r3, #20]
	ldr	r4, [r3, #36]
	str	lr, [r3, #52]
	ldr	lr, [r3, #100]
	cmp	r1, #0
	sub	r5, r5, ip
	sub	r4, r4, ip
	sub	lr, lr, ip
	str	r5, [r3, #20]
	str	r4, [r3, #36]
	ldr	r5, [r3, #68]
	ldr	r4, [r3, #84]
	str	lr, [r3, #100]
	ldrne	lr, [r0, #4]
	sub	r5, r5, ip
	sub	r4, r4, ip
	subne	ip, lr, ip
	str	r5, [r3, #68]
	str	r4, [r3, #84]
	strne	ip, [r0, #4]
	b	.L14
.L60:
	mov	r4, #3
	mov	lr, #11
	mov	ip, #5
	mov	r2, #7
	mov	r0, #6
	mov	r1, #8
	str	r4, [r3, #48]
	str	lr, [r3, #64]
	b	.L55
.L59:
	mov	r4, #13
	mov	r0, #7
	mov	r2, #9
	mov	r5, #5
	mov	lr, #8
	mov	ip, #10
	str	r4, [r3, #64]
	ldr	r4, .L62+16
	str	r5, [r3, #48]
	str	r0, [r3]
	str	r0, [r4]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	str	lr, [r3, #80]
	str	ip, [r3, #96]
.L26:
	cmp	r1, #0
	beq	.L36
	ldr	r2, [r3, #100]
	cmp	r2, #153
	bgt	.L61
.L31:
	ldr	r2, [r3, #36]
	cmp	r2, #45
	bgt	.L10
	mov	r1, #50
	mov	r5, #47
	mov	r4, #48
	mov	r2, #53
	mov	lr, #55
	mov	ip, #61
	mov	r0, #45
	str	r1, [r3, #4]
	ldr	r1, .L62+16
	str	r5, [r3, #36]
	str	r4, [r3, #20]
	str	lr, [r3, #84]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	str	ip, [r3, #100]
	str	r0, [r1, #4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L29:
	ldr	r2, [r3, #36]
	cmp	r2, #43
	bgt	.L10
	mov	r4, #43
	mov	lr, #44
	mov	r2, #49
	mov	ip, #46
	mov	r0, #51
	mov	r1, #57
	str	r4, [r3, #36]
	str	lr, [r3, #20]
	str	ip, [r3, #4]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	str	r0, [r3, #84]
	str	r1, [r3, #100]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L20:
	cmp	r2, #0
	bne	.L21
	b	.L24
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.word	animal
	.word	oldButtons
	.word	buttons
	.word	bone
	.size	updateAnimal, .-updateAnimal
	.align	2
	.global	eraseAnimal
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseAnimal, %function
eraseAnimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	mov	r6, r1
	ldr	r9, .L77
	ldr	r8, .L77+4
	add	fp, r0, #17
	add	r5, r1, #22
.L65:
	mov	r4, r6
	ldr	r10, .L77+8
	b	.L69
.L75:
	cmp	r6, #160
	ble	.L73
.L67:
	add	r4, r4, #1
	cmp	r4, r5
	beq	.L74
.L69:
	cmp	r4, #139
	bgt	.L75
	cmp	r4, #19
	bgt	.L76
	cmp	r4, #0
	blt	.L67
	cmp	r6, #20
	bgt	.L67
.L73:
	mov	r1, r4
	mov	r2, r9
	mov	r0, r7
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r4, r5
	bne	.L69
.L74:
	add	r7, r7, #1
	cmp	r7, fp
	bne	.L65
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L76:
	cmp	r6, #140
	bgt	.L67
	mov	r2, r10
	mov	r1, r4
	mov	r0, r7
	mov	lr, pc
	bx	r8
	b	.L67
.L78:
	.align	2
.L77:
	.word	6694
	.word	setPixel
	.word	7399
	.size	eraseAnimal, .-eraseAnimal
	.align	2
	.global	eraseAnimal2
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseAnimal2, %function
eraseAnimal2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	mov	r6, r1
	ldr	r9, .L92
	ldr	r8, .L92+4
	add	fp, r0, #25
	add	r5, r1, #30
.L80:
	mov	r4, r6
	ldr	r10, .L92+8
	b	.L84
.L90:
	cmp	r6, #160
	ble	.L88
.L82:
	add	r4, r4, #1
	cmp	r4, r5
	beq	.L89
.L84:
	cmp	r4, #139
	bgt	.L90
	cmp	r4, #19
	bgt	.L91
	cmp	r4, #0
	blt	.L82
	cmp	r6, #20
	bgt	.L82
.L88:
	mov	r1, r4
	mov	r2, r9
	mov	r0, r7
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r4, r5
	bne	.L84
.L89:
	add	r7, r7, #1
	cmp	r7, fp
	bne	.L80
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L91:
	cmp	r6, #140
	bgt	.L82
	mov	r2, r10
	mov	r1, r4
	mov	r0, r7
	mov	lr, pc
	bx	r8
	b	.L82
.L93:
	.align	2
.L92:
	.word	6694
	.word	setPixel
	.word	7399
	.size	eraseAnimal2, .-eraseAnimal2
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"heldcount collides: %d\000"
	.text
	.align	2
	.global	drawAnimal
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAnimal, %function
drawAnimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L129
	ldr	r3, [r10]
	ldr	r4, .L129+4
	tst	r3, #1
	ldr	r0, [r4, #48]
	ldr	r1, [r4, #36]
	sub	sp, sp, #20
	bne	.L95
	sub	r1, r1, #3
	sub	r0, r0, #3
	bl	eraseAnimal
	ldr	r8, .L129+8
.L96:
	mov	r7, #0
	ldr	r5, .L129+12
	ldr	r6, .L129+16
	ldm	r4, {r0, r1}
	str	r8, [sp]
	ldr	r3, [r5]
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r6
	ldr	r3, [r5, #8]
	str	r8, [sp]
	add	r0, r4, #16
	mov	r2, r3
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	str	r7, [sp]
	add	r0, r4, #32
	ldm	r0, {r0, r1}
	ldr	r3, [r5, #12]
	ldr	r2, [r5, #16]
	mov	lr, pc
	bx	r6
	str	r7, [sp]
	add	r0, r4, #48
	ldm	r0, {r0, r1}
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	mov	lr, pc
	bx	r6
	str	r7, [sp]
	add	r0, r4, #64
	ldm	r0, {r0, r1}
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	mov	lr, pc
	bx	r6
	str	r8, [sp]
	add	r0, r4, #80
	ldm	r0, {r0, r1}
	ldr	r3, [r5, #28]
	ldr	r2, [r5, #32]
	mov	lr, pc
	bx	r6
	str	r7, [sp]
	add	r0, r4, #96
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	mvn	r6, #0
	ldr	r8, .L129+20
	ldr	r9, .L129+24
	ldr	fp, .L129+28
	ldr	r7, .L129+32
.L107:
	ldr	r3, [r10]
	tst	r3, #1
	bne	.L126
.L101:
	cmp	r6, #1
	bls	.L127
	mvn	r3, #0
	ldr	r2, .L129+20
	str	r3, [r2, #28]
.L100:
	add	r0, r5, #12
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #36]
	ldr	r3, [r4, #32]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L102
.L105:
	ldr	r3, [r8, #32]
	cmp	r3, #1
	beq	.L128
.L106:
	add	r6, r6, #1
	cmp	r6, #2
	add	r8, r8, #36
	bne	.L107
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L102:
	ldr	r3, [r5, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	stmib	sp, {r1, r3}
	str	r2, [sp]
	str	r3, [sp, #12]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L105
	ldm	r5, {r0, r1}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L105
	add	r0, r5, #28
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #84]
	ldr	r3, [r4, #80]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L105
	b	.L106
.L126:
	ldr	r0, [fp, #12]
	ldr	r1, [fp, #8]
	ldr	r2, [fp, #4]
	ldr	r3, [fp]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L98
	ldr	r3, .L129+36
	ldrh	r2, [r3]
	ldr	r3, [r10]
	tst	r2, #2
	and	r3, r3, #1
	beq	.L99
	ldr	r2, .L129+40
	ldrh	r2, [r2]
	ands	r2, r2, #2
	bne	.L99
	cmp	r3, #0
	strne	r2, [r8, #28]
	strne	r2, [r8, #32]
	bne	.L100
	b	.L101
.L95:
	sub	r1, r1, #7
	sub	r0, r0, #7
	bl	eraseAnimal2
	ldr	r8, .L129+44
	b	.L96
.L98:
	ldr	r3, [r10]
	and	r3, r3, #1
.L99:
	cmp	r3, #0
	bne	.L100
	b	.L101
.L128:
	mov	r2, #67108864
	mov	lr, #34560
	mov	r0, #30
	strh	lr, [r2, #98]	@ movhi
	strh	r0, [r2, #96]	@ movhi
	ldr	r0, .L129+48
	strh	r0, [r2, #100]	@ movhi
	ldr	r0, .L129+20
	mvn	ip, #0
	mov	lr, r0
	mov	r1, #0
	ldr	r2, [r5, #44]
	str	ip, [lr, #28]
	add	r2, r2, ip
	str	r3, [r0, #32]
	str	r3, [r0, #68]
	str	r3, [r0, #64]
	str	r3, [r0, #104]
	str	r3, [r0, #100]
	ldr	r3, .L129+52
	mov	r0, r7
	str	r2, [r5, #44]
	str	r1, [r10]
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #48]
	sub	r1, r1, #3
	sub	r0, r0, #3
	bl	eraseAnimal
	mov	r3, #148
	str	r3, [r4, #52]
	str	r3, [r4, #68]
	mov	r3, #127
	str	r3, [r4, #64]
	mov	r3, #122
	str	r3, [r4, #80]
	mov	r3, #150
	mov	r2, #123
	str	r3, [r4, #84]
	mov	r3, #124
	mov	lr, #121
	mov	ip, #145
	mov	r0, #143
	mov	r1, #142
	str	r2, [r4, #16]
	str	r2, [r4, #32]
	str	r3, [r4, #96]
	mov	r2, #119
	mov	r3, #156
	str	lr, [r4]
	str	ip, [r4, #4]
	str	r0, [r4, #20]
	str	r1, [r4, #36]
	str	r2, [r4, #48]
	str	r3, [r4, #100]
	b	.L106
.L127:
	mov	r3, #1
	str	r3, [r8, #28]
	b	.L100
.L130:
	.align	2
.L129:
	.word	.LANCHOR0
	.word	animal
	.word	306
	.word	.LANCHOR1
	.word	drawRect
	.word	cars
	.word	collision
	.word	bone
	.word	.LC0
	.word	oldButtons
	.word	buttons
	.word	31775
	.word	-15338
	.word	mgba_printf
	.size	drawAnimal, .-drawAnimal
	.align	2
	.global	initializeCars
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCars, %function
initializeCars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #20
	push	{r4, r5, r6, r7, lr}
	mov	r2, #1
	mov	r0, #10
	mov	r6, #0
	mov	r5, #124
	mov	r4, #120
	mov	lr, #86
	mvn	r7, #0
	mov	ip, #45
	ldr	r3, .L133
	str	r1, [r3, #16]
	str	r1, [r3, #52]
	str	r1, [r3, #88]
	str	r1, [r3, #72]
	str	r1, [r3, #80]
	ldr	r1, .L133+4
	str	r1, [r3, #24]
	ldr	r1, .L133+8
	str	r1, [r3, #60]
	ldr	r1, .L133+12
	stmib	r3, {r5, r6}
	str	r7, [r3, #28]
	str	r0, [r3, #20]
	str	r0, [r3, #56]
	str	r1, [r3, #96]
	str	r0, [r3, #92]
	str	r6, [r3]
	str	r5, [r3, #12]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	lr, [r3, #40]
	str	lr, [r3, #48]
	str	r2, [r3, #32]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	ip, [r3, #76]
	str	ip, [r3, #84]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	cars
	.word	30284
	.word	1023
	.word	4701
	.size	initializeCars, .-initializeCars
	.align	2
	.global	drawCars
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCars, %function
drawCars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	ip, .L137
	sub	sp, sp, #12
	add	r0, r0, #8
	ldm	r0, {r0, r1, r2, r3}
	ldr	r5, .L137+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #24]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #16]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	7399
	.word	drawRect
	.size	drawCars, .-drawCars
	.align	2
	.global	updateCars
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCars, %function
updateCars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r1, [r0, #28]
	ldr	r2, [r0, #16]
	add	r3, r3, r1
	rsb	r2, r2, #240
	cmp	r3, r2
	str	r3, [r0]
	blt	.L140
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.L140:
	cmp	r3, #0
	strlt	r2, [r0]
	bx	lr
	.size	updateCars, .-updateCars
	.align	2
	.global	initializeCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoins, %function
initializeCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L146
	ldr	r5, .L146+4
	ldr	r9, .L146+8
	ldr	r8, .L146+12
	ldr	r7, .L146+16
	add	r6, r4, #140
.L143:
	mov	lr, pc
	bx	r5
	mov	r2, #230
	smull	r3, r1, r9, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	mul	r3, r2, r3
	sub	r0, r0, r3
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #5
	mov	r2, #1
	smull	r3, ip, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr r1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r4]
	add	r0, r0, #40
	str	r7, [r4, #20]
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #24]
	str	r3, [r4, #8]
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L143
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	coins
	.word	rand
	.word	1195121335
	.word	1717986919
	.word	1023
	.size	initializeCoins, .-initializeCoins
	.align	2
	.global	drawCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoins, %function
drawCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	add	r1, r0, #12
	ldm	r1, {r1, r3}
	ldr	ip, .L150
	sub	sp, sp, #12
	mov	r2, r3
	ldr	r0, [r0, #8]
	ldr	r5, .L150+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	r1, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	7399
	.word	drawRect
	.size	drawCoins, .-drawCoins
	.align	2
	.global	updateCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoins, %function
updateCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L162
	ldr	r1, [r5, #36]
	ldr	r6, .L162+4
	sub	sp, sp, #20
	sub	r1, r1, #3
	ldr	r3, [r0, #16]
	ldr	r7, [r5, #32]
	ldr	lr, [r6, #12]
	ldr	ip, [r6, #16]
	str	r1, [sp, #4]
	mov	r4, r0
	mov	r2, r3
	ldm	r0, {r0, r1}
	str	r7, [sp]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r7, .L162+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L160
.L153:
	mov	r3, #67108864
	mov	r0, #0
	mov	r1, #34560
	mov	ip, #118
	str	r0, [r4, #24]
	ldr	r2, .L162+12
	strh	r1, [r3, #98]	@ movhi
	ldr	r0, .L162+16
	ldr	r1, .L162+20
	strh	ip, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	ldr	r2, [r1, #4]
	ldr	r3, [r0]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r3, [r0]
	str	r2, [r1, #4]
.L154:
	cmp	r3, #4
	bgt	.L152
	ldr	r5, .L162+24
	mov	r4, #0
	mov	r3, r5
.L157:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L161
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #28
	bne	.L157
.L152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L160:
	ldr	r2, [r5, #16]
	ldr	r1, [r6, #8]
	ldr	r0, [r5, #20]
	ldr	r3, [r4, #16]
	add	r2, r2, #3
	stmib	sp, {r0, r1}
	str	r2, [sp]
	str	r1, [sp, #12]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r2, [r5]
	ldr	r0, [r6, #4]
	ldr	r1, [r5, #4]
	ldr	ip, [r6]
	add	r2, r2, #3
	ldr	r3, [r4, #16]
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r0, [r5, #84]
	ldr	lr, [r6, #28]
	ldr	ip, [r6, #32]
	ldr	r3, [r4, #16]
	ldr	r1, [r5, #80]
	stmib	sp, {r0, ip, lr}
	str	r1, [sp]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r2, .L162+28
	add	r0, r2, #8
	ldr	r1, [r2, #4]
	ldm	r0, {r0, ip}
	ldr	r2, [r2]
	ldr	r3, [r4, #16]
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r2, [r5, #64]
	ldr	r0, [r6, #24]
	ldr	r1, [r5, #68]
	ldr	ip, [r6, #20]
	add	r2, r2, #3
	ldr	r3, [r4, #16]
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r0, [r5, #52]
	ldr	lr, [r6, #20]
	ldr	ip, [r6, #24]
	ldr	r3, [r4, #16]
	ldr	r1, [r5, #48]
	stmib	sp, {r0, ip, lr}
	str	r1, [sp]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	ldr	r3, .L162+16
	ldr	r3, [r3]
	b	.L154
.L161:
	ldr	r6, .L162+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L162+36
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	rsb	r4, r4, r4, lsl #3
	str	r3, [r5, r4, lsl #2]
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	ip, #5
	ldr	r2, .L162+40
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl r1
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl r1
	ldr	r3, .L162+44
	add	r4, r5, r4, lsl #2
	add	r0, r0, #40
	str	r0, [r4, #4]
	str	ip, [r4, #16]
	str	r3, [r4, #20]
	str	r1, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L163:
	.align	2
.L162:
	.word	animal
	.word	.LANCHOR1
	.word	collision
	.word	-14503
	.word	coinsLeft
	.word	.LANCHOR0
	.word	coins
	.word	bone
	.word	rand
	.word	1374389535
	.word	-1240768329
	.word	1023
	.size	updateCoins, .-updateCoins
	.align	2
	.global	initializeBone
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeBone, %function
initializeBone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L166
	mov	lr, pc
	bx	r5
	ldr	r3, .L166+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r4, .L166+8
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #3
	mov	ip, #7
	ldr	r2, .L166+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	add	r2, r3, r3, lsl #2
	rsb	r3, r3, r2, lsl r1
	sub	r0, r0, r3, lsl #1
	ldr	r3, .L166+16
	add	r0, r0, #42
	stmib	r4, {r0, ip}
	str	r1, [r4, #12]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	rand
	.word	1374389535
	.word	bone
	.word	-770891565
	.word	32767
	.size	initializeBone, .-initializeBone
	.align	2
	.global	initializeGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #148
	mov	lr, #150
	mov	r1, #123
	mov	ip, #124
	mov	r0, #156
	mov	r10, #121
	mov	r9, #145
	mov	r8, #143
	mov	r7, #142
	mov	r6, #119
	mov	r5, #127
	mov	r4, #122
	ldr	r3, .L170
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #20]
	str	r7, [r3, #36]
	str	r6, [r3, #48]
	str	r5, [r3, #64]
	str	r4, [r3, #80]
	str	lr, [r3, #84]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	str	ip, [r3, #96]
	str	r0, [r3, #100]
	str	r1, [r3, #16]
	str	r1, [r3, #32]
	bl	initializeCars
	bl	initializeCoins
	bl	initializeBone
	mov	r2, #5
	ldr	r3, .L170+4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L171:
	.align	2
.L170:
	.word	animal
	.word	coinsLeft
	.size	initializeGame, .-initializeGame
	.align	2
	.global	eraseBone
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseBone, %function
eraseBone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	mov	r6, r1
	ldr	fp, .L183
	ldr	r8, .L183+4
	add	r10, r0, #7
	add	r7, r1, #3
.L173:
	mov	r4, r6
	ldr	r9, .L183+8
.L177:
	cmp	r4, #139
	ble	.L174
	cmp	r6, #160
	ble	.L181
.L175:
	add	r4, r4, #1
	cmp	r4, r7
	bne	.L177
	add	r5, r5, #1
	cmp	r5, r10
	bne	.L173
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L174:
	cmp	r4, #19
	bgt	.L182
	cmp	r4, #0
	blt	.L175
	cmp	r6, #20
	bgt	.L175
.L181:
	mov	r2, fp
	mov	r1, r4
	mov	r0, r5
	mov	lr, pc
	bx	r8
	b	.L175
.L182:
	cmp	r6, #140
	bgt	.L175
	mov	r2, r9
	mov	r1, r4
	mov	r0, r5
	mov	lr, pc
	bx	r8
	b	.L175
.L184:
	.align	2
.L183:
	.word	6694
	.word	setPixel
	.word	7399
	.size	eraseBone, .-eraseBone
	.align	2
	.global	drawBone
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBone, %function
drawBone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	add	r0, r0, #28
	sub	sp, sp, #12
	ldm	r0, {r0, r1}
	bl	eraseBone
	ldrh	r2, [r4, #24]
	ldr	r3, [r4, #12]
	str	r2, [sp]
	ldr	r5, .L187
	ldm	r4, {r0, r1, r2}
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #28]
	str	r3, [r4, #32]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L188:
	.align	2
.L187:
	.word	drawRect
	.size	drawBone, .-drawBone
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	drawAnimal
	ldr	r4, .L198
	add	r5, r4, #140
.L191:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L197
.L190:
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L191
	ldr	r0, .L198+4
	bl	drawCars
	ldr	r0, .L198+8
	bl	drawCars
	ldr	r0, .L198+12
	bl	drawCars
	ldr	r0, .L198+16
	pop	{r4, r5, r6, lr}
	b	drawBone
.L197:
	mov	r0, r4
	bl	drawCoins
	b	.L190
.L199:
	.align	2
.L198:
	.word	coins
	.word	cars
	.word	cars+36
	.word	cars+72
	.word	bone
	.size	drawGame, .-drawGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"heldcount: %d\000"
	.text
	.align	2
	.global	updateBone
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBone, %function
updateBone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0, #12]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	sp, sp, #20
	ldr	r5, .L208
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r6, .L208+4
	str	r1, [sp, #8]
	add	r0, r5, #32
	ldr	r3, [r6, #12]
	ldr	r2, [r6, #16]
	ldm	r0, {r0, r1}
	ldr	r7, .L208+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L201
.L204:
	ldr	r3, .L208+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L200
	ldr	r3, .L208+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L207
.L200:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L201:
	ldmib	r4, {r0, ip, lr}
	ldr	r1, [r4]
	stmib	sp, {r0, ip, lr}
	ldr	r3, [r6, #8]
	str	r1, [sp]
	add	r0, r5, #16
	mov	r2, r3
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L204
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L207:
	ldr	ip, .L208+20
	ldr	r2, [r5, #32]
	ldr	r3, [r5, #36]
	ldr	r1, [ip]
	sub	r2, r2, #2
	sub	r3, r3, #2
	stm	r4, {r2, r3}
	add	r1, r1, #1
	ldr	r0, .L208+24
	ldr	r3, .L208+28
	str	r1, [ip]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L209:
	.align	2
.L208:
	.word	animal
	.word	.LANCHOR1
	.word	collision
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	.LC1
	.word	mgba_printf
	.size	updateBone, .-updateBone
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r0, .L223
	bl	updateBone
	ldr	r0, .L223
	bl	updateAnimal
	mov	lr, #0
	ldr	r3, .L223+4
	add	ip, r3, #108
.L213:
	ldr	r2, [r3]
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #16]
	add	r2, r2, r0
	rsb	r1, r1, #240
	cmp	r2, r1
	str	r2, [r3]
	strge	lr, [r3]
	bge	.L212
	cmp	r2, #0
	strlt	r1, [r3]
.L212:
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L213
	ldr	r4, .L223+8
	add	r5, r4, #140
.L215:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L222
.L214:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L215
	pop	{r4, r5, r6, lr}
	bx	lr
.L222:
	mov	r0, r4
	bl	updateCoins
	b	.L214
.L224:
	.align	2
.L223:
	.word	bone
	.word	cars
	.word	coins
	.size	updateGame, .-updateGame
	.global	dropCount
	.global	heldCount
	.comm	coinsLeft,4,4
	.global	coinNum
	.global	lives
	.global	tailH
	.global	tailW
	.global	bodyH
	.global	bodyW
	.global	earH
	.global	earW
	.global	noseH
	.global	noseW
	.global	snoutSize
	.global	headH
	.global	headW
	.comm	bone,36,4
	.comm	animal,120,4
	.comm	coins,140,4
	.comm	cars,108,4
	.comm	NOTES,2,2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	headH, %object
	.size	headH, 4
headH:
	.word	5
	.type	headW, %object
	.size	headW, 4
headW:
	.word	7
	.type	snoutSize, %object
	.size	snoutSize, 4
snoutSize:
	.word	3
	.type	noseH, %object
	.size	noseH, 4
noseH:
	.word	1
	.type	noseW, %object
	.size	noseW, 4
noseW:
	.word	3
	.type	earH, %object
	.size	earH, 4
earH:
	.word	2
	.type	earW, %object
	.size	earW, 4
earW:
	.word	3
	.type	bodyH, %object
	.size	bodyH, 4
bodyH:
	.word	7
	.type	bodyW, %object
	.size	bodyW, 4
bodyW:
	.word	5
	.type	tailH, %object
	.size	tailH, 4
tailH:
	.word	2
	.type	tailW, %object
	.size	tailW, 4
tailW:
	.word	1
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	heldCount, %object
	.size	heldCount, 4
heldCount:
	.space	4
	.type	coinNum, %object
	.size	coinNum, 4
coinNum:
	.space	4
	.type	dropCount, %object
	.size	dropCount, 4
dropCount:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
