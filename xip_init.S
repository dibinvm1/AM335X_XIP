ENTRY(xip_init)
	push	{r3, lr}  	/*‭ setting NOR MUX */
	mov	r2, #9
	movs	r3, #0
	movt	r3, 17633	/*‭ setting r3 0x44E10000‬ */
	mov	r1, #2
	str	r2, [r3, #2212] /* 0x8A4 */
	str	r2, [r3, #2216] /* 0x8A8 */
	str	r2, [r3, #2220] /* 0x8AC */
	str	r2, [r3, #2224] /* 0x8B0 */
	str	r2, [r3, #2228] /* 0x8B4 */
	str	r2, [r3, #2232] /* 0x8B8 */
	str	r2, [r3, #2236] /* 0x8BC */
	str	r2, [r3, #2272] /* 0x8E0 */
	str	r2, [r3, #2276] /* 0x8E4 */
	str	r2, [r3, #2280] /* 0x8E8 */
	movs	r2, #0 		/*‭ Initialising GPIO3 Clock Module */
	movt	r2, 17632   	/*‭ setting r2 0x44E00000‬ */
	str	r1, [r2, #180]	
back :	
	ldr	r1, [r2, #180]
	cmp	r1, #2
	bne 	back
	mov	r2, #7
	str	r2, [r3, #2536]	/*‭ setting 0x9e8(EMU1) as GPIO */
	movs	r3, #57344  	/*‭ setting r3 0xE000 */
	movt	r3, 18458   	/*‭ setting r3 0x481AE000 */
	ldr	r2, [r3, #316]	/*setting GPIO3_8 OE and Dataout */
	bic	r2, r2, #256	
	str	r2, [r3, #316]
	ldr	r2, [r3, #308]
	bic	r2, r2, #256  
	str	r2, [r3, #308]
	bx	lr		/* Return to the Caller */
ENDPROC(xip_init)
