   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  44                     ; 46 void UART2_DeInit(void)
  44                     ; 47 {
  46                     .text:	section	.text,new
  47  0000               _UART2_DeInit:
  49  0000 88            	push	a
  50       00000001      OFST:	set	1
  53                     ; 48     u8 dummy = 0;
  55  0001 0f01          	clr	(OFST+0,sp)
  56                     ; 51     dummy = UART2->SR;
  58  0003 c65240        	ld	a,21056
  59                     ; 52     dummy = UART2->DR;
  61  0006 c65241        	ld	a,21057
  62                     ; 54     UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*< Set UART2_BRR2 to reset value 0x00 */
  64  0009 725f5243      	clr	21059
  65                     ; 55     UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*< Set UART2_BRR1 to reset value 0x00 */
  67  000d 725f5242      	clr	21058
  68                     ; 57     UART2->CR1 = UART2_CR1_RESET_VALUE; /*< Set UART2_CR1 to reset value 0x00  */
  70  0011 725f5244      	clr	21060
  71                     ; 58     UART2->CR2 = UART2_CR2_RESET_VALUE; /*< Set UART2_CR2 to reset value 0x00  */
  73  0015 725f5245      	clr	21061
  74                     ; 59     UART2->CR3 = UART2_CR3_RESET_VALUE;  /*< Set UART2_CR3 to reset value 0x00  */
  76  0019 725f5246      	clr	21062
  77                     ; 60     UART2->CR4 = UART2_CR4_RESET_VALUE;  /*< Set UART2_CR4 to reset value 0x00  */
  79  001d 725f5247      	clr	21063
  80                     ; 61     UART2->CR5 = UART2_CR5_RESET_VALUE; /*< Set UART2_CR5 to reset value 0x00  */
  82  0021 725f5248      	clr	21064
  83                     ; 62     UART2->CR6 = UART2_CR6_RESET_VALUE; /*< Set UART2_CR6 to reset value 0x00  */
  85  0025 725f5249      	clr	21065
  86                     ; 64 }
  89  0029 84            	pop	a
  90  002a 81            	ret	
 411                     .const:	section	.text
 412  0000               L41:
 413  0000 00000064      	dc.l	100
 414                     ; 76 void UART2_Init(u32 BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 414                     ; 77 {
 415                     .text:	section	.text,new
 416  0000               _UART2_Init:
 418  0000 520e          	subw	sp,#14
 419       0000000e      OFST:	set	14
 422                     ; 78     u8 BRR2_1, BRR2_2 = 0;
 424                     ; 79     u32 BaudRate_Mantissa, BaudRate_Mantissa100 = 0;
 426  0002 96            	ldw	x,sp
 427  0003 1c0007        	addw	x,#OFST-7
 428  0006 cd0000        	call	c_ltor
 430                     ; 82     assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 432                     ; 84     assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 434                     ; 86     assert_param(IS_UART2_STOPBITS_OK(StopBits));
 436                     ; 88     assert_param(IS_UART2_PARITY_OK(Parity));
 438                     ; 91     assert_param(IS_UART2_MODE_OK((u8)Mode));
 440                     ; 95     assert_param(IS_UART2_SYNCMODE_OK((u8)SyncMode));
 442                     ; 97     UART2->CR1 &= (u8)(~UART2_CR1_M);  /**< Clear the word length bit */
 444  0009 72195244      	bres	21060,#4
 445                     ; 98     UART2->CR1 |= (u8)WordLength; /**< Set the word length bit according to UART2_WordLength value */
 447  000d c65244        	ld	a,21060
 448  0010 1a15          	or	a,(OFST+7,sp)
 449  0012 c75244        	ld	21060,a
 450                     ; 100     UART2->CR3 &= (u8)(~UART2_CR3_STOP);  /**< Clear the STOP bits */
 452  0015 c65246        	ld	a,21062
 453  0018 a4cf          	and	a,#207
 454  001a c75246        	ld	21062,a
 455                     ; 101     UART2->CR3 |= (u8)StopBits;  /**< Set the STOP bits number according to UART2_StopBits value  */
 457  001d c65246        	ld	a,21062
 458  0020 1a16          	or	a,(OFST+8,sp)
 459  0022 c75246        	ld	21062,a
 460                     ; 103     UART2->CR1 &= (u8)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));  /**< Clear the Parity Control bit */
 462  0025 c65244        	ld	a,21060
 463  0028 a4f9          	and	a,#249
 464  002a c75244        	ld	21060,a
 465                     ; 104     UART2->CR1 |= (u8)Parity;  /**< Set the Parity Control bit to UART2_Parity value */
 467  002d c65244        	ld	a,21060
 468  0030 1a17          	or	a,(OFST+9,sp)
 469  0032 c75244        	ld	21060,a
 470                     ; 106     UART2->BRR1 &= (u8)(~UART2_BRR1_DIVM);  /**< Clear the LSB mantissa of UARTDIV  */
 472  0035 725f5242      	clr	21058
 473                     ; 107     UART2->BRR2 &= (u8)(~UART2_BRR2_DIVM);  /**< Clear the MSB mantissa of UARTDIV  */
 475  0039 c65243        	ld	a,21059
 476  003c a40f          	and	a,#15
 477  003e c75243        	ld	21059,a
 478                     ; 108     UART2->BRR2 &= (u8)(~UART2_BRR2_DIVF);  /**< Clear the Fraction bits of UARTDIV */
 480  0041 c65243        	ld	a,21059
 481  0044 a4f0          	and	a,#240
 482  0046 c75243        	ld	21059,a
 483                     ; 111     BaudRate_Mantissa    = ((u32)CLK_GetClockFreq() / (BaudRate << 4));
 485  0049 96            	ldw	x,sp
 486  004a cd011d        	call	LC001
 488  004d 96            	ldw	x,sp
 489  004e 5c            	incw	x
 490  004f cd0000        	call	c_rtol
 492  0052 cd0000        	call	_CLK_GetClockFreq
 494  0055 96            	ldw	x,sp
 495  0056 5c            	incw	x
 496  0057 cd0000        	call	c_ludv
 498  005a 96            	ldw	x,sp
 499  005b 1c000b        	addw	x,#OFST-3
 500  005e cd0000        	call	c_rtol
 502                     ; 112     BaudRate_Mantissa100 = (((u32)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 504  0061 96            	ldw	x,sp
 505  0062 cd011d        	call	LC001
 507  0065 96            	ldw	x,sp
 508  0066 5c            	incw	x
 509  0067 cd0000        	call	c_rtol
 511  006a cd0000        	call	_CLK_GetClockFreq
 513  006d a664          	ld	a,#100
 514  006f cd0000        	call	c_smul
 516  0072 96            	ldw	x,sp
 517  0073 5c            	incw	x
 518  0074 cd0000        	call	c_ludv
 520  0077 96            	ldw	x,sp
 521  0078 1c0007        	addw	x,#OFST-7
 522  007b cd0000        	call	c_rtol
 524                     ; 114     BRR2_1 = (u8)((u8)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 524                     ; 115                         << 4) / 100) & (u8)0x0F); /**< Set the fraction of UARTDIV  */
 526  007e 96            	ldw	x,sp
 527  007f 1c000b        	addw	x,#OFST-3
 528  0082 cd0000        	call	c_ltor
 530  0085 a664          	ld	a,#100
 531  0087 cd0000        	call	c_smul
 533  008a 96            	ldw	x,sp
 534  008b 5c            	incw	x
 535  008c cd0000        	call	c_rtol
 537  008f 96            	ldw	x,sp
 538  0090 1c0007        	addw	x,#OFST-7
 539  0093 cd0000        	call	c_ltor
 541  0096 96            	ldw	x,sp
 542  0097 5c            	incw	x
 543  0098 cd0000        	call	c_lsub
 545  009b a604          	ld	a,#4
 546  009d cd0000        	call	c_llsh
 548  00a0 ae0000        	ldw	x,#L41
 549  00a3 cd0000        	call	c_ludv
 551  00a6 b603          	ld	a,c_lreg+3
 552  00a8 a40f          	and	a,#15
 553  00aa 6b05          	ld	(OFST-9,sp),a
 554                     ; 116     BRR2_2 = (u8)((BaudRate_Mantissa >> 4) & (u8)0xF0);
 556  00ac 96            	ldw	x,sp
 557  00ad 1c000b        	addw	x,#OFST-3
 558  00b0 cd0000        	call	c_ltor
 560  00b3 a604          	ld	a,#4
 561  00b5 cd0000        	call	c_lursh
 563  00b8 b603          	ld	a,c_lreg+3
 564  00ba a4f0          	and	a,#240
 565  00bc b703          	ld	c_lreg+3,a
 566  00be 3f02          	clr	c_lreg+2
 567  00c0 3f01          	clr	c_lreg+1
 568  00c2 3f00          	clr	c_lreg
 569  00c4 6b06          	ld	(OFST-8,sp),a
 570                     ; 118     UART2->BRR2 = (u8)(BRR2_1 | BRR2_2);
 572  00c6 1a05          	or	a,(OFST-9,sp)
 573  00c8 c75243        	ld	21059,a
 574                     ; 119     UART2->BRR1 = (u8)BaudRate_Mantissa;           /**< Set the LSB mantissa of UARTDIV  */
 576  00cb 7b0e          	ld	a,(OFST+0,sp)
 577  00cd c75242        	ld	21058,a
 578                     ; 121     UART2->CR2 &= (u8)~(UART2_CR2_TEN | UART2_CR2_REN); /**< Disable the Transmitter and Receiver before seting the LBCL, CPOL and CPHA bits */
 580  00d0 c65245        	ld	a,21061
 581  00d3 a4f3          	and	a,#243
 582  00d5 c75245        	ld	21061,a
 583                     ; 122     UART2->CR3 &= (u8)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL); /**< Clear the Clock Polarity, lock Phase, Last Bit Clock pulse */
 585  00d8 c65246        	ld	a,21062
 586  00db a4f8          	and	a,#248
 587  00dd c75246        	ld	21062,a
 588                     ; 123     UART2->CR3 |= (u8)((u8)SyncMode & (u8)(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL));  /**< Set the Clock Polarity, lock Phase, Last Bit Clock pulse */
 590  00e0 7b18          	ld	a,(OFST+10,sp)
 591  00e2 a407          	and	a,#7
 592  00e4 ca5246        	or	a,21062
 593  00e7 c75246        	ld	21062,a
 594                     ; 125     if ((u8)Mode & (u8)UART2_MODE_TX_ENABLE)
 596  00ea 7b19          	ld	a,(OFST+11,sp)
 597  00ec a504          	bcp	a,#4
 598  00ee 2706          	jreq	L112
 599                     ; 127         UART2->CR2 |= (u8)UART2_CR2_TEN;  /**< Set the Transmitter Enable bit */
 601  00f0 72165245      	bset	21061,#3
 603  00f4 2004          	jra	L312
 604  00f6               L112:
 605                     ; 131         UART2->CR2 &= (u8)(~UART2_CR2_TEN);  /**< Clear the Transmitter Disable bit */
 607  00f6 72175245      	bres	21061,#3
 608  00fa               L312:
 609                     ; 133     if ((u8)Mode & (u8)UART2_MODE_RX_ENABLE)
 611  00fa a508          	bcp	a,#8
 612  00fc 2706          	jreq	L512
 613                     ; 135         UART2->CR2 |= (u8)UART2_CR2_REN;  /**< Set the Receiver Enable bit */
 615  00fe 72145245      	bset	21061,#2
 617  0102 2004          	jra	L712
 618  0104               L512:
 619                     ; 139         UART2->CR2 &= (u8)(~UART2_CR2_REN);  /**< Clear the Receiver Disable bit */
 621  0104 72155245      	bres	21061,#2
 622  0108               L712:
 623                     ; 142     if ((u8)SyncMode&(u8)UART2_SYNCMODE_CLOCK_DISABLE)
 625  0108 7b18          	ld	a,(OFST+10,sp)
 626  010a 2a06          	jrpl	L122
 627                     ; 144         UART2->CR3 &= (u8)(~UART2_CR3_CKEN); /**< Clear the Clock Enable bit */
 629  010c 72175246      	bres	21062,#3
 631  0110 2008          	jra	L322
 632  0112               L122:
 633                     ; 149         UART2->CR3 |= (u8)((u8)SyncMode & UART2_CR3_CKEN);
 635  0112 a408          	and	a,#8
 636  0114 ca5246        	or	a,21062
 637  0117 c75246        	ld	21062,a
 638  011a               L322:
 639                     ; 151 }
 642  011a 5b0e          	addw	sp,#14
 643  011c 81            	ret	
 645  011d               LC001:
 646  011d 1c0011        	addw	x,#OFST+3
 647  0120 cd0000        	call	c_ltor
 649  0123 a604          	ld	a,#4
 650  0125 cc0000        	jp	c_llsh
 704                     ; 162 void UART2_Cmd(FunctionalState NewState)
 704                     ; 163 {
 705                     .text:	section	.text,new
 706  0000               _UART2_Cmd:
 710                     ; 165     if (NewState != DISABLE)
 712  0000 4d            	tnz	a
 713  0001 2705          	jreq	L352
 714                     ; 167         UART2->CR1 &= (u8)(~UART2_CR1_UARTD); /**< UART2 Enable */
 716  0003 721b5244      	bres	21060,#5
 719  0007 81            	ret	
 720  0008               L352:
 721                     ; 171         UART2->CR1 |= UART2_CR1_UARTD;  /**< UART2 Disable (for low power consumption) */
 723  0008 721a5244      	bset	21060,#5
 724                     ; 173 }
 727  000c 81            	ret	
 859                     ; 192 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
 859                     ; 193 {
 860                     .text:	section	.text,new
 861  0000               _UART2_ITConfig:
 863  0000 89            	pushw	x
 864  0001 89            	pushw	x
 865       00000002      OFST:	set	2
 868                     ; 194     u8 uartreg, itpos = 0x00;
 870                     ; 195     assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
 872                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 874                     ; 199     uartreg = (u8)(UART2_IT >> 0x08);
 876  0002 7b03          	ld	a,(OFST+1,sp)
 877  0004 6b01          	ld	(OFST-1,sp),a
 878                     ; 202     itpos = (u8)((u8)1 << (u8)((u8)UART2_IT & (u8)0x0F));
 880  0006 7b04          	ld	a,(OFST+2,sp)
 881  0008 a40f          	and	a,#15
 882  000a 5f            	clrw	x
 883  000b 97            	ld	xl,a
 884  000c a601          	ld	a,#1
 885  000e 5d            	tnzw	x
 886  000f 2704          	jreq	L22
 887  0011               L42:
 888  0011 48            	sll	a
 889  0012 5a            	decw	x
 890  0013 26fc          	jrne	L42
 891  0015               L22:
 892  0015 6b02          	ld	(OFST+0,sp),a
 893                     ; 204     if (NewState != DISABLE)
 895  0017 7b07          	ld	a,(OFST+5,sp)
 896  0019 272a          	jreq	L733
 897                     ; 207         if (uartreg == 0x01)
 899  001b 7b01          	ld	a,(OFST-1,sp)
 900  001d a101          	cp	a,#1
 901  001f 2607          	jrne	L143
 902                     ; 209             UART2->CR1 |= itpos;
 904  0021 c65244        	ld	a,21060
 905  0024 1a02          	or	a,(OFST+0,sp)
 907  0026 2029          	jp	LC004
 908  0028               L143:
 909                     ; 211         else if (uartreg == 0x02)
 911  0028 a102          	cp	a,#2
 912  002a 2607          	jrne	L543
 913                     ; 213             UART2->CR2 |= itpos;
 915  002c c65245        	ld	a,21061
 916  002f 1a02          	or	a,(OFST+0,sp)
 918  0031 202d          	jp	LC003
 919  0033               L543:
 920                     ; 215         else if (uartreg == 0x03)
 922  0033 a103          	cp	a,#3
 923  0035 2607          	jrne	L153
 924                     ; 217             UART2->CR4 |= itpos;
 926  0037 c65247        	ld	a,21063
 927  003a 1a02          	or	a,(OFST+0,sp)
 929  003c 2031          	jp	LC005
 930  003e               L153:
 931                     ; 221             UART2->CR6 |= itpos;
 933  003e c65249        	ld	a,21065
 934  0041 1a02          	or	a,(OFST+0,sp)
 935  0043 2035          	jp	LC002
 936  0045               L733:
 937                     ; 227         if (uartreg == 0x01)
 939  0045 7b01          	ld	a,(OFST-1,sp)
 940  0047 a101          	cp	a,#1
 941  0049 260b          	jrne	L753
 942                     ; 229             UART2->CR1 &= (u8)(~itpos);
 944  004b 7b02          	ld	a,(OFST+0,sp)
 945  004d 43            	cpl	a
 946  004e c45244        	and	a,21060
 947  0051               LC004:
 948  0051 c75244        	ld	21060,a
 950  0054 2027          	jra	L553
 951  0056               L753:
 952                     ; 231         else if (uartreg == 0x02)
 954  0056 a102          	cp	a,#2
 955  0058 260b          	jrne	L363
 956                     ; 233             UART2->CR2 &= (u8)(~itpos);
 958  005a 7b02          	ld	a,(OFST+0,sp)
 959  005c 43            	cpl	a
 960  005d c45245        	and	a,21061
 961  0060               LC003:
 962  0060 c75245        	ld	21061,a
 964  0063 2018          	jra	L553
 965  0065               L363:
 966                     ; 235         else if (uartreg == 0x03)
 968  0065 a103          	cp	a,#3
 969  0067 260b          	jrne	L763
 970                     ; 237             UART2->CR4 &= (u8)(~itpos);
 972  0069 7b02          	ld	a,(OFST+0,sp)
 973  006b 43            	cpl	a
 974  006c c45247        	and	a,21063
 975  006f               LC005:
 976  006f c75247        	ld	21063,a
 978  0072 2009          	jra	L553
 979  0074               L763:
 980                     ; 241             UART2->CR6 &= (u8)(~itpos);
 982  0074 7b02          	ld	a,(OFST+0,sp)
 983  0076 43            	cpl	a
 984  0077 c45249        	and	a,21065
 985  007a               LC002:
 986  007a c75249        	ld	21065,a
 987  007d               L553:
 988                     ; 244 }
 991  007d 5b04          	addw	sp,#4
 992  007f 81            	ret	
1049                     ; 254 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1049                     ; 255 {
1050                     .text:	section	.text,new
1051  0000               _UART2_IrDAConfig:
1055                     ; 256     assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1057                     ; 258     if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1059  0000 4d            	tnz	a
1060  0001 2705          	jreq	L124
1061                     ; 260         UART2->CR5 |= UART2_CR5_IRLP;
1063  0003 72145248      	bset	21064,#2
1066  0007 81            	ret	
1067  0008               L124:
1068                     ; 264         UART2->CR5 &= ((u8)~UART2_CR5_IRLP);
1070  0008 72155248      	bres	21064,#2
1071                     ; 266 }
1074  000c 81            	ret	
1109                     ; 277 void UART2_IrDACmd(FunctionalState NewState)
1109                     ; 278 {
1110                     .text:	section	.text,new
1111  0000               _UART2_IrDACmd:
1115                     ; 281     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1117                     ; 283     if (NewState != DISABLE)
1119  0000 4d            	tnz	a
1120  0001 2705          	jreq	L344
1121                     ; 286         UART2->CR5 |= UART2_CR5_IREN;
1123  0003 72125248      	bset	21064,#1
1126  0007 81            	ret	
1127  0008               L344:
1128                     ; 291         UART2->CR5 &= ((u8)~UART2_CR5_IREN);
1130  0008 72135248      	bres	21064,#1
1131                     ; 293 }
1134  000c 81            	ret	
1193                     ; 303 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1193                     ; 304 {
1194                     .text:	section	.text,new
1195  0000               _UART2_LINBreakDetectionConfig:
1199                     ; 305     assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1201                     ; 307     if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1203  0000 4d            	tnz	a
1204  0001 2705          	jreq	L574
1205                     ; 309         UART2->CR4 |= UART2_CR4_LBDL;
1207  0003 721a5247      	bset	21063,#5
1210  0007 81            	ret	
1211  0008               L574:
1212                     ; 313         UART2->CR4 &= ((u8)~UART2_CR4_LBDL);
1214  0008 721b5247      	bres	21063,#5
1215                     ; 315 }
1218  000c 81            	ret	
1339                     ; 329 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, UART2_LinAutosync_TypeDef UART2_Autosync, UART2_LinDivUp_TypeDef UART2_DivUp)
1339                     ; 330 {
1340                     .text:	section	.text,new
1341  0000               _UART2_LINConfig:
1343  0000 89            	pushw	x
1344       00000000      OFST:	set	0
1347                     ; 331     assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1349                     ; 333     assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1351                     ; 335     assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1353                     ; 337     if (UART2_Mode != UART2_LIN_MODE_MASTER)
1355  0001 9e            	ld	a,xh
1356  0002 4d            	tnz	a
1357  0003 2706          	jreq	L755
1358                     ; 339         UART2->CR6 |=  UART2_CR6_LSLV;
1360  0005 721a5249      	bset	21065,#5
1362  0009 2004          	jra	L165
1363  000b               L755:
1364                     ; 343         UART2->CR6 &= ((u8)~UART2_CR6_LSLV);
1366  000b 721b5249      	bres	21065,#5
1367  000f               L165:
1368                     ; 346     if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1370  000f 7b02          	ld	a,(OFST+2,sp)
1371  0011 2706          	jreq	L365
1372                     ; 348         UART2->CR6 |=  UART2_CR6_LASE ;
1374  0013 72185249      	bset	21065,#4
1376  0017 2004          	jra	L565
1377  0019               L365:
1378                     ; 352         UART2->CR6 &= ((u8)~ UART2_CR6_LASE );
1380  0019 72195249      	bres	21065,#4
1381  001d               L565:
1382                     ; 355     if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1384  001d 7b05          	ld	a,(OFST+5,sp)
1385  001f 2706          	jreq	L765
1386                     ; 357         UART2->CR6 |=  UART2_CR6_LDUM;
1388  0021 721e5249      	bset	21065,#7
1390  0025 2004          	jra	L175
1391  0027               L765:
1392                     ; 361         UART2->CR6 &= ((u8)~ UART2_CR6_LDUM);
1394  0027 721f5249      	bres	21065,#7
1395  002b               L175:
1396                     ; 364 }
1399  002b 85            	popw	x
1400  002c 81            	ret	
1435                     ; 376 void UART2_LINCmd(FunctionalState NewState)
1435                     ; 377 {
1436                     .text:	section	.text,new
1437  0000               _UART2_LINCmd:
1441                     ; 378     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1443                     ; 380     if (NewState != DISABLE)
1445  0000 4d            	tnz	a
1446  0001 2705          	jreq	L116
1447                     ; 383         UART2->CR3 |= UART2_CR3_LINEN;
1449  0003 721c5246      	bset	21062,#6
1452  0007 81            	ret	
1453  0008               L116:
1454                     ; 388         UART2->CR3 &= ((u8)~UART2_CR3_LINEN);
1456  0008 721d5246      	bres	21062,#6
1457                     ; 390 }
1460  000c 81            	ret	
1495                     ; 400 void UART2_SmartCardCmd(FunctionalState NewState)
1495                     ; 401 {
1496                     .text:	section	.text,new
1497  0000               _UART2_SmartCardCmd:
1501                     ; 402     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1503                     ; 404     if (NewState != DISABLE)
1505  0000 4d            	tnz	a
1506  0001 2705          	jreq	L336
1507                     ; 407         UART2->CR5 |= UART2_CR5_SCEN;
1509  0003 721a5248      	bset	21064,#5
1512  0007 81            	ret	
1513  0008               L336:
1514                     ; 412         UART2->CR5 &= ((u8)(~UART2_CR5_SCEN));
1516  0008 721b5248      	bres	21064,#5
1517                     ; 414 }
1520  000c 81            	ret	
1556                     ; 425 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1556                     ; 426 {
1557                     .text:	section	.text,new
1558  0000               _UART2_SmartCardNACKCmd:
1562                     ; 427     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1564                     ; 429     if (NewState != DISABLE)
1566  0000 4d            	tnz	a
1567  0001 2705          	jreq	L556
1568                     ; 432         UART2->CR5 |= UART2_CR5_NACK;
1570  0003 72185248      	bset	21064,#4
1573  0007 81            	ret	
1574  0008               L556:
1575                     ; 437         UART2->CR5 &= ((u8)~(UART2_CR5_NACK));
1577  0008 72195248      	bres	21064,#4
1578                     ; 439 }
1581  000c 81            	ret	
1638                     ; 448 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
1638                     ; 449 {
1639                     .text:	section	.text,new
1640  0000               _UART2_WakeUpConfig:
1644                     ; 450     assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
1646                     ; 452     UART2->CR1 &= ((u8)~UART2_CR1_WAKE);
1648  0000 72175244      	bres	21060,#3
1649                     ; 453     UART2->CR1 |= (u8)UART2_WakeUp;
1651  0004 ca5244        	or	a,21060
1652  0007 c75244        	ld	21060,a
1653                     ; 454 }
1656  000a 81            	ret	
1692                     ; 466 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
1692                     ; 467 {
1693                     .text:	section	.text,new
1694  0000               _UART2_ReceiverWakeUpCmd:
1698                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1700                     ; 470     if (NewState != DISABLE)
1702  0000 4d            	tnz	a
1703  0001 2705          	jreq	L527
1704                     ; 473         UART2->CR2 |= UART2_CR2_RWU;
1706  0003 72125245      	bset	21061,#1
1709  0007 81            	ret	
1710  0008               L527:
1711                     ; 478         UART2->CR2 &= ((u8)~UART2_CR2_RWU);
1713  0008 72135245      	bres	21061,#1
1714                     ; 480 }
1717  000c 81            	ret	
1740                     ; 491 u8 UART2_ReceiveData8(void)
1740                     ; 492 {
1741                     .text:	section	.text,new
1742  0000               _UART2_ReceiveData8:
1746                     ; 493     return ((u8)UART2->DR);
1748  0000 c65241        	ld	a,21057
1751  0003 81            	ret	
1774                     ; 504 u16 UART2_ReceiveData9(void)
1774                     ; 505 {
1775                     .text:	section	.text,new
1776  0000               _UART2_ReceiveData9:
1778  0000 89            	pushw	x
1779       00000002      OFST:	set	2
1782                     ; 506     return (u16)((((u16)UART2->DR) | ((u16)(((u16)((u16)UART2->CR1 & (u16)UART2_CR1_R8)) << 1))) & ((u16)0x01FF));
1784  0001 c65244        	ld	a,21060
1785  0004 a480          	and	a,#128
1786  0006 5f            	clrw	x
1787  0007 02            	rlwa	x,a
1788  0008 58            	sllw	x
1789  0009 1f01          	ldw	(OFST-1,sp),x
1790  000b c65241        	ld	a,21057
1791  000e 5f            	clrw	x
1792  000f 97            	ld	xl,a
1793  0010 01            	rrwa	x,a
1794  0011 1a02          	or	a,(OFST+0,sp)
1795  0013 01            	rrwa	x,a
1796  0014 1a01          	or	a,(OFST-1,sp)
1797  0016 a401          	and	a,#1
1798  0018 01            	rrwa	x,a
1801  0019 5b02          	addw	sp,#2
1802  001b 81            	ret	
1836                     ; 520 void UART2_SendData8(u8 Data)
1836                     ; 521 {
1837                     .text:	section	.text,new
1838  0000               _UART2_SendData8:
1842                     ; 523     UART2->DR = Data;
1844  0000 c75241        	ld	21057,a
1845                     ; 524 }
1848  0003 81            	ret	
1882                     ; 535 void UART2_SendData9(u16 Data)
1882                     ; 536 {
1883                     .text:	section	.text,new
1884  0000               _UART2_SendData9:
1886  0000 89            	pushw	x
1887       00000000      OFST:	set	0
1890                     ; 537     UART2->CR1 &= ((u8)~UART2_CR1_T8);                  /* Clear the transmit data bit 8     */
1892  0001 721d5244      	bres	21060,#6
1893                     ; 538     UART2->CR1 |= (u8)(((u8)(Data >> 2)) & UART2_CR1_T8); /* Write the transmit data bit [8]   */
1895  0005 54            	srlw	x
1896  0006 54            	srlw	x
1897  0007 9f            	ld	a,xl
1898  0008 a440          	and	a,#64
1899  000a ca5244        	or	a,21060
1900  000d c75244        	ld	21060,a
1901                     ; 539     UART2->DR   = (u8)(Data);                    /* Write the transmit data bit [0:7] */
1903  0010 7b02          	ld	a,(OFST+2,sp)
1904  0012 c75241        	ld	21057,a
1905                     ; 541 }
1908  0015 85            	popw	x
1909  0016 81            	ret	
1932                     ; 548 void UART2_SendBreak(void)
1932                     ; 549 {
1933                     .text:	section	.text,new
1934  0000               _UART2_SendBreak:
1938                     ; 550     UART2->CR2 |= UART2_CR2_SBK;
1940  0000 72105245      	bset	21061,#0
1941                     ; 551 }
1944  0004 81            	ret	
1978                     ; 560 void UART2_SetAddress(u8 UART2_Address)
1978                     ; 561 {
1979                     .text:	section	.text,new
1980  0000               _UART2_SetAddress:
1982  0000 88            	push	a
1983       00000000      OFST:	set	0
1986                     ; 563     assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
1988                     ; 566     UART2->CR4 &= ((u8)~UART2_CR4_ADD);
1990  0001 c65247        	ld	a,21063
1991  0004 a4f0          	and	a,#240
1992  0006 c75247        	ld	21063,a
1993                     ; 568     UART2->CR4 |= UART2_Address;
1995  0009 c65247        	ld	a,21063
1996  000c 1a01          	or	a,(OFST+1,sp)
1997  000e c75247        	ld	21063,a
1998                     ; 569 }
2001  0011 84            	pop	a
2002  0012 81            	ret	
2036                     ; 580 void UART2_SetGuardTime(u8 UART2_GuardTime)
2036                     ; 581 {
2037                     .text:	section	.text,new
2038  0000               _UART2_SetGuardTime:
2042                     ; 583     UART2->GTR = UART2_GuardTime;
2044  0000 c7524a        	ld	21066,a
2045                     ; 584 }
2048  0003 81            	ret	
2082                     ; 610 void UART2_SetPrescaler(u8 UART2_Prescaler)
2082                     ; 611 {
2083                     .text:	section	.text,new
2084  0000               _UART2_SetPrescaler:
2088                     ; 613     UART2->PSCR = UART2_Prescaler;
2090  0000 c7524b        	ld	21067,a
2091                     ; 614 }
2094  0003 81            	ret	
2251                     ; 625 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2251                     ; 626 {
2252                     .text:	section	.text,new
2253  0000               _UART2_GetFlagStatus:
2255  0000 89            	pushw	x
2256  0001 88            	push	a
2257       00000001      OFST:	set	1
2260                     ; 627     FlagStatus status = RESET;
2262  0002 0f01          	clr	(OFST+0,sp)
2263                     ; 630     assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2265                     ; 633     if (UART2_FLAG == UART2_FLAG_LBDF)
2267  0004 a30210        	cpw	x,#528
2268  0007 2608          	jrne	L5511
2269                     ; 635         if ((UART2->CR4 & (u8)UART2_FLAG) != (u8)0x00)
2271  0009 9f            	ld	a,xl
2272  000a c45247        	and	a,21063
2273  000d 2720          	jreq	L3611
2274                     ; 638             status = SET;
2276  000f 2028          	jp	LC009
2277                     ; 643             status = RESET;
2278  0011               L5511:
2279                     ; 646     else if (UART2_FLAG == UART2_FLAG_SBK)
2281  0011 1e02          	ldw	x,(OFST+1,sp)
2282  0013 a30101        	cpw	x,#257
2283  0016 2605          	jrne	L5611
2284                     ; 648         if ((UART2->CR2 & (u8)UART2_FLAG) != (u8)0x00)
2286  0018 c65245        	ld	a,21061
2287                     ; 651             status = SET;
2289  001b 2018          	jp	LC010
2290                     ; 656             status = RESET;
2291  001d               L5611:
2292                     ; 659     else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2294  001d a30302        	cpw	x,#770
2295  0020 2705          	jreq	L7711
2297  0022 a30301        	cpw	x,#769
2298  0025 260b          	jrne	L5711
2299  0027               L7711:
2300                     ; 661         if ((UART2->CR6 & (u8)UART2_FLAG) != (u8)0x00)
2302  0027 c65249        	ld	a,21065
2303  002a 1503          	bcp	a,(OFST+2,sp)
2304                     ; 664             status = SET;
2309  002c 260b          	jrne	LC009
2310  002e               L1021:
2311                     ; 669             status = RESET;
2315  002e 4f            	clr	a
2316  002f               L3611:
2317                     ; 687     return  status;
2321  002f 5b03          	addw	sp,#3
2322  0031 81            	ret	
2323  0032               L5711:
2324                     ; 674         if ((UART2->SR & (u8)UART2_FLAG) != (u8)0x00)
2326  0032 c65240        	ld	a,21056
2327  0035               LC010:
2328  0035 1503          	bcp	a,(OFST+2,sp)
2329  0037 27f5          	jreq	L1021
2330                     ; 677             status = SET;
2332  0039               LC009:
2334  0039 a601          	ld	a,#1
2336  003b 20f2          	jp	L3611
2337                     ; 682             status = RESET;
2372                     ; 715 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2372                     ; 716 {
2373                     .text:	section	.text,new
2374  0000               _UART2_ClearFlag:
2376  0000 89            	pushw	x
2377       00000000      OFST:	set	0
2380                     ; 717     assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2382                     ; 720     if (UART2_FLAG == UART2_FLAG_RXNE)
2384  0001 a30020        	cpw	x,#32
2385  0004 2606          	jrne	L1321
2386                     ; 722         UART2->SR = (u8)~(UART2_SR_RXNE);
2388  0006 35df5240      	mov	21056,#223
2390  000a 201c          	jra	L3321
2391  000c               L1321:
2392                     ; 725     else if (UART2_FLAG == UART2_FLAG_LBDF)
2394  000c 1e01          	ldw	x,(OFST+1,sp)
2395  000e a30210        	cpw	x,#528
2396  0011 2606          	jrne	L5321
2397                     ; 727         UART2->CR4 &= (u8)(~UART2_CR4_LBDF);
2399  0013 72195247      	bres	21063,#4
2401  0017 200f          	jra	L3321
2402  0019               L5321:
2403                     ; 730     else if (UART2_FLAG == UART2_FLAG_LHDF)
2405  0019 a30302        	cpw	x,#770
2406  001c 2606          	jrne	L1421
2407                     ; 732         UART2->CR6 &= (u8)(~UART2_CR6_LHDF);
2409  001e 72135249      	bres	21065,#1
2411  0022 2004          	jra	L3321
2412  0024               L1421:
2413                     ; 737         UART2->CR6 &= (u8)(~UART2_CR6_LSF);
2415  0024 72115249      	bres	21065,#0
2416  0028               L3321:
2417                     ; 740 }
2420  0028 85            	popw	x
2421  0029 81            	ret	
2503                     ; 758 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
2503                     ; 759 {
2504                     .text:	section	.text,new
2505  0000               _UART2_GetITStatus:
2507  0000 89            	pushw	x
2508  0001 89            	pushw	x
2509       00000002      OFST:	set	2
2512                     ; 760     ITStatus pendingbitstatus = RESET;
2514                     ; 761     u8 itpos = 0;
2516                     ; 762     u8 itmask1 = 0;
2518                     ; 763     u8 itmask2 = 0;
2520                     ; 764     u8 enablestatus = 0;
2522                     ; 767     assert_param(IS_UART2_GET_IT_OK(UART2_IT));
2524                     ; 770     itpos = (u8)((u8)1 << (u8)((u8)UART2_IT & (u8)0x0F));
2526  0002 7b04          	ld	a,(OFST+2,sp)
2527  0004 a40f          	and	a,#15
2528  0006 5f            	clrw	x
2529  0007 97            	ld	xl,a
2530  0008 a601          	ld	a,#1
2531  000a 5d            	tnzw	x
2532  000b 2704          	jreq	L67
2533  000d               L001:
2534  000d 48            	sll	a
2535  000e 5a            	decw	x
2536  000f 26fc          	jrne	L001
2537  0011               L67:
2538  0011 6b01          	ld	(OFST-1,sp),a
2539                     ; 772     itmask1 = (u8)((u8)UART2_IT >> (u8)4);
2541  0013 7b04          	ld	a,(OFST+2,sp)
2542  0015 4e            	swap	a
2543  0016 a40f          	and	a,#15
2544  0018 6b02          	ld	(OFST+0,sp),a
2545                     ; 774     itmask2 = (u8)((u8)1 << itmask1);
2547  001a 5f            	clrw	x
2548  001b 97            	ld	xl,a
2549  001c a601          	ld	a,#1
2550  001e 5d            	tnzw	x
2551  001f 2704          	jreq	L201
2552  0021               L401:
2553  0021 48            	sll	a
2554  0022 5a            	decw	x
2555  0023 26fc          	jrne	L401
2556  0025               L201:
2557  0025 6b02          	ld	(OFST+0,sp),a
2558                     ; 779     if (UART2_IT == UART2_IT_PE)
2560  0027 1e03          	ldw	x,(OFST+1,sp)
2561  0029 a30100        	cpw	x,#256
2562  002c 260c          	jrne	L7031
2563                     ; 782         enablestatus = (u8)((u8)UART2->CR1 & itmask2);
2565  002e c65244        	ld	a,21060
2566  0031 1402          	and	a,(OFST+0,sp)
2567  0033 6b02          	ld	(OFST+0,sp),a
2568                     ; 785         if (((UART2->SR & itpos) != (u8)0x00) && enablestatus)
2570  0035 c65240        	ld	a,21056
2572                     ; 788             pendingbitstatus = SET;
2574  0038 2020          	jp	LC013
2575                     ; 793             pendingbitstatus = RESET;
2576  003a               L7031:
2577                     ; 797     else if (UART2_IT == UART2_IT_LBDF)
2579  003a a30346        	cpw	x,#838
2580  003d 260c          	jrne	L7131
2581                     ; 800         enablestatus = (u8)((u8)UART2->CR4 & itmask2);
2583  003f c65247        	ld	a,21063
2584  0042 1402          	and	a,(OFST+0,sp)
2585  0044 6b02          	ld	(OFST+0,sp),a
2586                     ; 802         if (((UART2->CR4 & itpos) != (u8)0x00) && enablestatus)
2588  0046 c65247        	ld	a,21063
2590                     ; 805             pendingbitstatus = SET;
2592  0049 200f          	jp	LC013
2593                     ; 810             pendingbitstatus = RESET;
2594  004b               L7131:
2595                     ; 813     else if (UART2_IT == UART2_IT_LHDF)
2597  004b a30412        	cpw	x,#1042
2598  004e 2616          	jrne	L7231
2599                     ; 816         enablestatus = (u8)((u8)UART2->CR6 & itmask2);
2601  0050 c65249        	ld	a,21065
2602  0053 1402          	and	a,(OFST+0,sp)
2603  0055 6b02          	ld	(OFST+0,sp),a
2604                     ; 818         if (((UART2->CR6 & itpos) != (u8)0x00) && enablestatus)
2606  0057 c65249        	ld	a,21065
2608  005a               LC013:
2609  005a 1501          	bcp	a,(OFST-1,sp)
2610  005c 271a          	jreq	L7331
2611  005e 7b02          	ld	a,(OFST+0,sp)
2612  0060 2716          	jreq	L7331
2613                     ; 821             pendingbitstatus = SET;
2615  0062               LC012:
2619  0062 a601          	ld	a,#1
2621  0064 2013          	jra	L5131
2622                     ; 826             pendingbitstatus = RESET;
2623  0066               L7231:
2624                     ; 832         enablestatus = (u8)((u8)UART2->CR2 & itmask2);
2626  0066 c65245        	ld	a,21061
2627  0069 1402          	and	a,(OFST+0,sp)
2628  006b 6b02          	ld	(OFST+0,sp),a
2629                     ; 834         if (((UART2->SR & itpos) != (u8)0x00) && enablestatus)
2631  006d c65240        	ld	a,21056
2632  0070 1501          	bcp	a,(OFST-1,sp)
2633  0072 2704          	jreq	L7331
2635  0074 7b02          	ld	a,(OFST+0,sp)
2636                     ; 837             pendingbitstatus = SET;
2638  0076 26ea          	jrne	LC012
2639  0078               L7331:
2640                     ; 842             pendingbitstatus = RESET;
2645  0078 4f            	clr	a
2646  0079               L5131:
2647                     ; 846     return  pendingbitstatus;
2651  0079 5b04          	addw	sp,#4
2652  007b 81            	ret	
2688                     ; 873 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
2688                     ; 874 {
2689                     .text:	section	.text,new
2690  0000               _UART2_ClearITPendingBit:
2692  0000 89            	pushw	x
2693       00000000      OFST:	set	0
2696                     ; 875     assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
2698                     ; 878     if (UART2_IT == UART2_IT_RXNE)
2700  0001 a30255        	cpw	x,#597
2701  0004 2606          	jrne	L1631
2702                     ; 880         UART2->SR = (u8)~(UART2_SR_RXNE);
2704  0006 35df5240      	mov	21056,#223
2706  000a 2011          	jra	L3631
2707  000c               L1631:
2708                     ; 883     else if (UART2_IT == UART2_IT_LBDF)
2710  000c 1e01          	ldw	x,(OFST+1,sp)
2711  000e a30346        	cpw	x,#838
2712  0011 2606          	jrne	L5631
2713                     ; 885         UART2->CR4 &= (u8)~(UART2_CR4_LBDF);
2715  0013 72195247      	bres	21063,#4
2717  0017 2004          	jra	L3631
2718  0019               L5631:
2719                     ; 890         UART2->CR6 &= (u8)(~UART2_CR6_LHDF);
2721  0019 72135249      	bres	21065,#1
2722  001d               L3631:
2723                     ; 892 }
2726  001d 85            	popw	x
2727  001e 81            	ret	
2740                     	xdef	_UART2_ClearITPendingBit
2741                     	xdef	_UART2_GetITStatus
2742                     	xdef	_UART2_ClearFlag
2743                     	xdef	_UART2_GetFlagStatus
2744                     	xdef	_UART2_SetPrescaler
2745                     	xdef	_UART2_SetGuardTime
2746                     	xdef	_UART2_SetAddress
2747                     	xdef	_UART2_SendBreak
2748                     	xdef	_UART2_SendData9
2749                     	xdef	_UART2_SendData8
2750                     	xdef	_UART2_ReceiveData9
2751                     	xdef	_UART2_ReceiveData8
2752                     	xdef	_UART2_ReceiverWakeUpCmd
2753                     	xdef	_UART2_WakeUpConfig
2754                     	xdef	_UART2_SmartCardNACKCmd
2755                     	xdef	_UART2_SmartCardCmd
2756                     	xdef	_UART2_LINCmd
2757                     	xdef	_UART2_LINConfig
2758                     	xdef	_UART2_LINBreakDetectionConfig
2759                     	xdef	_UART2_IrDACmd
2760                     	xdef	_UART2_IrDAConfig
2761                     	xdef	_UART2_ITConfig
2762                     	xdef	_UART2_Cmd
2763                     	xdef	_UART2_Init
2764                     	xdef	_UART2_DeInit
2765                     	xref	_CLK_GetClockFreq
2766                     	xref.b	c_lreg
2785                     	xref	c_lursh
2786                     	xref	c_lsub
2787                     	xref	c_smul
2788                     	xref	c_ludv
2789                     	xref	c_rtol
2790                     	xref	c_llsh
2791                     	xref	c_ltor
2792                     	end
