ENTRY(xip_init)
	push	{r3, lr}
	mov	r2, #9
	movs	r3, #0
	movt	r3, 17633	
	mov	r1, #2
	str	r2, [r3, #2212]
	str	r2, [r3, #2216]
	str	r2, [r3, #2220]
	str	r2, [r3, #2224]
	str	r2, [r3, #2228]
	str	r2, [r3, #2232]
	str	r2, [r3, #2236]
	str	r2, [r3, #2272]
	str	r2, [r3, #2276]
	str	r2, [r3, #2280]
	movs	r2, #0
	movt	r2, 17632
	str	r1, [r2, #180]
back :	
	ldr	r1, [r2, #180]
	cmp	r1, #2
	bne 	back
	mov	r2, #7
	str	r2, [r3, #2536]
	movs	r3, #57344
	movt	r3, 18458
	ldr	r2, [r3, #316]
	bic	r2, r2, #256
	str	r2, [r3, #316]
	ldr	r2, [r3, #308]
	bic	r2, r2, #256  
	str	r2, [r3, #308]
	bx	lr
ENDPROC(xip_init)
