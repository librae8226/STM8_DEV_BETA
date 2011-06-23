   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 45 void I2C_DeInit(void)
  33                     ; 46 {
  35                     .text:	section	.text,new
  36  0000               _I2C_DeInit:
  40                     ; 47   I2C->CR1 = I2C_CR1_RESET_VALUE;
  42  0000 725f5210      	clr	21008
  43                     ; 48   I2C->CR2 = I2C_CR2_RESET_VALUE;
  45  0004 725f5211      	clr	21009
  46                     ; 49   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  48  0008 725f5212      	clr	21010
  49                     ; 50   I2C->OARL = I2C_OARL_RESET_VALUE;
  51  000c 725f5213      	clr	21011
  52                     ; 51   I2C->OARH = I2C_OARH_RESET_VALUE;
  54  0010 725f5214      	clr	21012
  55                     ; 52   I2C->ITR = I2C_ITR_RESET_VALUE;
  57  0014 725f521a      	clr	21018
  58                     ; 53   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  60  0018 725f521b      	clr	21019
  61                     ; 54   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  63  001c 725f521c      	clr	21020
  64                     ; 55   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  66  0020 3502521d      	mov	21021,#2
  67                     ; 56 }
  70  0024 81            	ret	
 249                     .const:	section	.text
 250  0000               L01:
 251  0000 000186a1      	dc.l	100001
 252  0004               L21:
 253  0004 000f4240      	dc.l	1000000
 254                     ; 71 void I2C_Init(u32 OutputClockFrequencyHz, u16 OwnAddress, I2C_DutyCycle_TypeDef DutyCycle, I2C_Ack_TypeDef Ack, I2C_AddMode_TypeDef AddMode, u8 InputClockFrequencyMHz )
 254                     ; 72 {
 255                     .text:	section	.text,new
 256  0000               _I2C_Init:
 258  0000 5209          	subw	sp,#9
 259       00000009      OFST:	set	9
 262                     ; 73   u16 result = 0x0004;
 264                     ; 74   u16 tmpval = 0;
 266                     ; 75   u8 tmpccrh = 0;
 268  0002 0f07          	clr	(OFST-2,sp)
 269                     ; 78   assert_param(IS_I2C_ACK_OK(Ack));
 271                     ; 79   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 273                     ; 80   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 275                     ; 81   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 277                     ; 82   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 279                     ; 87   I2C->FREQR &= (u8)(~I2C_FREQR_FREQ);
 281  0004 c65212        	ld	a,21010
 282  0007 a4c0          	and	a,#192
 283  0009 c75212        	ld	21010,a
 284                     ; 89   I2C->FREQR |= InputClockFrequencyMHz;
 286  000c c65212        	ld	a,21010
 287  000f 1a15          	or	a,(OFST+12,sp)
 288  0011 c75212        	ld	21010,a
 289                     ; 93   I2C->CR1 &= (u8)(~I2C_CR1_PE);
 291  0014 72115210      	bres	21008,#0
 292                     ; 96   I2C->CCRH &= (u8)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 294  0018 c6521c        	ld	a,21020
 295  001b a430          	and	a,#48
 296  001d c7521c        	ld	21020,a
 297                     ; 97   I2C->CCRL &= (u8)(~I2C_CCRL_CCR);
 299  0020 725f521b      	clr	21019
 300                     ; 100   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 302  0024 96            	ldw	x,sp
 303  0025 1c000c        	addw	x,#OFST+3
 304  0028 cd0000        	call	c_ltor
 306  002b ae0000        	ldw	x,#L01
 307  002e cd0000        	call	c_lcmp
 309  0031 2560          	jrult	L131
 310                     ; 103     tmpccrh = I2C_CCRH_FS;
 312  0033 a680          	ld	a,#128
 313  0035 6b07          	ld	(OFST-2,sp),a
 314                     ; 105     if (DutyCycle == I2C_DUTYCYCLE_2)
 316  0037 0d12          	tnz	(OFST+9,sp)
 317  0039 96            	ldw	x,sp
 318  003a 261d          	jrne	L331
 319                     ; 108       result = (u16) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 321  003c 1c000c        	addw	x,#OFST+3
 322  003f cd0000        	call	c_ltor
 324  0042 a603          	ld	a,#3
 325  0044 cd0000        	call	c_smul
 327  0047 96            	ldw	x,sp
 328  0048 5c            	incw	x
 329  0049 cd0000        	call	c_rtol
 331  004c 7b15          	ld	a,(OFST+12,sp)
 332  004e cd00f6        	call	LC001
 334  0051 96            	ldw	x,sp
 335  0052 cd0104        	call	LC002
 336  0055 1f08          	ldw	(OFST-1,sp),x
 338  0057 2021          	jra	L531
 339  0059               L331:
 340                     ; 113       result = (u16) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 342  0059 1c000c        	addw	x,#OFST+3
 343  005c cd0000        	call	c_ltor
 345  005f a619          	ld	a,#25
 346  0061 cd0000        	call	c_smul
 348  0064 96            	ldw	x,sp
 349  0065 5c            	incw	x
 350  0066 cd0000        	call	c_rtol
 352  0069 7b15          	ld	a,(OFST+12,sp)
 353  006b cd00f6        	call	LC001
 355  006e 96            	ldw	x,sp
 356  006f cd0104        	call	LC002
 357  0072 1f08          	ldw	(OFST-1,sp),x
 358                     ; 115       tmpccrh |= I2C_CCRH_DUTY;
 360  0074 7b07          	ld	a,(OFST-2,sp)
 361  0076 aa40          	or	a,#64
 362  0078 6b07          	ld	(OFST-2,sp),a
 363  007a               L531:
 364                     ; 119     if (result < (u16)0x01)
 366  007a 1e08          	ldw	x,(OFST-1,sp)
 367  007c 2603          	jrne	L731
 368                     ; 122       result = (u16)0x0001;
 370  007e 5c            	incw	x
 371  007f 1f08          	ldw	(OFST-1,sp),x
 372  0081               L731:
 373                     ; 128     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 375  0081 7b15          	ld	a,(OFST+12,sp)
 376  0083 97            	ld	xl,a
 377  0084 a603          	ld	a,#3
 378  0086 42            	mul	x,a
 379  0087 a60a          	ld	a,#10
 380  0089 cd0000        	call	c_sdivx
 382  008c 5c            	incw	x
 383  008d 1f05          	ldw	(OFST-4,sp),x
 384                     ; 129     I2C->TRISER = (u8)tmpval;
 386  008f 7b06          	ld	a,(OFST-3,sp)
 388  0091 2028          	jra	L141
 389  0093               L131:
 390                     ; 136     result = (u16)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (u8)1));
 392  0093 96            	ldw	x,sp
 393  0094 1c000c        	addw	x,#OFST+3
 394  0097 cd0000        	call	c_ltor
 396  009a 3803          	sll	c_lreg+3
 397  009c 3902          	rlc	c_lreg+2
 398  009e 3901          	rlc	c_lreg+1
 399  00a0 3900          	rlc	c_lreg
 400  00a2 96            	ldw	x,sp
 401  00a3 5c            	incw	x
 402  00a4 cd0000        	call	c_rtol
 404  00a7 7b15          	ld	a,(OFST+12,sp)
 405  00a9 ad4b          	call	LC001
 407  00ab 96            	ldw	x,sp
 408  00ac ad56          	call	LC002
 409                     ; 139     if (result < (u16)0x0004)
 411  00ae a30004        	cpw	x,#4
 412  00b1 2403          	jruge	L341
 413                     ; 142       result = (u16)0x0004;
 415  00b3 ae0004        	ldw	x,#4
 416  00b6               L341:
 417  00b6 1f08          	ldw	(OFST-1,sp),x
 418                     ; 148     I2C->TRISER = (u8)(InputClockFrequencyMHz + 1);
 420  00b8 7b15          	ld	a,(OFST+12,sp)
 421  00ba 4c            	inc	a
 422  00bb               L141:
 423  00bb c7521d        	ld	21021,a
 424                     ; 153   I2C->CCRL = (u8)result;
 426  00be 7b09          	ld	a,(OFST+0,sp)
 427  00c0 c7521b        	ld	21019,a
 428                     ; 154   I2C->CCRH = (u8)(((u8)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 430  00c3 7b08          	ld	a,(OFST-1,sp)
 431  00c5 a40f          	and	a,#15
 432  00c7 1a07          	or	a,(OFST-2,sp)
 433  00c9 c7521c        	ld	21020,a
 434                     ; 157   I2C->CR1 |= I2C_CR1_PE;
 436  00cc 72105210      	bset	21008,#0
 437                     ; 160   I2C_AcknowledgeConfig(Ack);
 439  00d0 7b13          	ld	a,(OFST+10,sp)
 440  00d2 cd0000        	call	_I2C_AcknowledgeConfig
 442                     ; 163   I2C->OARL = (u8)(OwnAddress);
 444  00d5 7b11          	ld	a,(OFST+8,sp)
 445  00d7 c75213        	ld	21011,a
 446                     ; 164   I2C->OARH = (u8)((u8)AddMode |
 446                     ; 165                    I2C_OARH_ADDCONF |
 446                     ; 166                    (u8)((OwnAddress & (u16)0x0300) >> (u8)7));
 448  00da 7b10          	ld	a,(OFST+7,sp)
 449  00dc a403          	and	a,#3
 450  00de 97            	ld	xl,a
 451  00df 4f            	clr	a
 452  00e0 02            	rlwa	x,a
 453  00e1 a607          	ld	a,#7
 454  00e3               L61:
 455  00e3 54            	srlw	x
 456  00e4 4a            	dec	a
 457  00e5 26fc          	jrne	L61
 458  00e7 9f            	ld	a,xl
 459  00e8 6b04          	ld	(OFST-5,sp),a
 460  00ea 7b14          	ld	a,(OFST+11,sp)
 461  00ec aa40          	or	a,#64
 462  00ee 1a04          	or	a,(OFST-5,sp)
 463  00f0 c75214        	ld	21012,a
 464                     ; 167 }
 467  00f3 5b09          	addw	sp,#9
 468  00f5 81            	ret	
 470  00f6               LC001:
 471  00f6 b703          	ld	c_lreg+3,a
 472  00f8 3f02          	clr	c_lreg+2
 473  00fa 3f01          	clr	c_lreg+1
 474  00fc 3f00          	clr	c_lreg
 475  00fe ae0004        	ldw	x,#L21
 476  0101 cc0000        	jp	c_lmul
 477  0104               LC002:
 478  0104 5c            	incw	x
 479  0105 cd0000        	call	c_ludv
 481  0108 be02          	ldw	x,c_lreg+2
 482  010a 81            	ret	
 536                     ; 175 void I2C_Cmd(FunctionalState NewState)
 536                     ; 176 {
 537                     .text:	section	.text,new
 538  0000               _I2C_Cmd:
 542                     ; 179   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 544                     ; 181   if (NewState != DISABLE)
 546  0000 4d            	tnz	a
 547  0001 2705          	jreq	L371
 548                     ; 184     I2C->CR1 |= I2C_CR1_PE;
 550  0003 72105210      	bset	21008,#0
 553  0007 81            	ret	
 554  0008               L371:
 555                     ; 189     I2C->CR1 &= (u8)(~I2C_CR1_PE);
 557  0008 72115210      	bres	21008,#0
 558                     ; 191 }
 561  000c 81            	ret	
 596                     ; 199 void I2C_GeneralCallCmd(FunctionalState NewState)
 596                     ; 200 {
 597                     .text:	section	.text,new
 598  0000               _I2C_GeneralCallCmd:
 602                     ; 203   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 604                     ; 205   if (NewState != DISABLE)
 606  0000 4d            	tnz	a
 607  0001 2705          	jreq	L512
 608                     ; 208     I2C->CR1 |= I2C_CR1_ENGC;
 610  0003 721c5210      	bset	21008,#6
 613  0007 81            	ret	
 614  0008               L512:
 615                     ; 213     I2C->CR1 &= (u8)(~I2C_CR1_ENGC);
 617  0008 721d5210      	bres	21008,#6
 618                     ; 215 }
 621  000c 81            	ret	
 656                     ; 225 void I2C_GenerateSTART(FunctionalState NewState)
 656                     ; 226 {
 657                     .text:	section	.text,new
 658  0000               _I2C_GenerateSTART:
 662                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 664                     ; 231   if (NewState != DISABLE)
 666  0000 4d            	tnz	a
 667  0001 2705          	jreq	L732
 668                     ; 234     I2C->CR2 |= I2C_CR2_START;
 670  0003 72105211      	bset	21009,#0
 673  0007 81            	ret	
 674  0008               L732:
 675                     ; 239     I2C->CR2 &= (u8)(~I2C_CR2_START);
 677  0008 72115211      	bres	21009,#0
 678                     ; 241 }
 681  000c 81            	ret	
 716                     ; 249 void I2C_GenerateSTOP(FunctionalState NewState)
 716                     ; 250 {
 717                     .text:	section	.text,new
 718  0000               _I2C_GenerateSTOP:
 722                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 724                     ; 255   if (NewState != DISABLE)
 726  0000 4d            	tnz	a
 727  0001 2705          	jreq	L162
 728                     ; 258     I2C->CR2 |= I2C_CR2_STOP;
 730  0003 72125211      	bset	21009,#1
 733  0007 81            	ret	
 734  0008               L162:
 735                     ; 263     I2C->CR2 &= (u8)(~I2C_CR2_STOP);
 737  0008 72135211      	bres	21009,#1
 738                     ; 265 }
 741  000c 81            	ret	
 777                     ; 273 void I2C_SoftwareResetCmd(FunctionalState NewState)
 777                     ; 274 {
 778                     .text:	section	.text,new
 779  0000               _I2C_SoftwareResetCmd:
 783                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 785                     ; 278   if (NewState != DISABLE)
 787  0000 4d            	tnz	a
 788  0001 2705          	jreq	L303
 789                     ; 281     I2C->CR2 |= I2C_CR2_SWRST;
 791  0003 721e5211      	bset	21009,#7
 794  0007 81            	ret	
 795  0008               L303:
 796                     ; 286     I2C->CR2 &= (u8)(~I2C_CR2_SWRST);
 798  0008 721f5211      	bres	21009,#7
 799                     ; 288 }
 802  000c 81            	ret	
 838                     ; 297 void I2C_StretchClockCmd(FunctionalState NewState)
 838                     ; 298 {
 839                     .text:	section	.text,new
 840  0000               _I2C_StretchClockCmd:
 844                     ; 300   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 846                     ; 302   if (NewState != DISABLE)
 848  0000 4d            	tnz	a
 849  0001 2705          	jreq	L523
 850                     ; 305     I2C->CR1 &= (u8)(~I2C_CR1_NOSTRETCH);
 852  0003 721f5210      	bres	21008,#7
 855  0007 81            	ret	
 856  0008               L523:
 857                     ; 311     I2C->CR1 |= I2C_CR1_NOSTRETCH;
 859  0008 721e5210      	bset	21008,#7
 860                     ; 313 }
 863  000c 81            	ret	
 899                     ; 323 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
 899                     ; 324 {
 900                     .text:	section	.text,new
 901  0000               _I2C_AcknowledgeConfig:
 903  0000 88            	push	a
 904       00000000      OFST:	set	0
 907                     ; 327   assert_param(IS_I2C_ACK_OK(Ack));
 909                     ; 329   if (Ack == I2C_ACK_NONE)
 911  0001 4d            	tnz	a
 912  0002 2606          	jrne	L743
 913                     ; 332     I2C->CR2 &= (u8)(~I2C_CR2_ACK);
 915  0004 72155211      	bres	21009,#2
 917  0008 2013          	jra	L153
 918  000a               L743:
 919                     ; 337     I2C->CR2 |= I2C_CR2_ACK;
 921  000a 72145211      	bset	21009,#2
 922                     ; 339     if (Ack == I2C_ACK_CURR)
 924  000e 7b01          	ld	a,(OFST+1,sp)
 925  0010 4a            	dec	a
 926  0011 2606          	jrne	L353
 927                     ; 342       I2C->CR2 &= (u8)(~I2C_CR2_POS);
 929  0013 72175211      	bres	21009,#3
 931  0017 2004          	jra	L153
 932  0019               L353:
 933                     ; 347       I2C->CR2 |= I2C_CR2_POS;
 935  0019 72165211      	bset	21009,#3
 936  001d               L153:
 937                     ; 351 }
 940  001d 84            	pop	a
 941  001e 81            	ret	
1013                     ; 361 void I2C_ITConfig(I2C_IT_TypeDef ITName, FunctionalState NewState)
1013                     ; 362 {
1014                     .text:	section	.text,new
1015  0000               _I2C_ITConfig:
1017  0000 89            	pushw	x
1018       00000000      OFST:	set	0
1021                     ; 365   assert_param(IS_I2C_INTERRUPT_OK(ITName));
1023                     ; 366   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1025                     ; 368   if (NewState != DISABLE)
1027  0001 9f            	ld	a,xl
1028  0002 4d            	tnz	a
1029  0003 2706          	jreq	L314
1030                     ; 371     I2C->ITR |= (u8)ITName;
1032  0005 9e            	ld	a,xh
1033  0006 ca521a        	or	a,21018
1035  0009 2006          	jra	L514
1036  000b               L314:
1037                     ; 376     I2C->ITR &= (u8)(~(u8)ITName);
1039  000b 7b01          	ld	a,(OFST+1,sp)
1040  000d 43            	cpl	a
1041  000e c4521a        	and	a,21018
1042  0011               L514:
1043  0011 c7521a        	ld	21018,a
1044                     ; 378 }
1047  0014 85            	popw	x
1048  0015 81            	ret	
1084                     ; 386 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef DutyCycle)
1084                     ; 387 {
1085                     .text:	section	.text,new
1086  0000               _I2C_FastModeDutyCycleConfig:
1090                     ; 390   assert_param(IS_I2C_DUTYCYCLE_OK(DutyCycle));
1092                     ; 392   if (DutyCycle == I2C_DUTYCYCLE_16_9)
1094  0000 a140          	cp	a,#64
1095  0002 2605          	jrne	L534
1096                     ; 395     I2C->CCRH |= I2C_CCRH_DUTY;
1098  0004 721c521c      	bset	21020,#6
1101  0008 81            	ret	
1102  0009               L534:
1103                     ; 400     I2C->CCRH &= (u8)(~I2C_CCRH_DUTY);
1105  0009 721d521c      	bres	21020,#6
1106                     ; 402 }
1109  000d 81            	ret	
1287                     ; 414 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1287                     ; 415 {
1288                     .text:	section	.text,new
1289  0000               _I2C_CheckEvent:
1291  0000 89            	pushw	x
1292  0001 89            	pushw	x
1293       00000002      OFST:	set	2
1296                     ; 417   u8 flag1 = 0;
1298                     ; 418   u8 flag2 = 0;
1300                     ; 419   ErrorStatus status = ERROR;
1302                     ; 422   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1304                     ; 424   flag1 = I2C->SR1;
1306  0002 c65217        	ld	a,21015
1307  0005 6b01          	ld	(OFST-1,sp),a
1308                     ; 425   flag2 = I2C->SR2;
1310  0007 c65218        	ld	a,21016
1311  000a 6b02          	ld	(OFST+0,sp),a
1312                     ; 428   if (((u16)I2C_Event & (u16)0x0F00) == 0x0700)
1314  000c 7b03          	ld	a,(OFST+1,sp)
1315  000e a40f          	and	a,#15
1316  0010 97            	ld	xl,a
1317  0011 4f            	clr	a
1318  0012 02            	rlwa	x,a
1319  0013 a30700        	cpw	x,#1792
1320  0016 2608          	jrne	L535
1321                     ; 431     if (flag1 & (u8)I2C_Event)
1323  0018 7b04          	ld	a,(OFST+2,sp)
1324  001a 1501          	bcp	a,(OFST-1,sp)
1325  001c 270c          	jreq	L545
1326                     ; 434       status = SUCCESS;
1328  001e 2006          	jp	LC004
1329                     ; 439       status = ERROR;
1330  0020               L535:
1331                     ; 444     if (flag2 & (u8)I2C_Event)
1333  0020 7b04          	ld	a,(OFST+2,sp)
1334  0022 1502          	bcp	a,(OFST+0,sp)
1335  0024 2704          	jreq	L545
1336                     ; 447       status = SUCCESS;
1338  0026               LC004:
1340  0026 a601          	ld	a,#1
1342  0028 2001          	jra	L345
1343  002a               L545:
1344                     ; 452       status = ERROR;
1347  002a 4f            	clr	a
1348  002b               L345:
1349                     ; 457   return status;
1353  002b 5b04          	addw	sp,#4
1354  002d 81            	ret	
1377                     ; 467 u8 I2C_ReceiveData(void)
1377                     ; 468 {
1378                     .text:	section	.text,new
1379  0000               _I2C_ReceiveData:
1383                     ; 470   return ((u8)I2C->DR);
1385  0000 c65216        	ld	a,21014
1388  0003 81            	ret	
1453                     ; 480 void I2C_Send7bitAddress(u8 Address, I2C_Direction_TypeDef Direction)
1453                     ; 481 {
1454                     .text:	section	.text,new
1455  0000               _I2C_Send7bitAddress:
1457  0000 89            	pushw	x
1458       00000000      OFST:	set	0
1461                     ; 483   assert_param(IS_I2C_ADDRESS_OK(Address));
1463                     ; 484   assert_param(IS_I2C_DIRECTION_OK(Direction));
1465                     ; 487   Address &= (u8)0xFE;
1467  0001 7b01          	ld	a,(OFST+1,sp)
1468  0003 a4fe          	and	a,#254
1469  0005 6b01          	ld	(OFST+1,sp),a
1470                     ; 490   I2C->DR = (u8)(Address | (u8)Direction);
1472  0007 1a02          	or	a,(OFST+2,sp)
1473  0009 c75216        	ld	21014,a
1474                     ; 491 }
1477  000c 85            	popw	x
1478  000d 81            	ret	
1512                     ; 498 void I2C_SendData(u8 Data)
1512                     ; 499 {
1513                     .text:	section	.text,new
1514  0000               _I2C_SendData:
1518                     ; 501   I2C->DR = Data;
1520  0000 c75216        	ld	21014,a
1521                     ; 502 }
1524  0003 81            	ret	
1721                     ; 511 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef Flag)
1721                     ; 512 {
1722                     .text:	section	.text,new
1723  0000               _I2C_GetFlagStatus:
1725  0000 89            	pushw	x
1726  0001 88            	push	a
1727       00000001      OFST:	set	1
1730                     ; 514   FlagStatus bitstatus = RESET;
1732  0002 0f01          	clr	(OFST+0,sp)
1733                     ; 517   assert_param(IS_I2C_FLAG_OK(Flag));
1735                     ; 520   switch ((u16)Flag & (u16)0xF000)
1737  0004 01            	rrwa	x,a
1738  0005 9f            	ld	a,xl
1739  0006 a4f0          	and	a,#240
1740  0008 97            	ld	xl,a
1741  0009 4f            	clr	a
1742  000a 02            	rlwa	x,a
1744                     ; 568     default:
1744                     ; 569       break;
1745  000b 1d1000        	subw	x,#4096
1746  000e 270c          	jreq	L136
1747  0010 1d1000        	subw	x,#4096
1748  0013 270c          	jreq	L336
1749  0015 1d1000        	subw	x,#4096
1750  0018 2714          	jreq	L536
1751  001a 201b          	jra	L147
1752  001c               L136:
1753                     ; 524     case 0x1000:
1753                     ; 525       /* Check the status of the specified I2C flag */
1753                     ; 526       if ((I2C->SR1 & (u8)Flag) != 0)
1755  001c c65217        	ld	a,21015
1756                     ; 529         bitstatus = SET;
1758  001f 2003          	jp	LC007
1759                     ; 534         bitstatus = RESET;
1760  0021               L336:
1761                     ; 539     case 0x2000:
1761                     ; 540       /* Check the status of the specified I2C flag */
1761                     ; 541       if ((I2C->SR2 & (u8)Flag) != 0)
1763  0021 c65218        	ld	a,21016
1764  0024               LC007:
1765  0024 1503          	bcp	a,(OFST+2,sp)
1766  0026 270d          	jreq	L357
1767                     ; 544         bitstatus = SET;
1769  0028               LC006:
1772  0028 a601          	ld	a,#1
1773  002a 6b01          	ld	(OFST+0,sp),a
1775  002c 2009          	jra	L147
1776                     ; 549         bitstatus = RESET;
1777  002e               L536:
1778                     ; 554     case 0x3000:
1778                     ; 555       /* Check the status of the specified I2C flag */
1778                     ; 556       if ((I2C->SR3 & (u8)Flag) != 0)
1780  002e c65219        	ld	a,21017
1781  0031 1503          	bcp	a,(OFST+2,sp)
1782                     ; 559         bitstatus = SET;
1784  0033 26f3          	jrne	LC006
1785  0035               L357:
1786                     ; 564         bitstatus = RESET;
1790  0035 0f01          	clr	(OFST+0,sp)
1791                     ; 568     default:
1791                     ; 569       break;
1793  0037               L147:
1794                     ; 573   return bitstatus;
1796  0037 7b01          	ld	a,(OFST+0,sp)
1799  0039 5b03          	addw	sp,#3
1800  003b 81            	ret	
1862                     ; 592 void I2C_ClearFlag(I2C_Flag_TypeDef Flag)
1862                     ; 593 {
1863                     .text:	section	.text,new
1864  0000               _I2C_ClearFlag:
1866  0000 89            	pushw	x
1867  0001 5204          	subw	sp,#4
1868       00000004      OFST:	set	4
1871                     ; 594   u8 tmp1 = 0;
1873                     ; 595   u8 tmp2 = 0;
1875                     ; 596   u16 tmp3 = 0;
1877  0003 1e03          	ldw	x,(OFST-1,sp)
1878                     ; 599   assert_param(IS_I2C_CLEAR_FLAG_OK(Flag));
1880                     ; 602   tmp3 = ((u16)Flag & (u16)0x0F00);
1882  0005 7b05          	ld	a,(OFST+1,sp)
1883  0007 a40f          	and	a,#15
1884  0009 97            	ld	xl,a
1885  000a 4f            	clr	a
1886  000b 02            	rlwa	x,a
1887  000c 1f03          	ldw	(OFST-1,sp),x
1888                     ; 605   if(tmp3 == 0x0100)
1890  000e a30100        	cpw	x,#256
1891  0011 2608          	jrne	L1101
1892                     ; 608       I2C->SR2 = (u8)(~(u8)Flag);
1894  0013 7b06          	ld	a,(OFST+2,sp)
1895  0015 43            	cpl	a
1896  0016 c75218        	ld	21016,a
1898  0019 2028          	jra	L3101
1899  001b               L1101:
1900                     ; 611   else if(tmp3 == 0x0200)
1902  001b a30200        	cpw	x,#512
1903  001e 260a          	jrne	L5101
1904                     ; 614       tmp1 = I2C->SR1;
1906  0020 c65217        	ld	a,21015
1907                     ; 616       I2C->CR2 = I2C->CR2;
1909  0023 5552115211    	mov	21009,21009
1911  0028 2019          	jra	L3101
1912  002a               L5101:
1913                     ; 619   else if(tmp3 == 0x0300)
1915  002a a30300        	cpw	x,#768
1916  002d 2608          	jrne	L1201
1917                     ; 623       tmp1 = I2C->SR1;
1919  002f c65217        	ld	a,21015
1920                     ; 625       tmp2 = I2C->SR3;
1922  0032 c65219        	ld	a,21017
1924  0035 200c          	jra	L3101
1925  0037               L1201:
1926                     ; 628   else if(tmp3 == 0x0400)
1928  0037 a30400        	cpw	x,#1024
1929  003a 2607          	jrne	L3101
1930                     ; 632       tmp1 = I2C->SR1;
1932  003c c65217        	ld	a,21015
1933                     ; 634       tmp2 = I2C->DR;
1935  003f c65216        	ld	a,21014
1936  0042 97            	ld	xl,a
1937  0043               L3101:
1938                     ; 636 }
1941  0043 5b06          	addw	sp,#6
1942  0045 81            	ret	
2090                     ; 645 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef ITPendingBit)
2090                     ; 646 {
2091                     .text:	section	.text,new
2092  0000               _I2C_GetITStatus:
2094  0000 89            	pushw	x
2095  0001 88            	push	a
2096       00000001      OFST:	set	1
2099                     ; 647     ITStatus itstatus = RESET;
2101  0002 0f01          	clr	(OFST+0,sp)
2102                     ; 650     assert_param(IS_I2C_ITPENDINGBIT_OK(ITPendingBit));
2104                     ; 653     if (((u16)ITPendingBit & 0xF000) == 0x1000) /* Returns whether the status register to check is SR1 */
2106  0004 01            	rrwa	x,a
2107  0005 9f            	ld	a,xl
2108  0006 a4f0          	and	a,#240
2109  0008 97            	ld	xl,a
2110  0009 4f            	clr	a
2111  000a 02            	rlwa	x,a
2112  000b a31000        	cpw	x,#4096
2113  000e 2609          	jrne	L5011
2114                     ; 656         if ((I2C->SR1 & (u8)ITPendingBit) != 0)
2116  0010 c65217        	ld	a,21015
2117  0013 1503          	bcp	a,(OFST+2,sp)
2118  0015 270d          	jreq	L5111
2119                     ; 659             itstatus = SET;
2121  0017 2007          	jp	LC009
2122                     ; 664             itstatus = RESET;
2123  0019               L5011:
2124                     ; 670         if ((I2C->SR2 & (u8)ITPendingBit) != 0)
2126  0019 c65218        	ld	a,21016
2127  001c 1503          	bcp	a,(OFST+2,sp)
2128  001e 2704          	jreq	L5111
2129                     ; 673             itstatus = SET;
2131  0020               LC009:
2133  0020 a601          	ld	a,#1
2135  0022 2001          	jra	L3111
2136  0024               L5111:
2137                     ; 678             itstatus = RESET;
2140  0024 4f            	clr	a
2141  0025               L3111:
2142                     ; 683     return itstatus;
2146  0025 5b03          	addw	sp,#3
2147  0027 81            	ret	
2210                     ; 703 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef ITPendingBit)
2210                     ; 704 {
2211                     .text:	section	.text,new
2212  0000               _I2C_ClearITPendingBit:
2214  0000 89            	pushw	x
2215  0001 5204          	subw	sp,#4
2216       00000004      OFST:	set	4
2219                     ; 705   u8 tmp1 = 0;
2221                     ; 706   u8 tmp2 = 0;
2223                     ; 707   u16 tmp3 = 0;
2225  0003 1e03          	ldw	x,(OFST-1,sp)
2226                     ; 710   assert_param(IS_I2C_ITPENDINGBIT_OK(ITPendingBit));
2228                     ; 713   tmp3 = ((u16)ITPendingBit & (u16)0x0F00);
2230  0005 7b05          	ld	a,(OFST+1,sp)
2231  0007 a40f          	and	a,#15
2232  0009 97            	ld	xl,a
2233  000a 4f            	clr	a
2234  000b 02            	rlwa	x,a
2235  000c 1f03          	ldw	(OFST-1,sp),x
2236                     ; 716   if(tmp3 == 0x0100)
2238  000e a30100        	cpw	x,#256
2239  0011 2608          	jrne	L3511
2240                     ; 719       I2C->SR2 = (u8)(~(u8)ITPendingBit);
2242  0013 7b06          	ld	a,(OFST+2,sp)
2243  0015 43            	cpl	a
2244  0016 c75218        	ld	21016,a
2246  0019 2028          	jra	L5511
2247  001b               L3511:
2248                     ; 722   else if(tmp3 == 0x0200)
2250  001b a30200        	cpw	x,#512
2251  001e 260a          	jrne	L7511
2252                     ; 725       tmp1 = I2C->SR1;
2254  0020 c65217        	ld	a,21015
2255                     ; 727       I2C->CR2 = I2C->CR2;
2257  0023 5552115211    	mov	21009,21009
2259  0028 2019          	jra	L5511
2260  002a               L7511:
2261                     ; 730   else if(tmp3 == 0x0300)
2263  002a a30300        	cpw	x,#768
2264  002d 2608          	jrne	L3611
2265                     ; 734       tmp1 = I2C->SR1;
2267  002f c65217        	ld	a,21015
2268                     ; 736       tmp2 = I2C->SR3;
2270  0032 c65219        	ld	a,21017
2272  0035 200c          	jra	L5511
2273  0037               L3611:
2274                     ; 739   else if(tmp3 == 0x0400)
2276  0037 a30400        	cpw	x,#1024
2277  003a 2607          	jrne	L5511
2278                     ; 743       tmp1 = I2C->SR1;
2280  003c c65217        	ld	a,21015
2281                     ; 745       tmp2 = I2C->DR;
2283  003f c65216        	ld	a,21014
2284  0042 97            	ld	xl,a
2285  0043               L5511:
2286                     ; 747 }
2289  0043 5b06          	addw	sp,#6
2290  0045 81            	ret	
2303                     	xdef	_I2C_ClearITPendingBit
2304                     	xdef	_I2C_GetITStatus
2305                     	xdef	_I2C_ClearFlag
2306                     	xdef	_I2C_GetFlagStatus
2307                     	xdef	_I2C_SendData
2308                     	xdef	_I2C_Send7bitAddress
2309                     	xdef	_I2C_ReceiveData
2310                     	xdef	_I2C_CheckEvent
2311                     	xdef	_I2C_ITConfig
2312                     	xdef	_I2C_FastModeDutyCycleConfig
2313                     	xdef	_I2C_AcknowledgeConfig
2314                     	xdef	_I2C_StretchClockCmd
2315                     	xdef	_I2C_SoftwareResetCmd
2316                     	xdef	_I2C_GenerateSTOP
2317                     	xdef	_I2C_GenerateSTART
2318                     	xdef	_I2C_GeneralCallCmd
2319                     	xdef	_I2C_Cmd
2320                     	xdef	_I2C_Init
2321                     	xdef	_I2C_DeInit
2322                     	xref.b	c_lreg
2341                     	xref	c_sdivx
2342                     	xref	c_ludv
2343                     	xref	c_rtol
2344                     	xref	c_smul
2345                     	xref	c_lmul
2346                     	xref	c_lcmp
2347                     	xref	c_ltor
2348                     	end
