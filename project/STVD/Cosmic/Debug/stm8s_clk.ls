   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
   5                     .const:	section	.text
   6  0000               _HSIDivFactor:
   7  0000 01            	dc.b	1
   8  0001 02            	dc.b	2
   9  0002 04            	dc.b	4
  10  0003 08            	dc.b	8
  11  0004               _CLKPrescTable:
  12  0004 01            	dc.b	1
  13  0005 02            	dc.b	2
  14  0006 04            	dc.b	4
  15  0007 08            	dc.b	8
  16  0008 0a            	dc.b	10
  17  0009 10            	dc.b	16
  18  000a 14            	dc.b	20
  19  000b 28            	dc.b	40
  48                     ; 64 void CLK_DeInit(void)
  48                     ; 65 {
  50                     .text:	section	.text,new
  51  0000               _CLK_DeInit:
  55                     ; 67     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  57  0000 350150c0      	mov	20672,#1
  58                     ; 68     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  60  0004 725f50c1      	clr	20673
  61                     ; 69     CLK->SWR  = CLK_SWR_RESET_VALUE;
  63  0008 35e150c4      	mov	20676,#225
  64                     ; 70     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  66  000c 725f50c5      	clr	20677
  67                     ; 71     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  69  0010 351850c6      	mov	20678,#24
  70                     ; 72     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  72  0014 35ff50c7      	mov	20679,#255
  73                     ; 73     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  75  0018 35ff50ca      	mov	20682,#255
  76                     ; 74     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  78  001c 725f50c8      	clr	20680
  79                     ; 75     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  81  0020 725f50c9      	clr	20681
  83  0024               L52:
  84                     ; 76     while (CLK->CCOR & CLK_CCOR_CCOEN)
  86  0024 720050c9fb    	btjt	20681,#0,L52
  87                     ; 78     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  89  0029 725f50c9      	clr	20681
  90                     ; 79     CLK->CANCCR = CLK_CANCCR_RESET_VALUE;
  92  002d 725f50cb      	clr	20683
  93                     ; 80     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
  95  0031 725f50cc      	clr	20684
  96                     ; 81     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
  98  0035 725f50cd      	clr	20685
  99                     ; 83 }
 102  0039 81            	ret	
 158                     ; 94 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 158                     ; 95 {
 159                     .text:	section	.text,new
 160  0000               _CLK_FastHaltWakeUpCmd:
 164                     ; 98     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 166                     ; 100     if (NewState != DISABLE)
 168  0000 4d            	tnz	a
 169  0001 2705          	jreq	L75
 170                     ; 103         CLK->ICKR |= CLK_ICKR_FHWU;
 172  0003 721450c0      	bset	20672,#2
 175  0007 81            	ret	
 176  0008               L75:
 177                     ; 108         CLK->ICKR &= (u8)(~CLK_ICKR_FHWU);
 179  0008 721550c0      	bres	20672,#2
 180                     ; 111 }
 183  000c 81            	ret	
 218                     ; 118 void CLK_HSECmd(FunctionalState NewState)
 218                     ; 119 {
 219                     .text:	section	.text,new
 220  0000               _CLK_HSECmd:
 224                     ; 122     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 226                     ; 124     if (NewState != DISABLE)
 228  0000 4d            	tnz	a
 229  0001 2705          	jreq	L101
 230                     ; 127         CLK->ECKR |= CLK_ECKR_HSEEN;
 232  0003 721050c1      	bset	20673,#0
 235  0007 81            	ret	
 236  0008               L101:
 237                     ; 132         CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
 239  0008 721150c1      	bres	20673,#0
 240                     ; 135 }
 243  000c 81            	ret	
 278                     ; 142 void CLK_HSICmd(FunctionalState NewState)
 278                     ; 143 {
 279                     .text:	section	.text,new
 280  0000               _CLK_HSICmd:
 284                     ; 146     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 286                     ; 148     if (NewState != DISABLE)
 288  0000 4d            	tnz	a
 289  0001 2705          	jreq	L321
 290                     ; 151         CLK->ICKR |= CLK_ICKR_HSIEN;
 292  0003 721050c0      	bset	20672,#0
 295  0007 81            	ret	
 296  0008               L321:
 297                     ; 156         CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
 299  0008 721150c0      	bres	20672,#0
 300                     ; 159 }
 303  000c 81            	ret	
 338                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 338                     ; 167 {
 339                     .text:	section	.text,new
 340  0000               _CLK_LSICmd:
 344                     ; 170     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 346                     ; 172     if (NewState != DISABLE)
 348  0000 4d            	tnz	a
 349  0001 2705          	jreq	L541
 350                     ; 175         CLK->ICKR |= CLK_ICKR_LSIEN;
 352  0003 721650c0      	bset	20672,#3
 355  0007 81            	ret	
 356  0008               L541:
 357                     ; 180         CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
 359  0008 721750c0      	bres	20672,#3
 360                     ; 183 }
 363  000c 81            	ret	
 398                     ; 191 void CLK_CCOCmd(FunctionalState NewState)
 398                     ; 192 {
 399                     .text:	section	.text,new
 400  0000               _CLK_CCOCmd:
 404                     ; 195     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 406                     ; 197     if (NewState != DISABLE)
 408  0000 4d            	tnz	a
 409  0001 2705          	jreq	L761
 410                     ; 200         CLK->CCOR |= CLK_CCOR_CCOEN;
 412  0003 721050c9      	bset	20681,#0
 415  0007 81            	ret	
 416  0008               L761:
 417                     ; 205         CLK->CCOR &= (u8)(~CLK_CCOR_CCOEN);
 419  0008 721150c9      	bres	20681,#0
 420                     ; 208 }
 423  000c 81            	ret	
 458                     ; 217 void CLK_ClockSwitchCmd(FunctionalState NewState)
 458                     ; 218 {
 459                     .text:	section	.text,new
 460  0000               _CLK_ClockSwitchCmd:
 464                     ; 221     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 466                     ; 223     if (NewState != DISABLE )
 468  0000 4d            	tnz	a
 469  0001 2705          	jreq	L112
 470                     ; 226         CLK->SWCR |= CLK_SWCR_SWEN;
 472  0003 721250c5      	bset	20677,#1
 475  0007 81            	ret	
 476  0008               L112:
 477                     ; 231         CLK->SWCR &= (u8)(~CLK_SWCR_SWEN);
 479  0008 721350c5      	bres	20677,#1
 480                     ; 234 }
 483  000c 81            	ret	
 519                     ; 244 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 519                     ; 245 {
 520                     .text:	section	.text,new
 521  0000               _CLK_SlowActiveHaltWakeUpCmd:
 525                     ; 248     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 527                     ; 250     if (NewState != DISABLE)
 529  0000 4d            	tnz	a
 530  0001 2705          	jreq	L332
 531                     ; 253         CLK->ICKR |= CLK_ICKR_SWUAH;
 533  0003 721a50c0      	bset	20672,#5
 536  0007 81            	ret	
 537  0008               L332:
 538                     ; 258         CLK->ICKR &= (u8)(~CLK_ICKR_SWUAH);
 540  0008 721b50c0      	bres	20672,#5
 541                     ; 261 }
 544  000c 81            	ret	
 703                     ; 271 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 703                     ; 272 {
 704                     .text:	section	.text,new
 705  0000               _CLK_PeripheralClockConfig:
 707  0000 89            	pushw	x
 708       00000000      OFST:	set	0
 711                     ; 275     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 713                     ; 276     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 715                     ; 278     if (((u8)CLK_Peripheral & (u8)0x10) == 0x00)
 717  0001 9e            	ld	a,xh
 718  0002 a510          	bcp	a,#16
 719  0004 2626          	jrne	L123
 720                     ; 280         if (NewState != DISABLE)
 722  0006 7b02          	ld	a,(OFST+2,sp)
 723  0008 270f          	jreq	L323
 724                     ; 283             CLK->PCKENR1 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 726  000a 7b01          	ld	a,(OFST+1,sp)
 727  000c ad44          	call	LC003
 728  000e 2704          	jreq	L62
 729  0010               L03:
 730  0010 48            	sll	a
 731  0011 5a            	decw	x
 732  0012 26fc          	jrne	L03
 733  0014               L62:
 734  0014 ca50c7        	or	a,20679
 736  0017 200e          	jp	LC002
 737  0019               L323:
 738                     ; 288             CLK->PCKENR1 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 740  0019 7b01          	ld	a,(OFST+1,sp)
 741  001b ad35          	call	LC003
 742  001d 2704          	jreq	L23
 743  001f               L43:
 744  001f 48            	sll	a
 745  0020 5a            	decw	x
 746  0021 26fc          	jrne	L43
 747  0023               L23:
 748  0023 43            	cpl	a
 749  0024 c450c7        	and	a,20679
 750  0027               LC002:
 751  0027 c750c7        	ld	20679,a
 752  002a 2024          	jra	L723
 753  002c               L123:
 754                     ; 293         if (NewState != DISABLE)
 756  002c 7b02          	ld	a,(OFST+2,sp)
 757  002e 270f          	jreq	L133
 758                     ; 296             CLK->PCKENR2 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 760  0030 7b01          	ld	a,(OFST+1,sp)
 761  0032 ad1e          	call	LC003
 762  0034 2704          	jreq	L63
 763  0036               L04:
 764  0036 48            	sll	a
 765  0037 5a            	decw	x
 766  0038 26fc          	jrne	L04
 767  003a               L63:
 768  003a ca50ca        	or	a,20682
 770  003d 200e          	jp	LC001
 771  003f               L133:
 772                     ; 301             CLK->PCKENR2 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 774  003f 7b01          	ld	a,(OFST+1,sp)
 775  0041 ad0f          	call	LC003
 776  0043 2704          	jreq	L24
 777  0045               L44:
 778  0045 48            	sll	a
 779  0046 5a            	decw	x
 780  0047 26fc          	jrne	L44
 781  0049               L24:
 782  0049 43            	cpl	a
 783  004a c450ca        	and	a,20682
 784  004d               LC001:
 785  004d c750ca        	ld	20682,a
 786  0050               L723:
 787                     ; 305 }
 790  0050 85            	popw	x
 791  0051 81            	ret	
 793  0052               LC003:
 794  0052 a40f          	and	a,#15
 795  0054 5f            	clrw	x
 796  0055 97            	ld	xl,a
 797  0056 a601          	ld	a,#1
 798  0058 5d            	tnzw	x
 799  0059 81            	ret	
 986                     ; 318 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
 986                     ; 319 {
 987                     .text:	section	.text,new
 988  0000               _CLK_ClockSwitchConfig:
 990  0000 89            	pushw	x
 991  0001 5204          	subw	sp,#4
 992       00000004      OFST:	set	4
 995                     ; 322     u16 DownCounter = CLK_TIMEOUT;
 997  0003 ae0491        	ldw	x,#1169
 998  0006 1f03          	ldw	(OFST-1,sp),x
 999                     ; 323     ErrorStatus Swif = ERROR;
1001  0008 7b02          	ld	a,(OFST-2,sp)
1002  000a 97            	ld	xl,a
1003                     ; 326     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1005                     ; 327     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1007                     ; 328     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1009                     ; 329     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1011                     ; 332     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1013  000b c650c3        	ld	a,20675
1014  000e 6b01          	ld	(OFST-3,sp),a
1015                     ; 335     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1017  0010 7b05          	ld	a,(OFST+1,sp)
1018  0012 4a            	dec	a
1019  0013 262d          	jrne	L544
1020                     ; 339         CLK->SWCR |= CLK_SWCR_SWEN;
1022  0015 721250c5      	bset	20677,#1
1023                     ; 342         if (ITState != DISABLE)
1025  0019 7b09          	ld	a,(OFST+5,sp)
1026  001b 2706          	jreq	L744
1027                     ; 344             CLK->SWCR |= CLK_SWCR_SWIEN;
1029  001d 721450c5      	bset	20677,#2
1031  0021 2004          	jra	L154
1032  0023               L744:
1033                     ; 348             CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1035  0023 721550c5      	bres	20677,#2
1036  0027               L154:
1037                     ; 352         CLK->SWR = (u8)CLK_NewClock;
1039  0027 7b06          	ld	a,(OFST+2,sp)
1040  0029 c750c4        	ld	20676,a
1042  002c 2003          	jra	L754
1043  002e               L354:
1044                     ; 356             DownCounter--;
1046  002e 5a            	decw	x
1047  002f 1f03          	ldw	(OFST-1,sp),x
1048  0031               L754:
1049                     ; 354         while (((CLK->SWCR & CLK_SWCR_SWBSY) && (DownCounter != 0)))
1051  0031 720150c504    	btjf	20677,#0,L364
1053  0036 1e03          	ldw	x,(OFST-1,sp)
1054  0038 26f4          	jrne	L354
1055  003a               L364:
1056                     ; 359         if (DownCounter != 0)
1058  003a 1e03          	ldw	x,(OFST-1,sp)
1059                     ; 361             Swif = SUCCESS;
1061  003c 2617          	jrne	LC004
1062                     ; 365             Swif = ERROR;
1064  003e 0f02          	clr	(OFST-2,sp)
1065  0040 2017          	jra	L174
1066  0042               L544:
1067                     ; 373         if (ITState != DISABLE)
1069  0042 7b09          	ld	a,(OFST+5,sp)
1070  0044 2706          	jreq	L374
1071                     ; 375             CLK->SWCR |= CLK_SWCR_SWIEN;
1073  0046 721450c5      	bset	20677,#2
1075  004a 2004          	jra	L574
1076  004c               L374:
1077                     ; 379             CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1079  004c 721550c5      	bres	20677,#2
1080  0050               L574:
1081                     ; 383         CLK->SWR = (u8)CLK_NewClock;
1083  0050 7b06          	ld	a,(OFST+2,sp)
1084  0052 c750c4        	ld	20676,a
1085                     ; 387         Swif = SUCCESS;
1087  0055               LC004:
1089  0055 a601          	ld	a,#1
1090  0057 6b02          	ld	(OFST-2,sp),a
1091  0059               L174:
1092                     ; 392     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1094  0059 7b0a          	ld	a,(OFST+6,sp)
1095  005b 260c          	jrne	L774
1097  005d 7b01          	ld	a,(OFST-3,sp)
1098  005f a1e1          	cp	a,#225
1099  0061 2606          	jrne	L774
1100                     ; 394         CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
1102  0063 721150c0      	bres	20672,#0
1104  0067 201e          	jra	L105
1105  0069               L774:
1106                     ; 396     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1108  0069 7b0a          	ld	a,(OFST+6,sp)
1109  006b 260c          	jrne	L305
1111  006d 7b01          	ld	a,(OFST-3,sp)
1112  006f a1d2          	cp	a,#210
1113  0071 2606          	jrne	L305
1114                     ; 398         CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
1116  0073 721750c0      	bres	20672,#3
1118  0077 200e          	jra	L105
1119  0079               L305:
1120                     ; 400     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1122  0079 7b0a          	ld	a,(OFST+6,sp)
1123  007b 260a          	jrne	L105
1125  007d 7b01          	ld	a,(OFST-3,sp)
1126  007f a1b4          	cp	a,#180
1127  0081 2604          	jrne	L105
1128                     ; 402         CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
1130  0083 721150c1      	bres	20673,#0
1131  0087               L105:
1132                     ; 405     return(Swif);
1134  0087 7b02          	ld	a,(OFST-2,sp)
1137  0089 5b06          	addw	sp,#6
1138  008b 81            	ret	
1276                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1276                     ; 416 {
1277                     .text:	section	.text,new
1278  0000               _CLK_HSIPrescalerConfig:
1280  0000 88            	push	a
1281       00000000      OFST:	set	0
1284                     ; 419     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1286                     ; 422     CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1288  0001 c650c6        	ld	a,20678
1289  0004 a4e7          	and	a,#231
1290  0006 c750c6        	ld	20678,a
1291                     ; 425     CLK->CKDIVR |= (u8)HSIPrescaler;
1293  0009 c650c6        	ld	a,20678
1294  000c 1a01          	or	a,(OFST+1,sp)
1295  000e c750c6        	ld	20678,a
1296                     ; 427 }
1299  0011 84            	pop	a
1300  0012 81            	ret	
1435                     ; 438 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1435                     ; 439 {
1436                     .text:	section	.text,new
1437  0000               _CLK_CCOConfig:
1439  0000 88            	push	a
1440       00000000      OFST:	set	0
1443                     ; 442     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1445                     ; 445     CLK->CCOR &= (u8)(~CLK_CCOR_CCOSEL);
1447  0001 c650c9        	ld	a,20681
1448  0004 a4e1          	and	a,#225
1449  0006 c750c9        	ld	20681,a
1450                     ; 448     CLK->CCOR |= (u8)CLK_CCO;
1452  0009 c650c9        	ld	a,20681
1453  000c 1a01          	or	a,(OFST+1,sp)
1454  000e c750c9        	ld	20681,a
1455                     ; 451     CLK->CCOR |= CLK_CCOR_CCOEN;
1457  0011 721050c9      	bset	20681,#0
1458                     ; 453 }
1461  0015 84            	pop	a
1462  0016 81            	ret	
1527                     ; 463 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1527                     ; 464 {
1528                     .text:	section	.text,new
1529  0000               _CLK_ITConfig:
1531  0000 89            	pushw	x
1532       00000000      OFST:	set	0
1535                     ; 467     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1537                     ; 468     assert_param(IS_CLK_IT_OK(CLK_IT));
1539                     ; 470     if (NewState != DISABLE)
1541  0001 9f            	ld	a,xl
1542  0002 4d            	tnz	a
1543  0003 2715          	jreq	L507
1544                     ; 472         switch (CLK_IT)
1546  0005 9e            	ld	a,xh
1548                     ; 480         default:
1548                     ; 481             break;
1549  0006 a00c          	sub	a,#12
1550  0008 270a          	jreq	L146
1551  000a a010          	sub	a,#16
1552  000c 2620          	jrne	L317
1553                     ; 474         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1553                     ; 475             CLK->SWCR |= CLK_SWCR_SWIEN;
1555  000e 721450c5      	bset	20677,#2
1556                     ; 476             break;
1558  0012 201a          	jra	L317
1559  0014               L146:
1560                     ; 477         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1560                     ; 478             CLK->CSSR |= CLK_CSSR_CSSDIE;
1562  0014 721450c8      	bset	20680,#2
1563                     ; 479             break;
1565  0018 2014          	jra	L317
1566                     ; 480         default:
1566                     ; 481             break;
1569  001a               L507:
1570                     ; 486         switch (CLK_IT)
1572  001a 7b01          	ld	a,(OFST+1,sp)
1574                     ; 494         default:
1574                     ; 495             break;
1575  001c a00c          	sub	a,#12
1576  001e 270a          	jreq	L746
1577  0020 a010          	sub	a,#16
1578  0022 260a          	jrne	L317
1579                     ; 488         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1579                     ; 489             CLK->SWCR  &= (u8)(~CLK_SWCR_SWIEN);
1581  0024 721550c5      	bres	20677,#2
1582                     ; 490             break;
1584  0028 2004          	jra	L317
1585  002a               L746:
1586                     ; 491         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1586                     ; 492             CLK->CSSR &= (u8)(~CLK_CSSR_CSSDIE);
1588  002a 721550c8      	bres	20680,#2
1589                     ; 493             break;
1590  002e               L317:
1591                     ; 499 }
1594  002e 85            	popw	x
1595  002f 81            	ret	
1596                     ; 494         default:
1596                     ; 495             break;
1632                     ; 506 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef ClockPrescaler)
1632                     ; 507 {
1633                     .text:	section	.text,new
1634  0000               _CLK_SYSCLKConfig:
1636  0000 88            	push	a
1637       00000000      OFST:	set	0
1640                     ; 510     assert_param(IS_CLK_PRESCALER_OK(ClockPrescaler));
1642                     ; 512     if (((u8)ClockPrescaler & (u8)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1644  0001 a580          	bcp	a,#128
1645  0003 260e          	jrne	L737
1646                     ; 514         CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1648  0005 c650c6        	ld	a,20678
1649  0008 a4e7          	and	a,#231
1650  000a c750c6        	ld	20678,a
1651                     ; 515         CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_HSIDIV);
1653  000d 7b01          	ld	a,(OFST+1,sp)
1654  000f a418          	and	a,#24
1656  0011 200c          	jra	L147
1657  0013               L737:
1658                     ; 519         CLK->CKDIVR &= (u8)(~CLK_CKDIVR_CPUDIV);
1660  0013 c650c6        	ld	a,20678
1661  0016 a4f8          	and	a,#248
1662  0018 c750c6        	ld	20678,a
1663                     ; 520         CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_CPUDIV);
1665  001b 7b01          	ld	a,(OFST+1,sp)
1666  001d a407          	and	a,#7
1667  001f               L147:
1668  001f ca50c6        	or	a,20678
1669  0022 c750c6        	ld	20678,a
1670                     ; 523 }
1673  0025 84            	pop	a
1674  0026 81            	ret	
1730                     ; 530 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1730                     ; 531 {
1731                     .text:	section	.text,new
1732  0000               _CLK_SWIMConfig:
1736                     ; 534     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1738                     ; 536     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1740  0000 4d            	tnz	a
1741  0001 2705          	jreq	L177
1742                     ; 539         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1744  0003 721050cd      	bset	20685,#0
1747  0007 81            	ret	
1748  0008               L177:
1749                     ; 544         CLK->SWIMCCR &= (u8)(~CLK_SWIMCCR_SWIMDIV);
1751  0008 721150cd      	bres	20685,#0
1752                     ; 547 }
1755  000c 81            	ret	
1852                     ; 555 void CLK_CANConfig(CLK_CANDivider_TypeDef CLK_CANDivider)
1852                     ; 556 {
1853                     .text:	section	.text,new
1854  0000               _CLK_CANConfig:
1856  0000 88            	push	a
1857       00000000      OFST:	set	0
1860                     ; 559     assert_param(IS_CLK_CANDIVIDER_OK(CLK_CANDivider));
1862                     ; 562     CLK->CANCCR &= (u8)(~CLK_CANCCR_CANDIV);
1864  0001 c650cb        	ld	a,20683
1865  0004 a4f8          	and	a,#248
1866  0006 c750cb        	ld	20683,a
1867                     ; 565     CLK->CANCCR |= (u8)CLK_CANDivider;
1869  0009 c650cb        	ld	a,20683
1870  000c 1a01          	or	a,(OFST+1,sp)
1871  000e c750cb        	ld	20683,a
1872                     ; 567 }
1875  0011 84            	pop	a
1876  0012 81            	ret	
1900                     ; 577 void CLK_ClockSecuritySystemEnable(void)
1900                     ; 578 {
1901                     .text:	section	.text,new
1902  0000               _CLK_ClockSecuritySystemEnable:
1906                     ; 580     CLK->CSSR |= CLK_CSSR_CSSEN;
1908  0000 721050c8      	bset	20680,#0
1909                     ; 581 }
1912  0004 81            	ret	
1937                     ; 590 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1937                     ; 591 {
1938                     .text:	section	.text,new
1939  0000               _CLK_GetSYSCLKSource:
1943                     ; 592     return((CLK_Source_TypeDef)CLK->CMSR);
1945  0000 c650c3        	ld	a,20675
1948  0003 81            	ret	
2011                     ; 602 u32 CLK_GetClockFreq(void)
2011                     ; 603 {
2012                     .text:	section	.text,new
2013  0000               _CLK_GetClockFreq:
2015  0000 5209          	subw	sp,#9
2016       00000009      OFST:	set	9
2019                     ; 605     u32 clockfrequency = 0;
2021  0002 96            	ldw	x,sp
2022  0003 1c0005        	addw	x,#OFST-4
2023  0006 cd0000        	call	c_ltor
2025                     ; 606     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2027                     ; 607     u8 tmp = 0, presc = 0;
2031                     ; 610     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2033  0009 c650c3        	ld	a,20675
2034  000c 6b09          	ld	(OFST+0,sp),a
2035                     ; 612     if (clocksource == CLK_SOURCE_HSI)
2037  000e a1e1          	cp	a,#225
2038  0010 2634          	jrne	L1111
2039                     ; 614         tmp = (u8)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2041  0012 c650c6        	ld	a,20678
2042  0015 a418          	and	a,#24
2043                     ; 615         tmp = (u8)(tmp >> 3);
2045  0017 44            	srl	a
2046  0018 44            	srl	a
2047  0019 44            	srl	a
2048                     ; 616         presc = HSIDivFactor[tmp];
2050  001a 5f            	clrw	x
2051  001b 97            	ld	xl,a
2052  001c d60000        	ld	a,(_HSIDivFactor,x)
2053  001f 6b09          	ld	(OFST+0,sp),a
2054                     ; 617         clockfrequency = HSI_VALUE / presc;
2056  0021 b703          	ld	c_lreg+3,a
2057  0023 3f02          	clr	c_lreg+2
2058  0025 3f01          	clr	c_lreg+1
2059  0027 3f00          	clr	c_lreg
2060  0029 96            	ldw	x,sp
2061  002a 5c            	incw	x
2062  002b cd0000        	call	c_rtol
2064  002e ae2400        	ldw	x,#9216
2065  0031 bf02          	ldw	c_lreg+2,x
2066  0033 ae00f4        	ldw	x,#244
2067  0036 bf00          	ldw	c_lreg,x
2068  0038 96            	ldw	x,sp
2069  0039 5c            	incw	x
2070  003a cd0000        	call	c_ludv
2072  003d 96            	ldw	x,sp
2073  003e 1c0005        	addw	x,#OFST-4
2074  0041 cd0000        	call	c_rtol
2077  0044 2018          	jra	L3111
2078  0046               L1111:
2079                     ; 619     else if ( clocksource == CLK_SOURCE_LSI)
2081  0046 a1d2          	cp	a,#210
2082  0048 260a          	jrne	L5111
2083                     ; 621         clockfrequency = LSI_VALUE;
2085  004a aef400        	ldw	x,#62464
2086  004d 1f07          	ldw	(OFST-2,sp),x
2087  004f ae0001        	ldw	x,#1
2089  0052 2008          	jp	LC005
2090  0054               L5111:
2091                     ; 625         clockfrequency = HSE_VALUE;
2093  0054 ae2400        	ldw	x,#9216
2094  0057 1f07          	ldw	(OFST-2,sp),x
2095  0059 ae00f4        	ldw	x,#244
2096  005c               LC005:
2097  005c 1f05          	ldw	(OFST-4,sp),x
2098  005e               L3111:
2099                     ; 628     return((u32)clockfrequency);
2101  005e 96            	ldw	x,sp
2102  005f 1c0005        	addw	x,#OFST-4
2103  0062 cd0000        	call	c_ltor
2107  0065 5b09          	addw	sp,#9
2108  0067 81            	ret	
2207                     ; 639 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2207                     ; 640 {
2208                     .text:	section	.text,new
2209  0000               _CLK_AdjustHSICalibrationValue:
2211  0000 88            	push	a
2212       00000000      OFST:	set	0
2215                     ; 643     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2217                     ; 646     CLK->HSITRIMR = (u8)((CLK->HSITRIMR & (u8)(~CLK_HSITRIMR_HSITRIM))|((u8)CLK_HSICalibrationValue));
2219  0001 c650cc        	ld	a,20684
2220  0004 a4f8          	and	a,#248
2221  0006 1a01          	or	a,(OFST+1,sp)
2222  0008 c750cc        	ld	20684,a
2223                     ; 648 }
2226  000b 84            	pop	a
2227  000c 81            	ret	
2251                     ; 660 void CLK_SYSCLKEmergencyClear(void)
2251                     ; 661 {
2252                     .text:	section	.text,new
2253  0000               _CLK_SYSCLKEmergencyClear:
2257                     ; 662     CLK->SWCR &= (u8)(~CLK_SWCR_SWBSY);
2259  0000 721150c5      	bres	20677,#0
2260                     ; 663 }
2263  0004 81            	ret	
2416                     ; 672 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2416                     ; 673 {
2417                     .text:	section	.text,new
2418  0000               _CLK_GetFlagStatus:
2420  0000 89            	pushw	x
2421  0001 5203          	subw	sp,#3
2422       00000003      OFST:	set	3
2425                     ; 675     u16 statusreg = 0;
2427  0003 1e01          	ldw	x,(OFST-2,sp)
2428                     ; 676     u8 tmpreg = 0;
2430                     ; 677     FlagStatus bitstatus = RESET;
2432                     ; 680     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2434                     ; 683     statusreg = (u16)((u16)CLK_FLAG & (u16)0xFF00);
2436  0005 7b04          	ld	a,(OFST+1,sp)
2437  0007 97            	ld	xl,a
2438  0008 4f            	clr	a
2439  0009 02            	rlwa	x,a
2440  000a 1f01          	ldw	(OFST-2,sp),x
2441                     ; 686     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2443  000c a30100        	cpw	x,#256
2444  000f 2605          	jrne	L3621
2445                     ; 688         tmpreg = CLK->ICKR;
2447  0011 c650c0        	ld	a,20672
2449  0014 2021          	jra	L5621
2450  0016               L3621:
2451                     ; 690     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2453  0016 a30200        	cpw	x,#512
2454  0019 2605          	jrne	L7621
2455                     ; 692         tmpreg = CLK->ECKR;
2457  001b c650c1        	ld	a,20673
2459  001e 2017          	jra	L5621
2460  0020               L7621:
2461                     ; 694     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2463  0020 a30300        	cpw	x,#768
2464  0023 2605          	jrne	L3721
2465                     ; 696         tmpreg = CLK->SWCR;
2467  0025 c650c5        	ld	a,20677
2469  0028 200d          	jra	L5621
2470  002a               L3721:
2471                     ; 698     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2473  002a a30400        	cpw	x,#1024
2474  002d 2605          	jrne	L7721
2475                     ; 700         tmpreg = CLK->CSSR;
2477  002f c650c8        	ld	a,20680
2479  0032 2003          	jra	L5621
2480  0034               L7721:
2481                     ; 704         tmpreg = CLK->CCOR;
2483  0034 c650c9        	ld	a,20681
2484  0037               L5621:
2485  0037 6b03          	ld	(OFST+0,sp),a
2486                     ; 707     if ((tmpreg & (u8)CLK_FLAG) != (u8)RESET)
2488  0039 7b05          	ld	a,(OFST+2,sp)
2489  003b 1503          	bcp	a,(OFST+0,sp)
2490  003d 2704          	jreq	L3031
2491                     ; 709         bitstatus = SET;
2493  003f a601          	ld	a,#1
2495  0041 2001          	jra	L5031
2496  0043               L3031:
2497                     ; 713         bitstatus = RESET;
2499  0043 4f            	clr	a
2500  0044               L5031:
2501                     ; 717     return((FlagStatus)bitstatus);
2505  0044 5b05          	addw	sp,#5
2506  0046 81            	ret	
2552                     ; 727 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2552                     ; 728 {
2553                     .text:	section	.text,new
2554  0000               _CLK_GetITStatus:
2556  0000 88            	push	a
2557  0001 88            	push	a
2558       00000001      OFST:	set	1
2561                     ; 730     ITStatus bitstatus = RESET;
2563  0002 0f01          	clr	(OFST+0,sp)
2564                     ; 733     assert_param(IS_CLK_IT_OK(CLK_IT));
2566                     ; 735     if (CLK_IT == CLK_IT_SWIF)
2568  0004 a11c          	cp	a,#28
2569  0006 2609          	jrne	L1331
2570                     ; 738         if ((CLK->SWCR & (u8)CLK_IT) == (u8)0x0C)
2572  0008 c450c5        	and	a,20677
2573  000b a10c          	cp	a,#12
2574  000d 260f          	jrne	L1431
2575                     ; 740             bitstatus = SET;
2577  000f 2009          	jp	LC007
2578                     ; 744             bitstatus = RESET;
2579  0011               L1331:
2580                     ; 750         if ((CLK->CSSR & (u8)CLK_IT) == (u8)0x0C)
2582  0011 c650c8        	ld	a,20680
2583  0014 1402          	and	a,(OFST+1,sp)
2584  0016 a10c          	cp	a,#12
2585  0018 2604          	jrne	L1431
2586                     ; 752             bitstatus = SET;
2588  001a               LC007:
2590  001a a601          	ld	a,#1
2592  001c 2001          	jra	L7331
2593  001e               L1431:
2594                     ; 756             bitstatus = RESET;
2597  001e 4f            	clr	a
2598  001f               L7331:
2599                     ; 761     return bitstatus;
2603  001f 85            	popw	x
2604  0020 81            	ret	
2640                     ; 771 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2640                     ; 772 {
2641                     .text:	section	.text,new
2642  0000               _CLK_ClearITPendingBit:
2646                     ; 775     assert_param(IS_CLK_IT_OK(CLK_IT));
2648                     ; 777     if (CLK_IT == (u8)CLK_IT_CSSD)
2650  0000 a10c          	cp	a,#12
2651  0002 2605          	jrne	L3631
2652                     ; 780         CLK->CSSR &= (u8)(~CLK_CSSR_CSSD);
2654  0004 721750c8      	bres	20680,#3
2657  0008 81            	ret	
2658  0009               L3631:
2659                     ; 785         CLK->SWCR &= (u8)(~CLK_SWCR_SWIF);
2661  0009 721750c5      	bres	20677,#3
2662                     ; 788 }
2665  000d 81            	ret	
2700                     	xdef	_CLKPrescTable
2701                     	xdef	_HSIDivFactor
2702                     	xdef	_CLK_ClearITPendingBit
2703                     	xdef	_CLK_GetITStatus
2704                     	xdef	_CLK_GetFlagStatus
2705                     	xdef	_CLK_GetSYSCLKSource
2706                     	xdef	_CLK_GetClockFreq
2707                     	xdef	_CLK_AdjustHSICalibrationValue
2708                     	xdef	_CLK_SYSCLKEmergencyClear
2709                     	xdef	_CLK_ClockSecuritySystemEnable
2710                     	xdef	_CLK_CANConfig
2711                     	xdef	_CLK_SWIMConfig
2712                     	xdef	_CLK_SYSCLKConfig
2713                     	xdef	_CLK_ITConfig
2714                     	xdef	_CLK_CCOConfig
2715                     	xdef	_CLK_HSIPrescalerConfig
2716                     	xdef	_CLK_ClockSwitchConfig
2717                     	xdef	_CLK_PeripheralClockConfig
2718                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2719                     	xdef	_CLK_FastHaltWakeUpCmd
2720                     	xdef	_CLK_ClockSwitchCmd
2721                     	xdef	_CLK_CCOCmd
2722                     	xdef	_CLK_LSICmd
2723                     	xdef	_CLK_HSICmd
2724                     	xdef	_CLK_HSECmd
2725                     	xdef	_CLK_DeInit
2726                     	xref.b	c_lreg
2745                     	xref	c_ludv
2746                     	xref	c_rtol
2747                     	xref	c_ltor
2748                     	end
