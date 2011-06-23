   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 43 void SPI_DeInit(void)
  33                     ; 44 {
  35                     .text:	section	.text,new
  36  0000               _SPI_DeInit:
  40                     ; 45     SPI->CR1    = SPI_CR1_RESET_VALUE;
  42  0000 725f5200      	clr	20992
  43                     ; 46     SPI->CR2    = SPI_CR2_RESET_VALUE;
  45  0004 725f5201      	clr	20993
  46                     ; 47     SPI->ICR    = SPI_ICR_RESET_VALUE;
  48  0008 725f5202      	clr	20994
  49                     ; 48     SPI->SR     = SPI_SR_RESET_VALUE;
  51  000c 35025203      	mov	20995,#2
  52                     ; 49     SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  54  0010 35075205      	mov	20997,#7
  55                     ; 50 }
  58  0014 81            	ret	
 374                     ; 65 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, u8 CRCPolynomial)
 374                     ; 66 {
 375                     .text:	section	.text,new
 376  0000               _SPI_Init:
 378  0000 89            	pushw	x
 379       00000000      OFST:	set	0
 382                     ; 68     assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 384                     ; 69     assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 386                     ; 70     assert_param(IS_SPI_MODE_OK(Mode));
 388                     ; 71     assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 390                     ; 72     assert_param(IS_SPI_PHASE_OK(ClockPhase));
 392                     ; 73     assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 394                     ; 74     assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 396                     ; 75     assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 398                     ; 78     SPI->CR1 = (u8)((u8)(FirstBit) |
 398                     ; 79                     (u8)(BaudRatePrescaler) |
 398                     ; 80                     (u8)(ClockPolarity) |
 398                     ; 81                     (u8)(ClockPhase));
 400  0001 9f            	ld	a,xl
 401  0002 1a01          	or	a,(OFST+1,sp)
 402  0004 1a06          	or	a,(OFST+6,sp)
 403  0006 1a07          	or	a,(OFST+7,sp)
 404  0008 c75200        	ld	20992,a
 405                     ; 84     SPI->CR2 = (u8)((u8)(Data_Direction) | (u8)(Slave_Management));
 407  000b 7b08          	ld	a,(OFST+8,sp)
 408  000d 1a09          	or	a,(OFST+9,sp)
 409  000f c75201        	ld	20993,a
 410                     ; 86     if (Mode == SPI_MODE_MASTER)
 412  0012 7b05          	ld	a,(OFST+5,sp)
 413  0014 a104          	cp	a,#4
 414  0016 2606          	jrne	L302
 415                     ; 88         SPI->CR2 |= (u8)SPI_CR2_SSI;
 417  0018 72105201      	bset	20993,#0
 419  001c 2004          	jra	L502
 420  001e               L302:
 421                     ; 92         SPI->CR2 &= (u8)~(SPI_CR2_SSI);
 423  001e 72115201      	bres	20993,#0
 424  0022               L502:
 425                     ; 96     SPI->CR1 |= (u8)(Mode);
 427  0022 c65200        	ld	a,20992
 428  0025 1a05          	or	a,(OFST+5,sp)
 429  0027 c75200        	ld	20992,a
 430                     ; 99     SPI->CRCPR = (u8)CRCPolynomial;
 432  002a 7b0a          	ld	a,(OFST+10,sp)
 433  002c c75205        	ld	20997,a
 434                     ; 100 }
 437  002f 85            	popw	x
 438  0030 81            	ret	
 493                     ; 111 void SPI_Cmd(FunctionalState NewState)
 493                     ; 112 {
 494                     .text:	section	.text,new
 495  0000               _SPI_Cmd:
 499                     ; 114     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 501                     ; 116     if (NewState != DISABLE)
 503  0000 4d            	tnz	a
 504  0001 2705          	jreq	L532
 505                     ; 118         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 507  0003 721c5200      	bset	20992,#6
 510  0007 81            	ret	
 511  0008               L532:
 512                     ; 122         SPI->CR1 &= (u8)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 514  0008 721d5200      	bres	20992,#6
 515                     ; 124 }
 518  000c 81            	ret	
 627                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 627                     ; 136 {
 628                     .text:	section	.text,new
 629  0000               _SPI_ITConfig:
 631  0000 89            	pushw	x
 632  0001 88            	push	a
 633       00000001      OFST:	set	1
 636                     ; 137     u8 itpos = 0;
 638  0002 0f01          	clr	(OFST+0,sp)
 639                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 641                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 643                     ; 143     itpos = (u8)((u8)1 << (u8)((u8)SPI_IT & (u8)0x0F));
 645  0004 9e            	ld	a,xh
 646  0005 a40f          	and	a,#15
 647  0007 5f            	clrw	x
 648  0008 97            	ld	xl,a
 649  0009 a601          	ld	a,#1
 650  000b 5d            	tnzw	x
 651  000c 2704          	jreq	L41
 652  000e               L61:
 653  000e 48            	sll	a
 654  000f 5a            	decw	x
 655  0010 26fc          	jrne	L61
 656  0012               L41:
 657  0012 6b01          	ld	(OFST+0,sp),a
 658                     ; 145     if (NewState != DISABLE)
 660  0014 0d03          	tnz	(OFST+2,sp)
 661  0016 2707          	jreq	L113
 662                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 664  0018 c65202        	ld	a,20994
 665  001b 1a01          	or	a,(OFST+0,sp)
 667  001d 2004          	jra	L313
 668  001f               L113:
 669                     ; 151         SPI->ICR &= (u8)(~itpos); /* Disable interrupt*/
 671  001f 43            	cpl	a
 672  0020 c45202        	and	a,20994
 673  0023               L313:
 674  0023 c75202        	ld	20994,a
 675                     ; 153 }
 678  0026 5b03          	addw	sp,#3
 679  0028 81            	ret	
 713                     ; 160 void SPI_SendData(u8 Data)
 713                     ; 161 {
 714                     .text:	section	.text,new
 715  0000               _SPI_SendData:
 719                     ; 162     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 721  0000 c75204        	ld	20996,a
 722                     ; 163 }
 725  0003 81            	ret	
 748                     ; 171 u8 SPI_ReceiveData(void)
 748                     ; 172 {
 749                     .text:	section	.text,new
 750  0000               _SPI_ReceiveData:
 754                     ; 173     return ((u8)SPI->DR); /* Return the data in the DR register*/
 756  0000 c65204        	ld	a,20996
 759  0003 81            	ret	
 795                     ; 185 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 795                     ; 186 {
 796                     .text:	section	.text,new
 797  0000               _SPI_NSSInternalSoftwareCmd:
 801                     ; 188     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 803                     ; 190     if (NewState != DISABLE)
 805  0000 4d            	tnz	a
 806  0001 2705          	jreq	L163
 807                     ; 192         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 809  0003 72105201      	bset	20993,#0
 812  0007 81            	ret	
 813  0008               L163:
 814                     ; 196         SPI->CR2 &= (u8)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 816  0008 72115201      	bres	20993,#0
 817                     ; 198 }
 820  000c 81            	ret	
 843                     ; 207 void SPI_TransmitCRC(void)
 843                     ; 208 {
 844                     .text:	section	.text,new
 845  0000               _SPI_TransmitCRC:
 849                     ; 209     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 851  0000 72185201      	bset	20993,#4
 852                     ; 210 }
 855  0004 81            	ret	
 892                     ; 221 void SPI_CalculateCRCCmd(FunctionalState NewState)
 892                     ; 222 {
 893                     .text:	section	.text,new
 894  0000               _SPI_CalculateCRCCmd:
 896  0000 88            	push	a
 897       00000000      OFST:	set	0
 900                     ; 224     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 902                     ; 227     SPI_Cmd(DISABLE);
 904  0001 4f            	clr	a
 905  0002 cd0000        	call	_SPI_Cmd
 907                     ; 229     if (NewState != DISABLE)
 909  0005 7b01          	ld	a,(OFST+1,sp)
 910  0007 2706          	jreq	L314
 911                     ; 231         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
 913  0009 721a5201      	bset	20993,#5
 915  000d 2004          	jra	L514
 916  000f               L314:
 917                     ; 235         SPI->CR2 &= (u8)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
 919  000f 721b5201      	bres	20993,#5
 920  0013               L514:
 921                     ; 237 }
 924  0013 84            	pop	a
 925  0014 81            	ret	
 989                     ; 244 u8 SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
 989                     ; 245 {
 990                     .text:	section	.text,new
 991  0000               _SPI_GetCRC:
 993  0000 88            	push	a
 994       00000001      OFST:	set	1
 997                     ; 246     u8 crcreg = 0;
 999  0001 0f01          	clr	(OFST+0,sp)
1000                     ; 249     assert_param(IS_SPI_CRC_OK(SPI_CRC));
1002                     ; 251     if (SPI_CRC != SPI_CRC_RX)
1004  0003 4d            	tnz	a
1005  0004 2705          	jreq	L154
1006                     ; 253         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1008  0006 c65207        	ld	a,20999
1010  0009 2003          	jra	L354
1011  000b               L154:
1012                     ; 257         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1014  000b c65206        	ld	a,20998
1015  000e               L354:
1016                     ; 261     return crcreg;
1020  000e 5b01          	addw	sp,#1
1021  0010 81            	ret	
1046                     ; 271 void SPI_ResetCRC(void)
1046                     ; 272 {
1047                     .text:	section	.text,new
1048  0000               _SPI_ResetCRC:
1052                     ; 275     SPI_CalculateCRCCmd(ENABLE);
1054  0000 a601          	ld	a,#1
1055  0002 cd0000        	call	_SPI_CalculateCRCCmd
1057                     ; 278     SPI_Cmd(ENABLE);
1059  0005 a601          	ld	a,#1
1061                     ; 279 }
1064  0007 cc0000        	jp	_SPI_Cmd
1088                     ; 287 u8 SPI_GetCRCPolynomial(void)
1088                     ; 288 {
1089                     .text:	section	.text,new
1090  0000               _SPI_GetCRCPolynomial:
1094                     ; 289     return SPI->CRCPR; /* Return the CRC polynomial register */
1096  0000 c65205        	ld	a,20997
1099  0003 81            	ret	
1155                     ; 298 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1155                     ; 299 {
1156                     .text:	section	.text,new
1157  0000               _SPI_BiDirectionalLineConfig:
1161                     ; 301     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1163                     ; 303     if (SPI_Direction != SPI_DIRECTION_RX)
1165  0000 4d            	tnz	a
1166  0001 2705          	jreq	L325
1167                     ; 305         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1169  0003 721c5201      	bset	20993,#6
1172  0007 81            	ret	
1173  0008               L325:
1174                     ; 309         SPI->CR2 &= (u8)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1176  0008 721d5201      	bres	20993,#6
1177                     ; 311 }
1180  000c 81            	ret	
1301                     ; 321 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1301                     ; 322 {
1302                     .text:	section	.text,new
1303  0000               _SPI_GetFlagStatus:
1305  0000 88            	push	a
1306       00000001      OFST:	set	1
1309                     ; 323     FlagStatus status = RESET;
1311  0001 0f01          	clr	(OFST+0,sp)
1312                     ; 325     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1314                     ; 328     if ((SPI->SR & (u8)SPI_FLAG) != (u8)RESET)
1316  0003 c45203        	and	a,20995
1317  0006 2702          	jreq	L306
1318                     ; 330         status = SET; /* SPI_FLAG is set */
1320  0008 a601          	ld	a,#1
1322  000a               L306:
1323                     ; 334         status = RESET; /* SPI_FLAG is reset*/
1325                     ; 338     return status;
1329  000a 5b01          	addw	sp,#1
1330  000c 81            	ret	
1365                     ; 357 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1365                     ; 358 {
1366                     .text:	section	.text,new
1367  0000               _SPI_ClearFlag:
1371                     ; 359     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1373                     ; 361     SPI->SR = (u8)(~SPI_FLAG);
1375  0000 43            	cpl	a
1376  0001 c75203        	ld	20995,a
1377                     ; 362 }
1380  0004 81            	ret	
1462                     ; 377 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1462                     ; 378 {
1463                     .text:	section	.text,new
1464  0000               _SPI_GetITStatus:
1466  0000 88            	push	a
1467  0001 89            	pushw	x
1468       00000002      OFST:	set	2
1471                     ; 379     ITStatus pendingbitstatus = RESET;
1473                     ; 380     u8 itpos = 0;
1475                     ; 381     u8 itmask1 = 0;
1477                     ; 382     u8 itmask2 = 0;
1479                     ; 383     u8 enablestatus = 0;
1481                     ; 384     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1483                     ; 386     itpos = (u8)((u8)1 << ((u8)SPI_IT & (u8)0x0F));
1485  0002 7b03          	ld	a,(OFST+1,sp)
1486  0004 a40f          	and	a,#15
1487  0006 5f            	clrw	x
1488  0007 97            	ld	xl,a
1489  0008 a601          	ld	a,#1
1490  000a 5d            	tnzw	x
1491  000b 2704          	jreq	L65
1492  000d               L06:
1493  000d 48            	sll	a
1494  000e 5a            	decw	x
1495  000f 26fc          	jrne	L06
1496  0011               L65:
1497  0011 6b01          	ld	(OFST-1,sp),a
1498                     ; 389     itmask1 = (u8)((u8)SPI_IT >> (u8)4);
1500  0013 7b03          	ld	a,(OFST+1,sp)
1501  0015 4e            	swap	a
1502  0016 a40f          	and	a,#15
1503  0018 6b02          	ld	(OFST+0,sp),a
1504                     ; 391     itmask2 = (u8)((u8)1 << itmask1);
1506  001a 5f            	clrw	x
1507  001b 97            	ld	xl,a
1508  001c a601          	ld	a,#1
1509  001e 5d            	tnzw	x
1510  001f 2704          	jreq	L26
1511  0021               L46:
1512  0021 48            	sll	a
1513  0022 5a            	decw	x
1514  0023 26fc          	jrne	L46
1515  0025               L26:
1516                     ; 393     enablestatus = (u8)((u8)SPI->SR & itmask2);
1518  0025 c45203        	and	a,20995
1519  0028 6b02          	ld	(OFST+0,sp),a
1520                     ; 395     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1522  002a c65202        	ld	a,20994
1523  002d 1501          	bcp	a,(OFST-1,sp)
1524  002f 2708          	jreq	L766
1526  0031 7b02          	ld	a,(OFST+0,sp)
1527  0033 2704          	jreq	L766
1528                     ; 398         pendingbitstatus = SET;
1530  0035 a601          	ld	a,#1
1532  0037 2001          	jra	L176
1533  0039               L766:
1534                     ; 403         pendingbitstatus = RESET;
1536  0039 4f            	clr	a
1537  003a               L176:
1538                     ; 406     return  pendingbitstatus;
1542  003a 5b03          	addw	sp,#3
1543  003c 81            	ret	
1588                     ; 424 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1588                     ; 425 {
1589                     .text:	section	.text,new
1590  0000               _SPI_ClearITPendingBit:
1592  0000 88            	push	a
1593       00000001      OFST:	set	1
1596                     ; 426     u8 itpos = 0;
1598  0001 0f01          	clr	(OFST+0,sp)
1599                     ; 427     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1601                     ; 432     itpos = (u8)((u8)1 << (((u8)SPI_IT & (u8)0xF0) >> 4));
1603  0003 4e            	swap	a
1604  0004 a40f          	and	a,#15
1605  0006 5f            	clrw	x
1606  0007 97            	ld	xl,a
1607  0008 a601          	ld	a,#1
1608  000a 5d            	tnzw	x
1609  000b 2704          	jreq	L07
1610  000d               L27:
1611  000d 48            	sll	a
1612  000e 5a            	decw	x
1613  000f 26fc          	jrne	L27
1614  0011               L07:
1615                     ; 434     SPI->SR = (u8)(~itpos);
1617  0011 43            	cpl	a
1618  0012 c75203        	ld	20995,a
1619                     ; 436 }
1622  0015 84            	pop	a
1623  0016 81            	ret	
1636                     	xdef	_SPI_ClearITPendingBit
1637                     	xdef	_SPI_GetITStatus
1638                     	xdef	_SPI_ClearFlag
1639                     	xdef	_SPI_GetFlagStatus
1640                     	xdef	_SPI_BiDirectionalLineConfig
1641                     	xdef	_SPI_GetCRCPolynomial
1642                     	xdef	_SPI_ResetCRC
1643                     	xdef	_SPI_GetCRC
1644                     	xdef	_SPI_CalculateCRCCmd
1645                     	xdef	_SPI_TransmitCRC
1646                     	xdef	_SPI_NSSInternalSoftwareCmd
1647                     	xdef	_SPI_ReceiveData
1648                     	xdef	_SPI_SendData
1649                     	xdef	_SPI_ITConfig
1650                     	xdef	_SPI_Cmd
1651                     	xdef	_SPI_Init
1652                     	xdef	_SPI_DeInit
1671                     	end
