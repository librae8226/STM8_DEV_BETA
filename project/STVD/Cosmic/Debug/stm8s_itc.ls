   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 42 u8 ITC_GetCPUCC(void)
  33                     ; 43 {
  35                     .text:	section	.text,new
  36  0000               _ITC_GetCPUCC:
  40                     ; 45     _asm("push cc");
  43  0000 8a            	push	cc
  45                     ; 46     _asm("pop a");
  48  0001 84            	pop	a
  50                     ; 47     return; /* Ignore compiler warning, the returned value is in A register */
  53  0002 81            	ret	
  76                     ; 71 void ITC_DeInit(void)
  76                     ; 72 {
  77                     .text:	section	.text,new
  78  0000               _ITC_DeInit:
  82                     ; 73     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  84  0000 35ff7f70      	mov	32624,#255
  85                     ; 74     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  87  0004 35ff7f71      	mov	32625,#255
  88                     ; 75     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  90  0008 35ff7f72      	mov	32626,#255
  91                     ; 76     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
  93  000c 35ff7f73      	mov	32627,#255
  94                     ; 77     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
  96  0010 35ff7f74      	mov	32628,#255
  97                     ; 78     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
  99  0014 35ff7f75      	mov	32629,#255
 100                     ; 79     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 102  0018 35ff7f76      	mov	32630,#255
 103                     ; 80     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 105  001c 35ff7f77      	mov	32631,#255
 106                     ; 81 }
 109  0020 81            	ret	
 134                     ; 89 u8 ITC_GetSoftIntStatus(void)
 134                     ; 90 {
 135                     .text:	section	.text,new
 136  0000               _ITC_GetSoftIntStatus:
 140                     ; 91     return (u8)(ITC_GetCPUCC() & CPU_CC_I1I0);
 142  0000 cd0000        	call	_ITC_GetCPUCC
 144  0003 a428          	and	a,#40
 147  0005 81            	ret	
 410                     .const:	section	.text
 411  0000               L42:
 412  0000 0021          	dc.w	L14
 413  0002 0021          	dc.w	L14
 414  0004 0021          	dc.w	L14
 415  0006 0021          	dc.w	L14
 416  0008 0026          	dc.w	L34
 417  000a 0026          	dc.w	L34
 418  000c 0026          	dc.w	L34
 419  000e 0026          	dc.w	L34
 420  0010 0046          	dc.w	L702
 421  0012 0046          	dc.w	L702
 422  0014 002b          	dc.w	L54
 423  0016 002b          	dc.w	L54
 424  0018 0030          	dc.w	L74
 425  001a 0030          	dc.w	L74
 426  001c 0030          	dc.w	L74
 427  001e 0030          	dc.w	L74
 428  0020 0035          	dc.w	L15
 429  0022 0035          	dc.w	L15
 430  0024 0035          	dc.w	L15
 431  0026 0035          	dc.w	L15
 432  0028 003a          	dc.w	L35
 433  002a 003a          	dc.w	L35
 434  002c 003a          	dc.w	L35
 435  002e 003a          	dc.w	L35
 436  0030 003f          	dc.w	L55
 437                     ; 99 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 437                     ; 100 {
 438                     .text:	section	.text,new
 439  0000               _ITC_GetSoftwarePriority:
 441  0000 88            	push	a
 442  0001 89            	pushw	x
 443       00000002      OFST:	set	2
 446                     ; 102     u8 Value = 0;
 448  0002 0f02          	clr	(OFST+0,sp)
 449                     ; 106     assert_param(IS_ITC_IRQ_OK((u8)IrqNum));
 451                     ; 109     Mask = (u8)(0x03U << (((u8)IrqNum % 4U) * 2U));
 453  0004 a403          	and	a,#3
 454  0006 48            	sll	a
 455  0007 5f            	clrw	x
 456  0008 97            	ld	xl,a
 457  0009 a603          	ld	a,#3
 458  000b 5d            	tnzw	x
 459  000c 2704          	jreq	L61
 460  000e               L02:
 461  000e 48            	sll	a
 462  000f 5a            	decw	x
 463  0010 26fc          	jrne	L02
 464  0012               L61:
 465  0012 6b01          	ld	(OFST-1,sp),a
 466                     ; 111     switch (IrqNum)
 468  0014 7b03          	ld	a,(OFST+1,sp)
 470                     ; 181     default:
 470                     ; 182         break;
 471  0016 a119          	cp	a,#25
 472  0018 242c          	jruge	L702
 473  001a 5f            	clrw	x
 474  001b 97            	ld	xl,a
 475  001c 58            	sllw	x
 476  001d de0000        	ldw	x,(L42,x)
 477  0020 fc            	jp	(x)
 478  0021               L14:
 479                     ; 113     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 479                     ; 114     case ITC_IRQ_AWU:
 479                     ; 115     case ITC_IRQ_CLK:
 479                     ; 116     case ITC_IRQ_PORTA:
 479                     ; 117         Value = (u8)(ITC->ISPR1 & Mask); /* Read software priority */
 481  0021 c67f70        	ld	a,32624
 482                     ; 118         break;
 484  0024 201c          	jp	LC001
 485  0026               L34:
 486                     ; 119     case ITC_IRQ_PORTB:
 486                     ; 120     case ITC_IRQ_PORTC:
 486                     ; 121     case ITC_IRQ_PORTD:
 486                     ; 122     case ITC_IRQ_PORTE:
 486                     ; 123         Value = (u8)(ITC->ISPR2 & Mask); /* Read software priority */
 488  0026 c67f71        	ld	a,32625
 489                     ; 124         break;
 491  0029 2017          	jp	LC001
 492  002b               L54:
 493                     ; 134     case ITC_IRQ_SPI:
 493                     ; 135     case ITC_IRQ_TIM1_OVF:
 493                     ; 136         Value = (u8)(ITC->ISPR3 & Mask); /* Read software priority */
 495  002b c67f72        	ld	a,32626
 496                     ; 137         break;
 498  002e 2012          	jp	LC001
 499  0030               L74:
 500                     ; 138     case ITC_IRQ_TIM1_CAPCOM:
 500                     ; 139 #ifdef STM8S903
 500                     ; 140     case ITC_IRQ_TIM5_OVFTRI:
 500                     ; 141     case ITC_IRQ_TIM5_CAPCOM:
 500                     ; 142 #else
 500                     ; 143     case ITC_IRQ_TIM2_OVF:
 500                     ; 144     case ITC_IRQ_TIM2_CAPCOM:
 500                     ; 145 #endif /*STM8S903*/
 500                     ; 146 
 500                     ; 147     case ITC_IRQ_TIM3_OVF:
 500                     ; 148         Value = (u8)(ITC->ISPR4 & Mask); /* Read software priority */
 502  0030 c67f73        	ld	a,32627
 503                     ; 149         break;
 505  0033 200d          	jp	LC001
 506  0035               L15:
 507                     ; 150     case ITC_IRQ_TIM3_CAPCOM:
 507                     ; 151     case ITC_IRQ_UART1_TX:
 507                     ; 152     case ITC_IRQ_UART1_RX:
 507                     ; 153     case ITC_IRQ_I2C:
 507                     ; 154         Value = (u8)(ITC->ISPR5 & Mask); /* Read software priority */
 509  0035 c67f74        	ld	a,32628
 510                     ; 155         break;
 512  0038 2008          	jp	LC001
 513  003a               L35:
 514                     ; 157     case ITC_IRQ_UART2_TX:
 514                     ; 158     case ITC_IRQ_UART2_RX:
 514                     ; 159 #endif /*STM8S105*/
 514                     ; 160 
 514                     ; 161 #if defined(STM8S208) ||defined(STM8S207)
 514                     ; 162     case ITC_IRQ_UART3_TX:
 514                     ; 163     case ITC_IRQ_UART3_RX:
 514                     ; 164     case ITC_IRQ_ADC2:
 514                     ; 165 #endif /*STM8S208 or STM8S207*/
 514                     ; 166 
 514                     ; 167 #if defined(STM8S105) ||defined(STM8S103) ||defined(STM8S905)
 514                     ; 168     case ITC_IRQ_ADC1:
 514                     ; 169 #endif /*STM8S105, STM8S103 or STM8S905 */
 514                     ; 170 
 514                     ; 171 #ifdef STM8S903
 514                     ; 172     case ITC_IRQ_TIM6_OVFTRI:
 514                     ; 173 #else
 514                     ; 174     case ITC_IRQ_TIM4_OVF:
 514                     ; 175 #endif /*STM8S903*/
 514                     ; 176         Value = (u8)(ITC->ISPR6 & Mask); /* Read software priority */
 516  003a c67f75        	ld	a,32629
 517                     ; 177         break;
 519  003d 2003          	jp	LC001
 520  003f               L55:
 521                     ; 178     case ITC_IRQ_EEPROM_EEC:
 521                     ; 179         Value = (u8)(ITC->ISPR7 & Mask); /* Read software priority */
 523  003f c67f76        	ld	a,32630
 524  0042               LC001:
 525  0042 1401          	and	a,(OFST-1,sp)
 526  0044 6b02          	ld	(OFST+0,sp),a
 527                     ; 180         break;
 529                     ; 181     default:
 529                     ; 182         break;
 531  0046               L702:
 532                     ; 185     Value >>= (u8)(((u8)IrqNum % 4u) * 2u);
 534  0046 7b03          	ld	a,(OFST+1,sp)
 535  0048 a403          	and	a,#3
 536  004a 48            	sll	a
 537  004b 5f            	clrw	x
 538  004c 97            	ld	xl,a
 539  004d 7b02          	ld	a,(OFST+0,sp)
 540  004f 5d            	tnzw	x
 541  0050 2704          	jreq	L62
 542  0052               L03:
 543  0052 44            	srl	a
 544  0053 5a            	decw	x
 545  0054 26fc          	jrne	L03
 546  0056               L62:
 547                     ; 187     return((ITC_PriorityLevel_TypeDef)Value);
 551  0056 5b03          	addw	sp,#3
 552  0058 81            	ret	
 616                     	switch	.const
 617  0032               L64:
 618  0032 0036          	dc.w	L112
 619  0034 0036          	dc.w	L112
 620  0036 0036          	dc.w	L112
 621  0038 0036          	dc.w	L112
 622  003a 0048          	dc.w	L312
 623  003c 0048          	dc.w	L312
 624  003e 0048          	dc.w	L312
 625  0040 0048          	dc.w	L312
 626  0042 00b2          	dc.w	L562
 627  0044 00b2          	dc.w	L562
 628  0046 005a          	dc.w	L512
 629  0048 005a          	dc.w	L512
 630  004a 006c          	dc.w	L712
 631  004c 006c          	dc.w	L712
 632  004e 006c          	dc.w	L712
 633  0050 006c          	dc.w	L712
 634  0052 007e          	dc.w	L122
 635  0054 007e          	dc.w	L122
 636  0056 007e          	dc.w	L122
 637  0058 007e          	dc.w	L122
 638  005a 0090          	dc.w	L322
 639  005c 0090          	dc.w	L322
 640  005e 0090          	dc.w	L322
 641  0060 0090          	dc.w	L322
 642  0062 00a2          	dc.w	L522
 643                     ; 201 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 643                     ; 202 {
 644                     .text:	section	.text,new
 645  0000               _ITC_SetSoftwarePriority:
 647  0000 89            	pushw	x
 648  0001 89            	pushw	x
 649       00000002      OFST:	set	2
 652                     ; 208     assert_param(IS_ITC_IRQ_OK((u8)IrqNum));
 654                     ; 209     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 656                     ; 212     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 658                     ; 216     Mask = (u8)(~(u8)(0x03U << (((u8)IrqNum % 4U) * 2U)));
 660  0002 9e            	ld	a,xh
 661  0003 a403          	and	a,#3
 662  0005 48            	sll	a
 663  0006 5f            	clrw	x
 664  0007 97            	ld	xl,a
 665  0008 a603          	ld	a,#3
 666  000a 5d            	tnzw	x
 667  000b 2704          	jreq	L43
 668  000d               L63:
 669  000d 48            	sll	a
 670  000e 5a            	decw	x
 671  000f 26fc          	jrne	L63
 672  0011               L43:
 673  0011 43            	cpl	a
 674  0012 6b01          	ld	(OFST-1,sp),a
 675                     ; 219     NewPriority = (u8)((u8)(PriorityValue) << (((u8)IrqNum % 4U) * 2U));
 677  0014 7b03          	ld	a,(OFST+1,sp)
 678  0016 a403          	and	a,#3
 679  0018 48            	sll	a
 680  0019 5f            	clrw	x
 681  001a 97            	ld	xl,a
 682  001b 7b04          	ld	a,(OFST+2,sp)
 683  001d 5d            	tnzw	x
 684  001e 2704          	jreq	L04
 685  0020               L24:
 686  0020 48            	sll	a
 687  0021 5a            	decw	x
 688  0022 26fc          	jrne	L24
 689  0024               L04:
 690  0024 6b02          	ld	(OFST+0,sp),a
 691                     ; 221     switch (IrqNum)
 693  0026 7b03          	ld	a,(OFST+1,sp)
 695                     ; 305     default:
 695                     ; 306         break;
 696  0028 a119          	cp	a,#25
 697  002a 2503cc00b2    	jruge	L562
 698  002f 5f            	clrw	x
 699  0030 97            	ld	xl,a
 700  0031 58            	sllw	x
 701  0032 de0032        	ldw	x,(L64,x)
 702  0035 fc            	jp	(x)
 703  0036               L112:
 704                     ; 224     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 704                     ; 225     case ITC_IRQ_AWU:
 704                     ; 226     case ITC_IRQ_CLK:
 704                     ; 227     case ITC_IRQ_PORTA:
 704                     ; 228         ITC->ISPR1 &= Mask;
 706  0036 c67f70        	ld	a,32624
 707  0039 1401          	and	a,(OFST-1,sp)
 708  003b c77f70        	ld	32624,a
 709                     ; 229         ITC->ISPR1 |= NewPriority;
 711  003e c67f70        	ld	a,32624
 712  0041 1a02          	or	a,(OFST+0,sp)
 713  0043 c77f70        	ld	32624,a
 714                     ; 230         break;
 716  0046 206a          	jra	L562
 717  0048               L312:
 718                     ; 232     case ITC_IRQ_PORTB:
 718                     ; 233     case ITC_IRQ_PORTC:
 718                     ; 234     case ITC_IRQ_PORTD:
 718                     ; 235     case ITC_IRQ_PORTE:
 718                     ; 236         ITC->ISPR2 &= Mask;
 720  0048 c67f71        	ld	a,32625
 721  004b 1401          	and	a,(OFST-1,sp)
 722  004d c77f71        	ld	32625,a
 723                     ; 237         ITC->ISPR2 |= NewPriority;
 725  0050 c67f71        	ld	a,32625
 726  0053 1a02          	or	a,(OFST+0,sp)
 727  0055 c77f71        	ld	32625,a
 728                     ; 238         break;
 730  0058 2058          	jra	L562
 731  005a               L512:
 732                     ; 248     case ITC_IRQ_SPI:
 732                     ; 249     case ITC_IRQ_TIM1_OVF:
 732                     ; 250         ITC->ISPR3 &= Mask;
 734  005a c67f72        	ld	a,32626
 735  005d 1401          	and	a,(OFST-1,sp)
 736  005f c77f72        	ld	32626,a
 737                     ; 251         ITC->ISPR3 |= NewPriority;
 739  0062 c67f72        	ld	a,32626
 740  0065 1a02          	or	a,(OFST+0,sp)
 741  0067 c77f72        	ld	32626,a
 742                     ; 252         break;
 744  006a 2046          	jra	L562
 745  006c               L712:
 746                     ; 254     case ITC_IRQ_TIM1_CAPCOM:
 746                     ; 255 #ifdef STM8S903
 746                     ; 256     case ITC_IRQ_TIM5_OVFTRI:
 746                     ; 257     case ITC_IRQ_TIM5_CAPCOM:
 746                     ; 258 #else
 746                     ; 259     case ITC_IRQ_TIM2_OVF:
 746                     ; 260     case ITC_IRQ_TIM2_CAPCOM:
 746                     ; 261 #endif /*STM8S903*/
 746                     ; 262 
 746                     ; 263     case ITC_IRQ_TIM3_OVF:
 746                     ; 264         ITC->ISPR4 &= Mask;
 748  006c c67f73        	ld	a,32627
 749  006f 1401          	and	a,(OFST-1,sp)
 750  0071 c77f73        	ld	32627,a
 751                     ; 265         ITC->ISPR4 |= NewPriority;
 753  0074 c67f73        	ld	a,32627
 754  0077 1a02          	or	a,(OFST+0,sp)
 755  0079 c77f73        	ld	32627,a
 756                     ; 266         break;
 758  007c 2034          	jra	L562
 759  007e               L122:
 760                     ; 268     case ITC_IRQ_TIM3_CAPCOM:
 760                     ; 269     case ITC_IRQ_UART1_TX:
 760                     ; 270     case ITC_IRQ_UART1_RX:
 760                     ; 271     case ITC_IRQ_I2C:
 760                     ; 272         ITC->ISPR5 &= Mask;
 762  007e c67f74        	ld	a,32628
 763  0081 1401          	and	a,(OFST-1,sp)
 764  0083 c77f74        	ld	32628,a
 765                     ; 273         ITC->ISPR5 |= NewPriority;
 767  0086 c67f74        	ld	a,32628
 768  0089 1a02          	or	a,(OFST+0,sp)
 769  008b c77f74        	ld	32628,a
 770                     ; 274         break;
 772  008e 2022          	jra	L562
 773  0090               L322:
 774                     ; 277     case ITC_IRQ_UART2_TX:
 774                     ; 278     case ITC_IRQ_UART2_RX:
 774                     ; 279 #endif /*STM8S105*/
 774                     ; 280 
 774                     ; 281 #if defined(STM8S208) ||defined(STM8S207)
 774                     ; 282     case ITC_IRQ_UART3_TX:
 774                     ; 283     case ITC_IRQ_UART3_RX:
 774                     ; 284     case ITC_IRQ_ADC2:
 774                     ; 285 #endif /*STM8S208 or STM8S207*/
 774                     ; 286 
 774                     ; 287 #if defined(STM8S105) ||defined(STM8S103) ||defined(STM8S905)
 774                     ; 288     case ITC_IRQ_ADC1:
 774                     ; 289 #endif /*STM8S105, STM8S103 or STM8S905 */
 774                     ; 290 
 774                     ; 291 #ifdef STM8S903
 774                     ; 292     case ITC_IRQ_TIM6_OVFTRI:
 774                     ; 293 #else
 774                     ; 294     case ITC_IRQ_TIM4_OVF:
 774                     ; 295 #endif /*STM8S903*/
 774                     ; 296         ITC->ISPR6 &= Mask;
 776  0090 c67f75        	ld	a,32629
 777  0093 1401          	and	a,(OFST-1,sp)
 778  0095 c77f75        	ld	32629,a
 779                     ; 297         ITC->ISPR6 |= NewPriority;
 781  0098 c67f75        	ld	a,32629
 782  009b 1a02          	or	a,(OFST+0,sp)
 783  009d c77f75        	ld	32629,a
 784                     ; 298         break;
 786  00a0 2010          	jra	L562
 787  00a2               L522:
 788                     ; 300     case ITC_IRQ_EEPROM_EEC:
 788                     ; 301         ITC->ISPR7 &= Mask;
 790  00a2 c67f76        	ld	a,32630
 791  00a5 1401          	and	a,(OFST-1,sp)
 792  00a7 c77f76        	ld	32630,a
 793                     ; 302         ITC->ISPR7 |= NewPriority;
 795  00aa c67f76        	ld	a,32630
 796  00ad 1a02          	or	a,(OFST+0,sp)
 797  00af c77f76        	ld	32630,a
 798                     ; 303         break;
 800                     ; 305     default:
 800                     ; 306         break;
 802  00b2               L562:
 803                     ; 310 }
 806  00b2 5b04          	addw	sp,#4
 807  00b4 81            	ret	
 820                     	xdef	_ITC_GetSoftwarePriority
 821                     	xdef	_ITC_SetSoftwarePriority
 822                     	xdef	_ITC_GetSoftIntStatus
 823                     	xdef	_ITC_DeInit
 824                     	xdef	_ITC_GetCPUCC
 843                     	end
