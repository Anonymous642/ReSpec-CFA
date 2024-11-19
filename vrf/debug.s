	.section	.bss.GPS_INVALID_F_ANGLE,"aw",%nobits
	.align	2
	.type	GPS_INVALID_F_ANGLE, %object
	.size	GPS_INVALID_F_ANGLE, 4
GPS_INVALID_F_ANGLE:
	.space	4
	.section	.bss.GPS_INVALID_F_ALTITUDE,"aw",%nobits
	.align	2
	.type	GPS_INVALID_F_ALTITUDE, %object
	.size	GPS_INVALID_F_ALTITUDE, 4
GPS_INVALID_F_ALTITUDE:
	.space	4
	.section	.bss.GPS_INVALID_F_SPEED,"aw",%nobits
	.align	2
	.type	GPS_INVALID_F_SPEED, %object
	.size	GPS_INVALID_F_SPEED, 4
GPS_INVALID_F_SPEED:
	.space	4
	.global	encodedCharCount
	.section	.bss.encodedCharCount,"aw",%nobits
	.align	2
	.type	encodedCharCount, %object
	.size	encodedCharCount, 4
encodedCharCount:
	.space	4
	.global	parity
	.section	.bss.parity,"aw",%nobits
	.type	parity, %object
	.size	parity, 1
parity:
	.space	1
	.global	isChecksumTerm
	.section	.bss.isChecksumTerm,"aw",%nobits
	.align	2
	.type	isChecksumTerm, %object
	.size	isChecksumTerm, 4
isChecksumTerm:
	.space	4
	.global	curSentenceType
	.section	.data.curSentenceType,"aw",%progbits
	.type	curSentenceType, %object
	.size	curSentenceType, 1
curSentenceType:
	.byte	2
	.global	curTermNumber
	.section	.bss.curTermNumber,"aw",%nobits
	.type	curTermNumber, %object
	.size	curTermNumber, 1
curTermNumber:
	.space	1
	.global	curTermOffset
	.section	.bss.curTermOffset,"aw",%nobits
	.type	curTermOffset, %object
	.size	curTermOffset, 1
curTermOffset:
	.space	1
	.global	term
	.section	.bss.term,"aw",%nobits
	.align	2
	.type	term, %object
	.size	term, 15
term:
	.space	15
	.global	sentenceHasFix
	.section	.bss.sentenceHasFix,"aw",%nobits
	.align	2
	.type	sentenceHasFix, %object
	.size	sentenceHasFix, 4
sentenceHasFix:
	.space	4
	.global	passedChecksumCount
	.section	.bss.passedChecksumCount,"aw",%nobits
	.align	2
	.type	passedChecksumCount, %object
	.size	passedChecksumCount, 4
passedChecksumCount:
	.space	4
	.global	sentencesWithFixCount
	.section	.bss.sentencesWithFixCount,"aw",%nobits
	.align	2
	.type	sentencesWithFixCount, %object
	.size	sentencesWithFixCount, 4
sentencesWithFixCount:
	.space	4
	.global	failedChecksumCount
	.section	.bss.failedChecksumCount,"aw",%nobits
	.align	2
	.type	failedChecksumCount, %object
	.size	failedChecksumCount, 4
failedChecksumCount:
	.space	4
	.section	.text.mystrcmp,"ax",%progbits
	.align	1
	.global	mystrcmp
	.type	mystrcmp, %function
mystrcmp:
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #1
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
------ instrumenting cond branch dest (.L5:)
.L5:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #16]
	cmp	r3, #1
------ instrument cond branch not taken (bne) .L3
	bne	.L3
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
------ instrument cond branch not taken (bls) .L3
	bls	.L3
	bl	SECURE_log_cond_br
	movs	r3, #1
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L4
------ instrumenting cond branch dest (.L3:)
.L3:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #16]
	cmp	r3, #1
------ instrument cond branch not taken (bne) .L4
	bne	.L4
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
------ instrument cond branch not taken (bcs) .L4
	bcs	.L4
	bl	SECURE_log_cond_br
	movs	r3, #1
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
------ instrumenting cond branch dest (.L4:)
.L4:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #14
------ instrument cond branch not taken (ble) .L5
	ble	.L5
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
	.size	mystrcmp, .-mystrcmp
	.section	.text.isdigit,"ax",%progbits
	.align	1
	.global	isdigit
	.type	isdigit, %function
isdigit:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #48
	cmp	r3, #9
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
	.size	isdigit, .-isdigit
	.section	.text.fromHex,"ax",%progbits
	.align	1
	.global	fromHex
	.type	fromHex, %function
fromHex:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
------ instrument cond branch not taken (bls) .L10
	bls	.L10
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #70
------ instrument cond branch not taken (bhi) .L10
	bhi	.L10
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #55
	b	.L11
------ instrumenting cond branch dest (.L10:)
.L10:
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #96
------ instrument cond branch not taken (bls) .L12
	bls	.L12
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #102
------ instrument cond branch not taken (bhi) .L12
	bhi	.L12
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #87
	b	.L11
------ instrumenting cond branch dest (.L12:)
.L12:
	bl	SECURE_log_cond_br
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #48
.L11:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
	.size	fromHex, .-fromHex
	.global	validDate
	.section	.bss.validDate,"aw",%nobits
	.align	2
	.type	validDate, %object
	.size	validDate, 4
validDate:
	.space	4
	.global	upDate
	.section	.bss.upDate,"aw",%nobits
	.align	2
	.type	upDate, %object
	.size	upDate, 4
upDate:
	.space	4
	.global	dateValue
	.section	.bss.dateValue,"aw",%nobits
	.align	2
	.type	dateValue, %object
	.size	dateValue, 4
dateValue:
	.space	4
	.section	.text.date_commit,"ax",%progbits
	.align	1
	.global	date_commit
	.type	date_commit, %function
date_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L14
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L14+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L15:
	.align	2
.L14:
	.word	validDate
	.word	upDate
	.size	date_commit, .-date_commit
	.global	timeVal
	.section	.bss.timeVal,"aw",%nobits
	.align	2
	.type	timeVal, %object
	.size	timeVal, 4
timeVal:
	.space	4
	.global	validTime
	.section	.bss.validTime,"aw",%nobits
	.align	2
	.type	validTime, %object
	.size	validTime, 4
validTime:
	.space	4
	.global	updateTime
	.section	.bss.updateTime,"aw",%nobits
	.align	2
	.type	updateTime, %object
	.size	updateTime, 4
updateTime:
	.space	4
	.section	.text.time_commit,"ax",%progbits
	.align	1
	.global	time_commit
	.type	time_commit, %function
time_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L17
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L17+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L18:
	.align	2
.L17:
	.word	validTime
	.word	updateTime
	.size	time_commit, .-time_commit
	.global	lat
	.section	.bss.lat,"aw",%nobits
	.align	2
	.type	lat, %object
	.size	lat, 4
lat:
	.space	4
	.global	lng
	.section	.bss.lng,"aw",%nobits
	.align	2
	.type	lng, %object
	.size	lng, 4
lng:
	.space	4
	.global	rawNewLatDataNegative
	.section	.bss.rawNewLatDataNegative,"aw",%nobits
	.align	2
	.type	rawNewLatDataNegative, %object
	.size	rawNewLatDataNegative, 4
rawNewLatDataNegative:
	.space	4
	.global	rawNewLongDataNegative
	.section	.bss.rawNewLongDataNegative,"aw",%nobits
	.align	2
	.type	rawNewLongDataNegative, %object
	.size	rawNewLongDataNegative, 4
rawNewLongDataNegative:
	.space	4
	.global	validLoc
	.section	.bss.validLoc,"aw",%nobits
	.align	2
	.type	validLoc, %object
	.size	validLoc, 4
validLoc:
	.space	4
	.global	updateLoc
	.section	.bss.updateLoc,"aw",%nobits
	.align	2
	.type	updateLoc, %object
	.size	updateLoc, 4
updateLoc:
	.space	4
	.section	.text.location_commit,"ax",%progbits
	.align	1
	.global	location_commit
	.type	location_commit, %function
location_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L20
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L20+4
	movs	r2, #0
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L21:
	.align	2
.L20:
	.word	validLoc
	.word	updateLoc
	.size	location_commit, .-location_commit
	.global	speedVal
	.section	.bss.speedVal,"aw",%nobits
	.align	2
	.type	speedVal, %object
	.size	speedVal, 4
speedVal:
	.space	4
	.global	validSpeed
	.section	.bss.validSpeed,"aw",%nobits
	.align	2
	.type	validSpeed, %object
	.size	validSpeed, 4
validSpeed:
	.space	4
	.global	updateSpeed
	.section	.bss.updateSpeed,"aw",%nobits
	.align	2
	.type	updateSpeed, %object
	.size	updateSpeed, 4
updateSpeed:
	.space	4
	.section	.text.speed_commit,"ax",%progbits
	.align	1
	.global	speed_commit
	.type	speed_commit, %function
speed_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L23
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L23+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L24:
	.align	2
.L23:
	.word	validSpeed
	.word	updateSpeed
	.size	speed_commit, .-speed_commit
	.global	degrees
	.section	.bss.degrees,"aw",%nobits
	.align	2
	.type	degrees, %object
	.size	degrees, 4
degrees:
	.space	4
	.global	validDeg
	.section	.bss.validDeg,"aw",%nobits
	.align	2
	.type	validDeg, %object
	.size	validDeg, 4
validDeg:
	.space	4
	.global	updateDeg
	.section	.bss.updateDeg,"aw",%nobits
	.align	2
	.type	updateDeg, %object
	.size	updateDeg, 4
updateDeg:
	.space	4
	.section	.text.course_commit,"ax",%progbits
	.align	1
	.global	course_commit
	.type	course_commit, %function
course_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L26
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L26+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L27:
	.align	2
.L26:
	.word	validDeg
	.word	updateDeg
	.size	course_commit, .-course_commit
	.global	height
	.section	.bss.height,"aw",%nobits
	.align	2
	.type	height, %object
	.size	height, 4
height:
	.space	4
	.global	validAlt
	.section	.bss.validAlt,"aw",%nobits
	.align	2
	.type	validAlt, %object
	.size	validAlt, 4
validAlt:
	.space	4
	.global	updateAlt
	.section	.bss.updateAlt,"aw",%nobits
	.align	2
	.type	updateAlt, %object
	.size	updateAlt, 4
updateAlt:
	.space	4
	.section	.text.altitude_commit,"ax",%progbits
	.align	1
	.global	altitude_commit
	.type	altitude_commit, %function
altitude_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L29
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L29+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L30:
	.align	2
.L29:
	.word	validAlt
	.word	updateAlt
	.size	altitude_commit, .-altitude_commit
	.global	validSat
	.section	.bss.validSat,"aw",%nobits
	.align	2
	.type	validSat, %object
	.size	validSat, 4
validSat:
	.space	4
	.global	updateSat
	.section	.bss.updateSat,"aw",%nobits
	.align	2
	.type	updateSat, %object
	.size	updateSat, 4
updateSat:
	.space	4
	.global	satCount
	.section	.bss.satCount,"aw",%nobits
	.align	2
	.type	satCount, %object
	.size	satCount, 4
satCount:
	.space	4
	.section	.text.satellites_commit,"ax",%progbits
	.align	1
	.global	satellites_commit
	.type	satellites_commit, %function
satellites_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L32
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L32+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L33:
	.align	2
.L32:
	.word	validSat
	.word	updateSat
	.size	satellites_commit, .-satellites_commit
	.global	hdopVal
	.section	.bss.hdopVal,"aw",%nobits
	.align	2
	.type	hdopVal, %object
	.size	hdopVal, 4
hdopVal:
	.space	4
	.global	validHDop
	.section	.bss.validHDop,"aw",%nobits
	.align	2
	.type	validHDop, %object
	.size	validHDop, 4
validHDop:
	.space	4
	.global	updateHDop
	.section	.bss.updateHDop,"aw",%nobits
	.align	2
	.type	updateHDop, %object
	.size	updateHDop, 4
updateHDop:
	.space	4
	.section	.text.hdop_commit,"ax",%progbits
	.align	1
	.global	hdop_commit
	.type	hdop_commit, %function
hdop_commit:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L35
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L35+4
	movs	r2, #1
	str	r2, [r3]
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L36:
	.align	2
.L35:
	.word	validHDop
	.word	updateHDop
	.size	hdop_commit, .-hdop_commit
	.global	__aeabi_i2d
	.global	__aeabi_ui2d
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.section	.text.parseDegrees,"ax",%progbits
	.align	1
	.global	parseDegrees
	.type	parseDegrees, %function
parseDegrees:
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl atol)
	ldr	r10, =atol
	bl	SECURE_log_call
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L44+8
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, .L44+12
	str	r3, [r7, #20]
	ldrh	r3, [r7, #10]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, .L44+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	strh	r3, [r7, #8]	@ movhi
	b	.L38
------ instrumenting cond branch dest (.L39:)
.L39:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L38:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
------ instrument cond branch not taken (bls) .L39
	bls	.L39
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
------ instrument cond branch not taken (bne) .L40
	bne	.L40
	bl	SECURE_log_cond_br
	b	.L41
------ instrumenting cond branch dest (.L42:)
.L42:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #20]
	ldr	r2, .L44+16
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	mov	r2, r3
	ldr	r3, [r7, #20]
	mul	r3, r3, r2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
.L41:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
------ instrument cond branch not taken (bls) .L42
	bls	.L42
	bl	SECURE_log_cond_br
------ instrumenting cond branch dest (.L40:)
.L40:
	bl	SECURE_log_cond_br
	ldrsh	r3, [r7, #8]
	mov	r0, r3
------ instrumenting call (bl __aeabi_i2d)
	ldr	r10, =__aeabi_i2d
	bl	SECURE_log_call
	mov	r4, r0
	mov	r5, r1
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r2, .L44+20
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #1
	mov	r0, r3
------ instrumenting call (bl __aeabi_ui2d)
	ldr	r10, =__aeabi_ui2d
	bl	SECURE_log_call
	adr	r3, .L44
	ldrd	r2, [r3]
------ instrumenting call (bl __aeabi_ddiv)
	ldr	r10, =__aeabi_ddiv
	bl	SECURE_log_call
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
------ instrumenting call (bl __aeabi_dadd)
	ldr	r10, =__aeabi_dadd
	bl	SECURE_log_call
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
------ instrumenting call (bl __aeabi_d2iz)
	ldr	r10, =__aeabi_d2iz
	bl	SECURE_log_call
	mov	r3, r0
	strh	r3, [r7, #8]	@ movhi
	ldrsh	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
------ instrumenting ret via pop (pop) {r4, r5, r7, pc}
	pop	{r4, r5, r7, lr}
	b	SECURE_log_ret
.L45:
	.align	3
.L44:
	.word	0
	.word	1104006501
	.word	1374389535
	.word	10000000
	.word	-858993459
	.word	-1431655765
	.size	parseDegrees, .-parseDegrees
	.section	.text.parseDecimal,"ax",%progbits
	.align	1
	.global	parseDecimal
	.type	parseDecimal, %function
parseDecimal:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L47
	beq	.L47
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
------ instrumenting cond branch dest (.L47:)
.L47:
	bl	SECURE_log_cond_br
	ldr	r0, [r7, #4]
------ instrumenting call (bl atol)
	ldr	r10, =atol
	bl	SECURE_log_call
	mov	r2, r0
	movs	r3, #100
	mul	r3, r3, r2
	str	r3, [r7, #12]
	b	.L48
------ instrumenting cond branch dest (.L49:)
.L49:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L48:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
------ instrument cond branch not taken (bls) .L49
	bls	.L49
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
------ instrument cond branch not taken (bne) .L50
	bne	.L50
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
------ instrument cond branch not taken (bhi) .L50
	bhi	.L50
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #48
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
------ instrument cond branch not taken (bhi) .L50
	bhi	.L50
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
------ instrumenting cond branch dest (.L50:)
.L50:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #8]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L51
	beq	.L51
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
	negs	r3, r3
	b	.L53
------ instrumenting cond branch dest (.L51:)
.L51:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
.L53:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
	.size	parseDecimal, .-parseDecimal
	.section	.text.time_setTime,"ax",%progbits
	.align	1
	.global	time_setTime
	.type	time_setTime, %function
time_setTime:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDecimal)
	ldr	r10, =parseDecimal
	bl	SECURE_log_call
	mov	r2, r0
	ldr	r3, .L55
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L56:
	.align	2
.L55:
	.word	timeVal
	.size	time_setTime, .-time_setTime
	.section	.text.location_setLatitude,"ax",%progbits
	.align	1
	.global	location_setLatitude
	.type	location_setLatitude, %function
location_setLatitude:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDegrees)
	ldr	r10, =parseDegrees
	bl	SECURE_log_call
	mov	r2, r0
	ldr	r3, .L58
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L59:
	.align	2
.L58:
	.word	lat
	.size	location_setLatitude, .-location_setLatitude
	.section	.text.location_setLongitude,"ax",%progbits
	.align	1
	.global	location_setLongitude
	.type	location_setLongitude, %function
location_setLongitude:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDegrees)
	ldr	r10, =parseDegrees
	bl	SECURE_log_call
	mov	r2, r0
	ldr	r3, .L61
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L62:
	.align	2
.L61:
	.word	lng
	.size	location_setLongitude, .-location_setLongitude
	.section	.text.speed_set,"ax",%progbits
	.align	1
	.global	speed_set
	.type	speed_set, %function
speed_set:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDecimal)
	ldr	r10, =parseDecimal
	bl	SECURE_log_call
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L64
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L65:
	.align	2
.L64:
	.word	speedVal
	.size	speed_set, .-speed_set
	.section	.text.course_set,"ax",%progbits
	.align	1
	.global	course_set
	.type	course_set, %function
course_set:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDecimal)
	ldr	r10, =parseDecimal
	bl	SECURE_log_call
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L67
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L68:
	.align	2
.L67:
	.word	degrees
	.size	course_set, .-course_set
	.section	.text.satellites_set,"ax",%progbits
	.align	1
	.global	satellites_set
	.type	satellites_set, %function
satellites_set:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L70
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L70
	str	r3, [r2]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L71:
	.align	2
.L70:
	.word	satCount
	.size	satellites_set, .-satellites_set
	.section	.text.date_setDate,"ax",%progbits
	.align	1
	.global	date_setDate
	.type	date_setDate, %function
date_setDate:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl atol)
	ldr	r10, =atol
	bl	SECURE_log_call
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L73
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L74:
	.align	2
.L73:
	.word	dateValue
	.size	date_setDate, .-date_setDate
	.section	.text.hdop_set,"ax",%progbits
	.align	1
	.global	hdop_set
	.type	hdop_set, %function
hdop_set:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDecimal)
	ldr	r10, =parseDecimal
	bl	SECURE_log_call
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L76
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L77:
	.align	2
.L76:
	.word	hdopVal
	.size	hdop_set, .-hdop_set
	.section	.text.altitude_set,"ax",%progbits
	.align	1
	.global	altitude_set
	.type	altitude_set, %function
altitude_set:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
------ instrumenting call (bl parseDecimal)
	ldr	r10, =parseDecimal
	bl	SECURE_log_call
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L79
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L80:
	.align	2
.L79:
	.word	height
	.size	altitude_set, .-altitude_set
	.section	.rodata
	.align	2
.LC0:
	.ascii	"GPRMC\000"
	.align	2
.LC1:
	.ascii	"GNRMC\000"
	.align	2
.LC2:
	.ascii	"GPGGA\000"
	.align	2
.LC3:
	.ascii	"GNGGA\000"
	.section	.text.endOfTermHandler,"ax",%progbits
	.align	1
	.global	endOfTermHandler
	.type	endOfTermHandler, %function
endOfTermHandler:
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r3, .L125
	ldr	r3, [r3]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L82
	beq	.L82
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
------ instrumenting call (bl fromHex)
	ldr	r10, =fromHex
	bl	SECURE_log_call
	mov	r3, r0
	uxtb	r3, r3
	lsls	r3, r3, #4
	uxtb	r4, r3
	ldr	r3, .L125+4
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
------ instrumenting call (bl fromHex)
	ldr	r10, =fromHex
	bl	SECURE_log_call
	mov	r3, r0
	uxtb	r3, r3
	add	r3, r3, r4
	strb	r3, [r7, #7]
	ldr	r3, .L125+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
------ instrument cond branch not taken (bne) .L83
	bne	.L83
	bl	SECURE_log_cond_br
	ldr	r3, .L125+12
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L125+12
	str	r3, [r2]
	ldr	r3, .L125+16
	ldr	r3, [r3]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L84
	beq	.L84
	bl	SECURE_log_cond_br
	ldr	r3, .L125+20
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L125+20
	str	r3, [r2]
------ instrumenting cond branch dest (.L84:)
.L84:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L86
	beq	.L86
	bl	SECURE_log_cond_br
	cmp	r3, #1
------ instrument cond branch not taken (bne) .L85
	bne	.L85
	bl	SECURE_log_cond_br
------ instrumenting call (bl date_commit)
	ldr	r10, =date_commit
	bl	SECURE_log_call
------ instrumenting call (bl time_commit)
	ldr	r10, =time_commit
	bl	SECURE_log_call
	ldr	r3, .L125+16
	ldr	r3, [r3]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L123
	beq	.L123
	bl	SECURE_log_cond_br
------ instrumenting call (bl location_commit)
	ldr	r10, =location_commit
	bl	SECURE_log_call
------ instrumenting call (bl speed_commit)
	ldr	r10, =speed_commit
	bl	SECURE_log_call
------ instrumenting call (bl course_commit)
	ldr	r10, =course_commit
	bl	SECURE_log_call
	b	.L123
------ instrumenting cond branch dest (.L86:)
.L86:
	bl	SECURE_log_cond_br
------ instrumenting call (bl time_commit)
	ldr	r10, =time_commit
	bl	SECURE_log_call
	ldr	r3, .L125+16
	ldr	r3, [r3]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L89
	beq	.L89
	bl	SECURE_log_cond_br
------ instrumenting call (bl location_commit)
	ldr	r10, =location_commit
	bl	SECURE_log_call
------ instrumenting call (bl altitude_commit)
	ldr	r10, =altitude_commit
	bl	SECURE_log_call
------ instrumenting cond branch dest (.L89:)
.L89:
	bl	SECURE_log_cond_br
------ instrumenting call (bl satellites_commit)
	ldr	r10, =satellites_commit
	bl	SECURE_log_call
------ instrumenting call (bl hdop_commit)
	ldr	r10, =hdop_commit
	bl	SECURE_log_call
	b	.L85
------ instrumenting cond branch dest (.L123:)
.L123:
	bl	SECURE_log_cond_br
------ instrumenting cond branch dest (.L85:)
.L85:
	bl	SECURE_log_cond_br
	movs	r3, #1
	b	.L90
------ instrumenting cond branch dest (.L83:)
.L83:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+28
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L125+28
	str	r3, [r2]
------ instrumenting cond branch dest (.L82:)
.L82:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
------ instrument cond branch not taken (bne) .L91
	bne	.L91
	bl	SECURE_log_cond_br
	ldr	r1, .L125+36
	ldr	r0, .L125+4
------ instrumenting call (bl mystrcmp)
	ldr	r10, =mystrcmp
	bl	SECURE_log_call
	mov	r3, r0
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L92
	beq	.L92
	bl	SECURE_log_cond_br
	ldr	r1, .L125+40
	ldr	r0, .L125+4
------ instrumenting call (bl mystrcmp)
	ldr	r10, =mystrcmp
	bl	SECURE_log_call
	mov	r3, r0
	cmp	r3, #0
------ instrument cond branch not taken (bne) .L93
	bne	.L93
	bl	SECURE_log_cond_br
------ instrumenting cond branch dest (.L92:)
.L92:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	movs	r2, #1
	strb	r2, [r3]
	b	.L91
------ instrumenting cond branch dest (.L93:)
.L93:
	bl	SECURE_log_cond_br
	ldr	r1, .L125+44
	ldr	r0, .L125+4
------ instrumenting call (bl mystrcmp)
	ldr	r10, =mystrcmp
	bl	SECURE_log_call
	mov	r3, r0
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L94
	beq	.L94
	bl	SECURE_log_cond_br
	ldr	r1, .L125+48
	ldr	r0, .L125+4
------ instrumenting call (bl mystrcmp)
	ldr	r10, =mystrcmp
	bl	SECURE_log_call
	mov	r3, r0
	cmp	r3, #0
------ instrument cond branch not taken (bne) .L95
	bne	.L95
	bl	SECURE_log_cond_br
------ instrumenting cond branch dest (.L94:)
.L94:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	movs	r2, #0
	strb	r2, [r3]
	b	.L91
------ instrumenting cond branch dest (.L95:)
.L95:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	movs	r2, #2
	strb	r2, [r3]
------ instrumenting cond branch dest (.L91:)
.L91:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
------ instrument cond branch not taken (beq) .L96
	beq	.L96
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L96
	beq	.L96
	bl	SECURE_log_cond_br
	ldr	r3, .L125+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L97
	beq	.L97
	bl	SECURE_log_cond_br
	cmp	r3, #1
------ instrument cond branch not taken (bne) .L96
	bne	.L96
	bl	SECURE_log_cond_br
	ldr	r3, .L125+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
------ instrument cond branch not taken (beq) .L100
	beq	.L100
	bl	SECURE_log_cond_br
	cmp	r3, #5
------ instrument cond branch not taken (bgt) .L101
	bgt	.L101
	bl	SECURE_log_cond_br
	cmp	r3, #2
------ instrument cond branch not taken (beq) .L102
	beq	.L102
	bl	SECURE_log_cond_br
	cmp	r3, #2
------ instrument cond branch not taken (bgt) .L103
	bgt	.L103
	bl	SECURE_log_cond_br
	cmp	r3, #1
------ instrument cond branch not taken (beq) .L104
	beq	.L104
	bl	SECURE_log_cond_br
	b	.L96
------ instrumenting cond branch dest (.L103:)
.L103:
	bl	SECURE_log_cond_br
	cmp	r3, #3
------ instrument cond branch not taken (beq) .L105
	beq	.L105
	bl	SECURE_log_cond_br
	cmp	r3, #4
------ instrument cond branch not taken (beq) .L106
	beq	.L106
	bl	SECURE_log_cond_br
	b	.L96
------ instrumenting cond branch dest (.L101:)
.L101:
	bl	SECURE_log_cond_br
	cmp	r3, #7
------ instrument cond branch not taken (beq) .L107
	beq	.L107
	bl	SECURE_log_cond_br
	cmp	r3, #7
------ instrument cond branch not taken (blt) .L108
	blt	.L108
	bl	SECURE_log_cond_br
	cmp	r3, #8
------ instrument cond branch not taken (beq) .L109
	beq	.L109
	bl	SECURE_log_cond_br
	cmp	r3, #9
------ instrument cond branch not taken (beq) .L110
	beq	.L110
	bl	SECURE_log_cond_br
	b	.L96
------ instrumenting cond branch dest (.L104:)
.L104:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl time_setTime)
	ldr	r10, =time_setTime
	bl	SECURE_log_call
	b	.L99
------ instrumenting cond branch dest (.L102:)
.L102:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #65
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+16
	str	r2, [r3]
	b	.L99
------ instrumenting cond branch dest (.L105:)
.L105:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl location_setLatitude)
	ldr	r10, =location_setLatitude
	bl	SECURE_log_call
	b	.L99
------ instrumenting cond branch dest (.L106:)
.L106:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+52
	str	r2, [r3]
	b	.L99
------ instrumenting cond branch dest (.L100:)
.L100:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl location_setLongitude)
	ldr	r10, =location_setLongitude
	bl	SECURE_log_call
	b	.L99
------ instrumenting cond branch dest (.L108:)
.L108:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #87
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+56
	str	r2, [r3]
	b	.L99
------ instrumenting cond branch dest (.L107:)
.L107:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl speed_set)
	ldr	r10, =speed_set
	bl	SECURE_log_call
	b	.L99
------ instrumenting cond branch dest (.L109:)
.L109:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl course_set)
	ldr	r10, =course_set
	bl	SECURE_log_call
	b	.L99
------ instrumenting cond branch dest (.L110:)
.L110:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl date_setDate)
	ldr	r10, =date_setDate
	bl	SECURE_log_call
.L99:
	b	.L96
------ instrumenting cond branch dest (.L97:)
.L97:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
------ instrument cond branch not taken (beq) .L112
	beq	.L112
	bl	SECURE_log_cond_br
	cmp	r3, #5
------ instrument cond branch not taken (bgt) .L113
	bgt	.L113
	bl	SECURE_log_cond_br
	cmp	r3, #2
------ instrument cond branch not taken (beq) .L114
	beq	.L114
	bl	SECURE_log_cond_br
	cmp	r3, #2
------ instrument cond branch not taken (bgt) .L115
	bgt	.L115
	bl	SECURE_log_cond_br
	cmp	r3, #1
------ instrument cond branch not taken (beq) .L116
	beq	.L116
	bl	SECURE_log_cond_br
	b	.L124
------ instrumenting cond branch dest (.L115:)
.L115:
	bl	SECURE_log_cond_br
	cmp	r3, #3
------ instrument cond branch not taken (beq) .L117
	beq	.L117
	bl	SECURE_log_cond_br
	cmp	r3, #4
------ instrument cond branch not taken (beq) .L118
	beq	.L118
	bl	SECURE_log_cond_br
	b	.L124
------ instrumenting cond branch dest (.L113:)
.L113:
	bl	SECURE_log_cond_br
	cmp	r3, #7
------ instrument cond branch not taken (beq) .L119
	beq	.L119
	bl	SECURE_log_cond_br
	cmp	r3, #7
------ instrument cond branch not taken (blt) .L120
	blt	.L120
	bl	SECURE_log_cond_br
	cmp	r3, #8
------ instrument cond branch not taken (beq) .L121
	beq	.L121
	bl	SECURE_log_cond_br
	cmp	r3, #9
------ instrument cond branch not taken (beq) .L122
	beq	.L122
	bl	SECURE_log_cond_br
	b	.L124
------ instrumenting cond branch dest (.L116:)
.L116:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl time_setTime)
	ldr	r10, =time_setTime
	bl	SECURE_log_call
	b	.L111
------ instrumenting cond branch dest (.L114:)
.L114:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl location_setLatitude)
	ldr	r10, =location_setLatitude
	bl	SECURE_log_call
	b	.L111
------ instrumenting cond branch dest (.L117:)
.L117:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+52
	str	r2, [r3]
	b	.L111
------ instrumenting cond branch dest (.L118:)
.L118:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl location_setLongitude)
	ldr	r10, =location_setLongitude
	bl	SECURE_log_call
	b	.L111
------ instrumenting cond branch dest (.L112:)
.L112:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #87
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+56
	str	r2, [r3]
	b	.L111
------ instrumenting cond branch dest (.L120:)
.L120:
	bl	SECURE_log_cond_br
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L125+16
	str	r2, [r3]
	b	.L111
------ instrumenting cond branch dest (.L119:)
.L119:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl satellites_set)
	ldr	r10, =satellites_set
	bl	SECURE_log_call
	b	.L111
------ instrumenting cond branch dest (.L121:)
.L121:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl hdop_set)
	ldr	r10, =hdop_set
	bl	SECURE_log_call
	b	.L111
------ instrumenting cond branch dest (.L122:)
.L122:
	bl	SECURE_log_cond_br
	ldr	r0, .L125+4
------ instrumenting call (bl altitude_set)
	ldr	r10, =altitude_set
	bl	SECURE_log_call
.L111:
.L124:
------ instrumenting cond branch dest (.L96:)
.L96:
	bl	SECURE_log_cond_br
	movs	r3, #0
.L90:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
------ instrumenting ret via pop (pop) {r4, r7, pc}
	pop	{r4, r7, lr}
	b	SECURE_log_ret
.L126:
	.align	2
.L125:
	.word	isChecksumTerm
	.word	term
	.word	parity
	.word	passedChecksumCount
	.word	sentenceHasFix
	.word	sentencesWithFixCount
	.word	curSentenceType
	.word	failedChecksumCount
	.word	curTermNumber
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	rawNewLatDataNegative
	.word	rawNewLongDataNegative
	.size	endOfTermHandler, .-endOfTermHandler
	.section	.text.gps_encode,"ax",%progbits
	.align	1
	.global	gps_encode
	.type	gps_encode, %function
gps_encode:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SECURE_record_output_data
	ldr	r3, .L139
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L139
	str	r3, [r2]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #36
------ instrument cond branch not taken (beq) .L129
	beq	.L129
	bl	SECURE_log_cond_br
	cmp	r3, #36
------ instrument cond branch not taken (bgt) .L130
	bgt	.L130
	bl	SECURE_log_cond_br
	cmp	r3, #10
------ instrument cond branch not taken (beq) .L131
	beq	.L131
	bl	SECURE_log_cond_br
	cmp	r3, #13
------ instrument cond branch not taken (beq) .L132
	beq	.L132
	bl	SECURE_log_cond_br
	b	.L128
------ instrumenting cond branch dest (.L130:)
.L130:
	bl	SECURE_log_cond_br
	cmp	r3, #42
------ instrument cond branch not taken (beq) .L133
	beq	.L133
	bl	SECURE_log_cond_br
	cmp	r3, #44
------ instrument cond branch not taken (bne) .L128
	bne	.L128
	bl	SECURE_log_cond_br
	ldr	r3, .L139+4
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L139+4
	strb	r2, [r3]
	movs	r0, #49
	bl	SECURE_record_output_data
------ instrumenting cond branch dest (.L132:)
.L132:
	bl	SECURE_log_cond_br
	movs	r0, #50
	bl	SECURE_record_output_data
------ instrumenting cond branch dest (.L131:)
.L131:
	bl	SECURE_log_cond_br
	movs	r0, #51
	bl	SECURE_record_output_data
------ instrumenting cond branch dest (.L133:)
.L133:
	bl	SECURE_log_cond_br
	movs	r0, #52
	bl	SECURE_record_output_data
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L139+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #14
------ instrument cond branch not taken (bhi) .L135
	bhi	.L135
	bl	SECURE_log_cond_br
	ldr	r3, .L139+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L139+12
	movs	r1, #0
	strb	r1, [r3, r2]
------ instrumenting call (bl endOfTermHandler)
	ldr	r10, =endOfTermHandler
	bl	SECURE_log_call
	str	r0, [r7, #12]
------ instrumenting cond branch dest (.L135:)
.L135:
	bl	SECURE_log_cond_br
	ldr	r3, .L139+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L139+16
	strb	r2, [r3]
	ldr	r3, .L139+8
	movs	r2, #0
	strb	r2, [r3]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #42
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L139+20
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L136
------ instrumenting cond branch dest (.L129:)
.L129:
	bl	SECURE_log_cond_br
	movs	r0, #53
	bl	SECURE_record_output_data
	ldr	r3, .L139+8
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L139+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L139+16
	strb	r2, [r3]
	ldr	r3, .L139+4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L139+24
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, .L139+20
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L139+28
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	b	.L136
------ instrumenting cond branch dest (.L128:)
.L128:
	bl	SECURE_log_cond_br
	movs	r0, #54
	bl	SECURE_record_output_data
	ldr	r3, .L139+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
------ instrument cond branch not taken (bhi) .L137
	bhi	.L137
	bl	SECURE_log_cond_br
	ldr	r3, .L139+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r2, r3, #1
	uxtb	r1, r2
	ldr	r2, .L139+8
	strb	r1, [r2]
	mov	r1, r3
	ldr	r2, .L139+12
	ldrb	r3, [r7, #7]
	strb	r3, [r2, r1]
------ instrumenting cond branch dest (.L137:)
.L137:
	bl	SECURE_log_cond_br
	ldr	r3, .L139+20
	ldr	r3, [r3]
	cmp	r3, #0
------ instrument cond branch not taken (bne) .L138
	bne	.L138
	bl	SECURE_log_cond_br
	ldr	r3, .L139+4
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L139+4
	strb	r2, [r3]
------ instrumenting cond branch dest (.L138:)
.L138:
	bl	SECURE_log_cond_br
	movs	r3, #0
.L136:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L140:
	.align	2
.L139:
	.word	encodedCharCount
	.word	parity
	.word	curTermOffset
	.word	term
	.word	curTermNumber
	.word	isChecksumTerm
	.word	curSentenceType
	.word	sentenceHasFix
	.size	gps_encode, .-gps_encode
	.section	.text.get_position,"ax",%progbits
	.align	1
	.global	get_position
	.type	get_position, %function
get_position:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L142
	beq	.L142
	bl	SECURE_log_cond_br
	ldr	r3, .L145
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
------ instrumenting cond branch dest (.L142:)
.L142:
	bl	SECURE_log_cond_br
	ldr	r3, [r7]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L144
	beq	.L144
	bl	SECURE_log_cond_br
	ldr	r3, .L145+4
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
------ instrumenting cond branch dest (.L144:)
.L144:
	bl	SECURE_log_cond_br
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L146:
	.align	2
.L145:
	.word	lat
	.word	lng
	.size	get_position, .-get_position
	.global	__aeabi_d2f
	.section	.text.f_get_position,"ax",%progbits
	.align	1
	.global	f_get_position
	.type	f_get_position, %function
f_get_position:
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r2, r7, #8
	add	r3, r7, #12
	mov	r1, r2
	mov	r0, r3
------ instrumenting call (bl get_position)
	ldr	r10, =get_position
	bl	SECURE_log_call
	ldr	r3, [r7, #12]
	ldr	r2, .L152+8
	cmp	r3, r2
------ instrument cond branch not taken (beq) .L148
	beq	.L148
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #12]
	mov	r0, r3
------ instrumenting call (bl __aeabi_i2d)
	ldr	r10, =__aeabi_i2d
	bl	SECURE_log_call
	adr	r3, .L152
	ldrd	r2, [r3]
------ instrumenting call (bl __aeabi_ddiv)
	ldr	r10, =__aeabi_ddiv
	bl	SECURE_log_call
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
------ instrumenting call (bl __aeabi_d2f)
	ldr	r10, =__aeabi_d2f
	bl	SECURE_log_call
	mov	r2, r0	@ float
	b	.L149
------ instrumenting cond branch dest (.L148:)
.L148:
	bl	SECURE_log_cond_br
	mov	r2, #0
.L149:
	ldr	r3, [r7, #4]
	str	r2, [r3]	@ float
	ldr	r3, [r7, #8]
	ldr	r2, .L152+8
	cmp	r3, r2
------ instrument cond branch not taken (beq) .L150
	beq	.L150
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #8]
	mov	r0, r3
------ instrumenting call (bl __aeabi_i2d)
	ldr	r10, =__aeabi_i2d
	bl	SECURE_log_call
	adr	r3, .L152
	ldrd	r2, [r3]
------ instrumenting call (bl __aeabi_ddiv)
	ldr	r10, =__aeabi_ddiv
	bl	SECURE_log_call
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
------ instrumenting call (bl __aeabi_d2f)
	ldr	r10, =__aeabi_d2f
	bl	SECURE_log_call
	mov	r2, r0	@ float
	b	.L151
------ instrumenting cond branch dest (.L150:)
.L150:
	bl	SECURE_log_cond_br
	mov	r2, #0
.L151:
	ldr	r3, [r7]
	str	r2, [r3]	@ float
	adds	r7, r7, #20
	mov	sp, r7
------ instrumenting ret via pop (pop) {r4, r7, pc}
	pop	{r4, r7, lr}
	b	SECURE_log_ret
.L153:
	.align	3
.L152:
	.word	0
	.word	1093567616
	.word	999999999
	.size	f_get_position, .-f_get_position
	.section	.text.get_datetime,"ax",%progbits
	.align	1
	.global	get_datetime
	.type	get_datetime, %function
get_datetime:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L155
	beq	.L155
	bl	SECURE_log_cond_br
	ldr	r3, .L158
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
------ instrumenting cond branch dest (.L155:)
.L155:
	bl	SECURE_log_cond_br
	ldr	r3, [r7]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L157
	beq	.L157
	bl	SECURE_log_cond_br
	ldr	r3, .L158+4
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
------ instrumenting cond branch dest (.L157:)
.L157:
	bl	SECURE_log_cond_br
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L159:
	.align	2
.L158:
	.word	dateValue
	.word	timeVal
	.size	get_datetime, .-get_datetime
	.section	.text.crack_datetime,"ax",%progbits
	.align	1
	.global	crack_datetime
	.type	crack_datetime, %function
crack_datetime:
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r2, r7, #16
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
------ instrumenting call (bl get_datetime)
	ldr	r10, =get_datetime
	bl	SECURE_log_call
	ldr	r3, [r7, #12]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L161
	beq	.L161
	bl	SECURE_log_cond_br
	ldr	r2, [r7, #20]
	ldr	r3, .L171
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #80
------ instrument cond branch not taken (ble) .L162
	ble	.L162
	bl	SECURE_log_cond_br
	movw	r3, #1900
	b	.L163
------ instrumenting cond branch dest (.L162:)
.L162:
	bl	SECURE_log_cond_br
	mov	r3, #2000
.L163:
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
------ instrumenting cond branch dest (.L161:)
.L161:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #8]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L164
	beq	.L164
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #20]
	ldr	r2, .L171
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #5
	ldr	r3, .L171
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L164:)
.L164:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L165
	beq	.L165
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #20]
	ldr	r2, .L171+4
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #13
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L165:)
.L165:
	bl	SECURE_log_cond_br
	ldr	r3, [r7]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L166
	beq	.L166
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #16]
	ldr	r2, .L171+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #18
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L166:)
.L166:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #32]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L167
	beq	.L167
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #16]
	ldr	r2, .L171+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #13
	ldr	r3, .L171
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [r7, #32]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L167:)
.L167:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #36]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L168
	beq	.L168
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #16]
	ldr	r2, .L171
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #5
	ldr	r3, .L171
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L168:)
.L168:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #40]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L170
	beq	.L170
	bl	SECURE_log_cond_br
	ldr	r2, [r7, #16]
	ldr	r3, .L171
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	movs	r1, #100
	mul	r3, r1, r3
	subs	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	strb	r2, [r3]
------ instrumenting cond branch dest (.L170:)
.L170:
	bl	SECURE_log_cond_br
	adds	r7, r7, #24
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L172:
	.align	2
.L171:
	.word	1374389535
	.word	-776530087
	.word	1125899907
	.size	crack_datetime, .-crack_datetime
	.section	.text.stats,"ax",%progbits
	.align	1
	.global	stats
	.type	stats, %function
stats:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L174
	beq	.L174
	bl	SECURE_log_cond_br
	ldr	r3, .L178
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
------ instrumenting cond branch dest (.L174:)
.L174:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #8]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L175
	beq	.L175
	bl	SECURE_log_cond_br
	ldr	r3, .L178+4
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
------ instrumenting cond branch dest (.L175:)
.L175:
	bl	SECURE_log_cond_br
	ldr	r3, [r7, #4]
	cmp	r3, #0
------ instrument cond branch not taken (beq) .L177
	beq	.L177
	bl	SECURE_log_cond_br
	ldr	r3, .L178+8
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
------ instrumenting cond branch dest (.L177:)
.L177:
	bl	SECURE_log_cond_br
	adds	r7, r7, #16
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L179:
	.align	2
.L178:
	.word	encodedCharCount
	.word	passedChecksumCount
	.word	failedChecksumCount
	.size	stats, .-stats
	.section	.text.my_aeabi_i2d,"ax",%progbits
	.align	1
	.global	my_aeabi_i2d
	.type	my_aeabi_i2d, %function
my_aeabi_i2d:
@ 0 "" 2
@ 0 "" 2
@ 0 "" 2
-----------------
	bxeq  lr
['', 'bxeq  lr']
['', 'bxeq  lr']
-----------------
@ 0 "" 2
-----------------
	bx    lr
['', 'bx    lr']
['', 'bx    lr']
-----------------
@ 0 "" 2
	.size	my_aeabi_i2d, .-my_aeabi_i2d
	.section	.text.gpsdump,"ax",%progbits
	.align	1
	.global	gpsdump
	.type	gpsdump, %function
gpsdump:
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #16
	add	r2, r7, #40
	add	r3, r7, #44
	mov	r1, r2
	mov	r0, r3
------ instrumenting call (bl get_position)
	ldr	r10, =get_position
	bl	SECURE_log_call
	add	r2, r7, #32
	add	r3, r7, #36
	mov	r1, r2
	mov	r0, r3
------ instrumenting call (bl f_get_position)
	ldr	r10, =f_get_position
	bl	SECURE_log_call
	add	r2, r7, #24
	add	r3, r7, #28
	mov	r1, r2
	mov	r0, r3
------ instrumenting call (bl get_datetime)
	ldr	r10, =get_datetime
	bl	SECURE_log_call
	add	r4, r7, #13
	add	r2, r7, #14
	add	r1, r7, #15
	add	r0, r7, #16
	add	r3, r7, #10
	str	r3, [sp, #8]
	add	r3, r7, #11
	str	r3, [sp, #4]
	add	r3, r7, #12
	str	r3, [sp]
	mov	r3, r4
------ instrumenting call (bl crack_datetime)
	ldr	r10, =crack_datetime
	bl	SECURE_log_call
	adds	r2, r7, #6
	add	r1, r7, #8
	add	r3, r7, #20
	mov	r0, r3
------ instrumenting call (bl stats)
	ldr	r10, =stats
	bl	SECURE_log_call
	adds	r7, r7, #52
	mov	sp, r7
------ instrumenting ret via pop (pop) {r4, r7, pc}
	pop	{r4, r7, lr}
	b	SECURE_log_ret
	.size	gpsdump, .-gpsdump
	.global	input_buffer
	.section	.rodata.input_buffer,"a",%progbits
	.align	2
	.type	input_buffer, %object
	.size	input_buffer, 46
input_buffer:
	.byte	36
	.byte	71
	.byte	80
	.byte	82
	.byte	77
	.byte	67
	.byte	10
	.byte	49
	.byte	48
	.byte	46
	.byte	50
	.byte	51
	.byte	44
	.byte	65
	.byte	44
	.byte	45
	.byte	50
	.byte	52
	.byte	44
	.byte	78
	.byte	44
	.byte	53
	.byte	52
	.byte	44
	.byte	87
	.byte	44
	.byte	49
	.byte	53
	.byte	46
	.byte	52
	.byte	51
	.byte	44
	.byte	57
	.byte	57
	.byte	46
	.byte	57
	.byte	44
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	42
	.byte	51
	.byte	52
	.byte	10
	.space	1
	.comm	lt,4,4
	.comm	ln,4,4
	.comm	d,4,4
	.comm	t,4,4
	.comm	c,4,4
	.comm	y,4,4
	.comm	m,1,1
	.comm	da,1,1
	.comm	h,1,1
	.comm	mi,1,1
	.comm	s,1,1
	.comm	hu,1,1
	.comm	se,2,2
	.comm	f,2,2
	.section	.text.application,"ax",%progbits
	.align	1
	.global	application
	.type	application, %function
application:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L183
------ instrumenting cond branch dest (.L184:)
.L184:
	bl	SECURE_log_cond_br
	ldr	r2, .L185
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
------ instrumenting call (bl gps_encode)
	ldr	r10, =gps_encode
	bl	SECURE_log_call
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L183:
	ldr	r3, [r7, #4]
	cmp	r3, #45
------ instrument cond branch not taken (ble) .L184
	ble	.L184
	bl	SECURE_log_cond_br
------ instrumenting call (bl gpsdump)
	ldr	r10, =gpsdump
	bl	SECURE_log_call
	adds	r7, r7, #8
	mov	sp, r7
------ instrumenting ret via pop (pop) {r7, pc}
	pop	{r7, lr}
	b	SECURE_log_ret
.L186:
	.align	2
.L185:
	.word	input_buffer
	.size	application, .-application
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
