   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  65                     ; 47 void FLASH_Unlock(FLASH_MemType_TypeDef MemType)
  65                     ; 48 {
  67                     .text:	section	.text,new
  68  0000               _FLASH_Unlock:
  72                     ; 50     assert_param(IS_MEMORY_TYPE_OK(MemType));
  74                     ; 53     if (MemType == FLASH_MEMTYPE_PROG)
  76  0000 4d            	tnz	a
  77  0001 2609          	jrne	L73
  78                     ; 55         FLASH->PUKR = FLASH_RASS_KEY1;
  80  0003 35565062      	mov	20578,#86
  81                     ; 56         FLASH->PUKR = FLASH_RASS_KEY2;
  83  0007 35ae5062      	mov	20578,#174
  86  000b 81            	ret	
  87  000c               L73:
  88                     ; 62         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  90  000c 35ae5064      	mov	20580,#174
  91                     ; 63         FLASH->DUKR = FLASH_RASS_KEY1;
  93  0010 35565064      	mov	20580,#86
  94                     ; 65 }
  97  0014 81            	ret	
 132                     ; 73 void FLASH_Lock(FLASH_MemType_TypeDef MemType)
 132                     ; 74 {
 133                     .text:	section	.text,new
 134  0000               _FLASH_Lock:
 138                     ; 76     assert_param(IS_MEMORY_TYPE_OK(MemType));
 140                     ; 79     if (MemType == FLASH_MEMTYPE_PROG)
 142  0000 4d            	tnz	a
 143  0001 2605          	jrne	L16
 144                     ; 81         FLASH->IAPSR = (u8)(~FLASH_IAPSR_PUL);
 146  0003 35fd505f      	mov	20575,#253
 149  0007 81            	ret	
 150  0008               L16:
 151                     ; 87         FLASH->IAPSR = (u8)(~FLASH_IAPSR_DUL);
 153  0008 35f7505f      	mov	20575,#247
 154                     ; 89 }
 157  000c 81            	ret	
 191                     ; 97 void FLASH_DeInit(void)
 191                     ; 98 {
 192                     .text:	section	.text,new
 193  0000               _FLASH_DeInit:
 195  0000 88            	push	a
 196       00000001      OFST:	set	1
 199                     ; 99     u8 temp = 0;
 201  0001 0f01          	clr	(OFST+0,sp)
 202                     ; 100     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 204  0003 725f505a      	clr	20570
 205                     ; 101     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 207  0007 725f505b      	clr	20571
 208                     ; 102     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 210  000b 35ff505c      	mov	20572,#255
 211                     ; 103     FLASH->IAPSR &= (u8)(~FLASH_IAPSR_DUL);
 213  000f 7217505f      	bres	20575,#3
 214                     ; 104     FLASH->IAPSR &= (u8)(~FLASH_IAPSR_PUL);
 216  0013 7213505f      	bres	20575,#1
 217                     ; 105     temp = FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 219  0017 c6505f        	ld	a,20575
 220                     ; 106 }
 223  001a 84            	pop	a
 224  001b 81            	ret	
 279                     ; 113 void FLASH_ITConfig(FunctionalState NewState)
 279                     ; 114 {
 280                     .text:	section	.text,new
 281  0000               _FLASH_ITConfig:
 285                     ; 115     if (NewState != DISABLE)
 287  0000 4d            	tnz	a
 288  0001 2705          	jreq	L131
 289                     ; 117         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 291  0003 7212505a      	bset	20570,#1
 294  0007 81            	ret	
 295  0008               L131:
 296                     ; 121         FLASH->CR1 &= (u8)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 298  0008 7213505a      	bres	20570,#1
 299                     ; 123 }
 302  000c 81            	ret	
 336                     ; 134 void FLASH_EraseByte(u32 Address)
 336                     ; 135 {
 337                     .text:	section	.text,new
 338  0000               _FLASH_EraseByte:
 340       00000000      OFST:	set	0
 343                     ; 137     assert_param(IS_FLASH_ADDRESS_OK(Address));
 345                     ; 138     *((PointerAttr u8*) Address) = FLASH_CLEAR_BYTE; /* Erase byte */
 347  0000 7b04          	ld	a,(OFST+4,sp)
 348  0002 b700          	ld	c_x,a
 349  0004 1e05          	ldw	x,(OFST+5,sp)
 350  0006 bf01          	ldw	c_x+1,x
 351  0008 4f            	clr	a
 352  0009 92bd0000      	ldf	[c_x.e],a
 353                     ; 140 }
 357  000d 81            	ret	
 400                     ; 152 void FLASH_ProgramByte(u32 Address, u8 Data)
 400                     ; 153 {
 401                     .text:	section	.text,new
 402  0000               _FLASH_ProgramByte:
 404       00000000      OFST:	set	0
 407                     ; 155     assert_param(IS_FLASH_ADDRESS_OK(Address));
 409                     ; 156     *((PointerAttr u8*) Address) = Data;
 411  0000 7b07          	ld	a,(OFST+7,sp)
 412  0002 88            	push	a
 413  0003 7b05          	ld	a,(OFST+5,sp)
 414  0005 b700          	ld	c_x,a
 415  0007 1e06          	ldw	x,(OFST+6,sp)
 416  0009 bf01          	ldw	c_x+1,x
 417  000b 84            	pop	a
 418  000c 92bd0000      	ldf	[c_x.e],a
 419                     ; 157 }
 422  0010 81            	ret	
 456                     ; 167 u8 FLASH_ReadByte(u32 Address)
 456                     ; 168 {
 457                     .text:	section	.text,new
 458  0000               _FLASH_ReadByte:
 460       00000000      OFST:	set	0
 463                     ; 170     assert_param(IS_FLASH_ADDRESS_OK(Address));
 465                     ; 171     return(*((PointerAttr u8*) Address)); /* Read byte */
 467  0000 7b04          	ld	a,(OFST+4,sp)
 468  0002 b700          	ld	c_x,a
 469  0004 1e05          	ldw	x,(OFST+5,sp)
 470  0006 bf01          	ldw	c_x+1,x
 471  0008 92bc0000      	ldf	a,[c_x.e]
 474  000c 81            	ret	
 517                     ; 184 void FLASH_ProgramWord(u32 Address, u32 Data)
 517                     ; 185 {
 518                     .text:	section	.text,new
 519  0000               _FLASH_ProgramWord:
 521       00000000      OFST:	set	0
 524                     ; 187     assert_param(IS_FLASH_ADDRESS_OK(Address));
 526                     ; 190     FLASH->CR2 |= FLASH_CR2_WPRG;
 528  0000 721c505b      	bset	20571,#6
 529                     ; 191     FLASH->NCR2 &= (u8)(~FLASH_NCR2_NWPRG);
 531  0004 721d505c      	bres	20572,#6
 532                     ; 193     *((PointerAttr u8*)Address)       = *((u8*)(&Data)); /* Write one byte - from lowest address*/
 534  0008 7b07          	ld	a,(OFST+7,sp)
 535  000a 88            	push	a
 536  000b 7b05          	ld	a,(OFST+5,sp)
 537  000d b700          	ld	c_x,a
 538  000f 1e06          	ldw	x,(OFST+6,sp)
 539  0011 bf01          	ldw	c_x+1,x
 540  0013 84            	pop	a
 541  0014 92bd0000      	ldf	[c_x.e],a
 542                     ; 194     *(((PointerAttr u8*)Address) + 1) = *((u8*)(&Data)+1); /* Write one byte*/
 544  0018 7b08          	ld	a,(OFST+8,sp)
 545  001a 88            	push	a
 546  001b 7b05          	ld	a,(OFST+5,sp)
 547  001d b700          	ld	c_x,a
 548  001f 1e06          	ldw	x,(OFST+6,sp)
 549  0021 bf01          	ldw	c_x+1,x
 550  0023 90ae0001      	ldw	y,#1
 551  0027 93            	ldw	x,y
 552  0028 84            	pop	a
 553  0029 92a70000      	ldf	([c_x.e],x),a
 554                     ; 195     *(((PointerAttr u8*)Address) + 2) = *((u8*)(&Data)+2); /* Write one byte*/
 556  002d 7b09          	ld	a,(OFST+9,sp)
 557  002f 88            	push	a
 558  0030 7b05          	ld	a,(OFST+5,sp)
 559  0032 b700          	ld	c_x,a
 560  0034 1e06          	ldw	x,(OFST+6,sp)
 561  0036 bf01          	ldw	c_x+1,x
 562  0038 905c          	incw	y
 563  003a 93            	ldw	x,y
 564  003b 84            	pop	a
 565  003c 92a70000      	ldf	([c_x.e],x),a
 566                     ; 196     *(((PointerAttr u8*)Address) + 3) = *((u8*)(&Data)+3); /* Write one byte - from higher address*/
 568  0040 7b0a          	ld	a,(OFST+10,sp)
 569  0042 88            	push	a
 570  0043 7b05          	ld	a,(OFST+5,sp)
 571  0045 b700          	ld	c_x,a
 572  0047 1e06          	ldw	x,(OFST+6,sp)
 573  0049 bf01          	ldw	c_x+1,x
 574  004b 905c          	incw	y
 575  004d 93            	ldw	x,y
 576  004e 84            	pop	a
 577  004f 92a70000      	ldf	([c_x.e],x),a
 578                     ; 197 }
 581  0053 81            	ret	
 626                     ; 206 void FLASH_ProgramOptionByte(u16 Address, u8 Data)
 626                     ; 207 {
 627                     .text:	section	.text,new
 628  0000               _FLASH_ProgramOptionByte:
 630  0000 89            	pushw	x
 631       00000000      OFST:	set	0
 634                     ; 209     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 636                     ; 212     FLASH->CR2 |= FLASH_CR2_OPT;
 638  0001 721e505b      	bset	20571,#7
 639                     ; 213     FLASH->NCR2 &= (u8)(~FLASH_NCR2_NOPT);
 641  0005 721f505c      	bres	20572,#7
 642                     ; 216     *((NEAR u8*)Address) = Data;
 644  0009 7b05          	ld	a,(OFST+5,sp)
 645  000b 1e01          	ldw	x,(OFST+1,sp)
 646  000d f7            	ld	(x),a
 647                     ; 217     *((NEAR u8*)(Address + 1)) = (u8)(~Data);
 649  000e 43            	cpl	a
 650  000f e701          	ld	(1,x),a
 651                     ; 219     FLASH_WaitForLastOperation(FLASH_MEMTYPE_DATA);
 653  0011 a601          	ld	a,#1
 654  0013 cd0000        	call	_FLASH_WaitForLastOperation
 656                     ; 222     FLASH->CR2 &= (u8)(~FLASH_CR2_OPT);
 658  0016 721f505b      	bres	20571,#7
 659                     ; 223     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 661  001a 721e505c      	bset	20572,#7
 662                     ; 224 }
 665  001e 85            	popw	x
 666  001f 81            	ret	
 702                     ; 232 void FLASH_EraseOptionByte(u16 Address)
 702                     ; 233 {
 703                     .text:	section	.text,new
 704  0000               _FLASH_EraseOptionByte:
 708                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 710                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 712  0000 721e505b      	bset	20571,#7
 713                     ; 239     FLASH->NCR2 &= (u8)(~FLASH_NCR2_NOPT);
 715  0004 721f505c      	bres	20572,#7
 716                     ; 242     *((NEAR u8*)Address) = FLASH_CLEAR_BYTE;
 718  0008 7f            	clr	(x)
 719                     ; 243     *((NEAR u8*)(Address + 1 )) = FLASH_SET_BYTE;
 722  0009 a6ff          	ld	a,#255
 723  000b e701          	ld	(1,x),a
 724                     ; 245     FLASH_WaitForLastOperation(FLASH_MEMTYPE_DATA);
 727  000d a601          	ld	a,#1
 728  000f cd0000        	call	_FLASH_WaitForLastOperation
 730                     ; 248     FLASH->CR2 &= (u8)(~FLASH_CR2_OPT);
 732  0012 721f505b      	bres	20571,#7
 733                     ; 249     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 735  0016 721e505c      	bset	20572,#7
 736                     ; 250 }
 739  001a 81            	ret	
 802                     ; 256 u16 FLASH_ReadOptionByte(u16 Address)
 802                     ; 257 {
 803                     .text:	section	.text,new
 804  0000               _FLASH_ReadOptionByte:
 806  0000 89            	pushw	x
 807  0001 5204          	subw	sp,#4
 808       00000004      OFST:	set	4
 811                     ; 258     u8 value_optbyte, value_optbyte_complement = 0;
 813                     ; 259     u16 res_value = 0;
 815                     ; 262     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 817                     ; 265     value_optbyte = *((NEAR u8*)Address); /* Read option byte */
 819  0003 1e05          	ldw	x,(OFST+1,sp)
 820  0005 f6            	ld	a,(x)
 821  0006 6b01          	ld	(OFST-3,sp),a
 822                     ; 266     value_optbyte_complement = *(((NEAR u8*)Address) + 1); /* Read option byte complement*/
 824  0008 e601          	ld	a,(1,x)
 825  000a 6b02          	ld	(OFST-2,sp),a
 826                     ; 268     if (value_optbyte == (u8)(~value_optbyte_complement))
 828  000c 43            	cpl	a
 829  000d 1101          	cp	a,(OFST-3,sp)
 830  000f 2614          	jrne	L723
 831                     ; 270         res_value = (u16)((u16)value_optbyte << 8);
 833  0011 7b01          	ld	a,(OFST-3,sp)
 834  0013 97            	ld	xl,a
 835  0014 4f            	clr	a
 836  0015 02            	rlwa	x,a
 837  0016 1f03          	ldw	(OFST-1,sp),x
 838                     ; 271         res_value = res_value | (u16)value_optbyte_complement;
 840  0018 7b02          	ld	a,(OFST-2,sp)
 841  001a 5f            	clrw	x
 842  001b 97            	ld	xl,a
 843  001c 01            	rrwa	x,a
 844  001d 1a04          	or	a,(OFST+0,sp)
 845  001f 01            	rrwa	x,a
 846  0020 1a03          	or	a,(OFST-1,sp)
 847  0022 01            	rrwa	x,a
 849  0023 2003          	jra	L133
 850  0025               L723:
 851                     ; 275         res_value = FLASH_OPTIONBYTE_ERROR;
 853  0025 ae5555        	ldw	x,#21845
 854  0028               L133:
 855                     ; 278     return(res_value);
 859  0028 5b06          	addw	sp,#6
 860  002a 81            	ret	
 934                     ; 287 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef LPMode)
 934                     ; 288 {
 935                     .text:	section	.text,new
 936  0000               _FLASH_SetLowPowerMode:
 938  0000 88            	push	a
 939       00000000      OFST:	set	0
 942                     ; 290     assert_param(IS_FLASH_LOW_POWER_MODE_OK(LPMode));
 944                     ; 292     FLASH->CR1 &= (u8)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); /* Clears the two bits */
 946  0001 c6505a        	ld	a,20570
 947  0004 a4f3          	and	a,#243
 948  0006 c7505a        	ld	20570,a
 949                     ; 293     FLASH->CR1 |= (u8)LPMode; /* Sets the new mode */
 951  0009 c6505a        	ld	a,20570
 952  000c 1a01          	or	a,(OFST+1,sp)
 953  000e c7505a        	ld	20570,a
 954                     ; 294 }
 957  0011 84            	pop	a
 958  0012 81            	ret	
1016                     ; 302 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef ProgTime)
1016                     ; 303 {
1017                     .text:	section	.text,new
1018  0000               _FLASH_SetProgrammingTime:
1022                     ; 305     assert_param(IS_FLASH_PROGRAM_TIME_OK(ProgTime));
1024                     ; 307     FLASH->CR1 &= (u8)(~FLASH_CR1_FIX);
1026  0000 7211505a      	bres	20570,#0
1027                     ; 308     FLASH->CR1 |= (u8)ProgTime;
1029  0004 ca505a        	or	a,20570
1030  0007 c7505a        	ld	20570,a
1031                     ; 309 }
1034  000a 81            	ret	
1059                     ; 317 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1059                     ; 318 {
1060                     .text:	section	.text,new
1061  0000               _FLASH_GetLowPowerMode:
1065                     ; 319     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1067  0000 c6505a        	ld	a,20570
1068  0003 a40c          	and	a,#12
1071  0005 81            	ret	
1096                     ; 328 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1096                     ; 329 {
1097                     .text:	section	.text,new
1098  0000               _FLASH_GetProgrammingTime:
1102                     ; 330     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1104  0000 c6505a        	ld	a,20570
1105  0003 a401          	and	a,#1
1108  0005 81            	ret	
1142                     ; 339 u32 FLASH_GetBootSize(void)
1142                     ; 340 {
1143                     .text:	section	.text,new
1144  0000               _FLASH_GetBootSize:
1146  0000 5204          	subw	sp,#4
1147       00000004      OFST:	set	4
1150                     ; 341     u32 temp = 0;
1152  0002 5f            	clrw	x
1153  0003 1f03          	ldw	(OFST-1,sp),x
1154  0005 1f01          	ldw	(OFST-3,sp),x
1155                     ; 344     temp = (u32)((u32)FLASH->FPR * (u32)512);
1157  0007 c6505d        	ld	a,20573
1158  000a 97            	ld	xl,a
1159  000b 90ae0200      	ldw	y,#512
1160  000f cd0000        	call	c_umul
1162  0012 96            	ldw	x,sp
1163  0013 5c            	incw	x
1164  0014 cd0000        	call	c_rtol
1166                     ; 347     if (FLASH->FPR == 0xFF)
1168  0017 c6505d        	ld	a,20573
1169  001a 4c            	inc	a
1170  001b 260d          	jrne	L154
1171                     ; 349         temp += 512;
1173  001d ae0200        	ldw	x,#512
1174  0020 bf02          	ldw	c_lreg+2,x
1175  0022 5f            	clrw	x
1176  0023 bf00          	ldw	c_lreg,x
1177  0025 96            	ldw	x,sp
1178  0026 5c            	incw	x
1179  0027 cd0000        	call	c_lgadd
1181  002a               L154:
1182                     ; 353     return(temp);
1184  002a 96            	ldw	x,sp
1185  002b 5c            	incw	x
1186  002c cd0000        	call	c_ltor
1190  002f 5b04          	addw	sp,#4
1191  0031 81            	ret	
1300                     ; 365 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1300                     ; 366 {
1301                     .text:	section	.text,new
1302  0000               _FLASH_GetFlagStatus:
1304  0000 88            	push	a
1305       00000001      OFST:	set	1
1308                     ; 367     FlagStatus status = RESET;
1310  0001 0f01          	clr	(OFST+0,sp)
1311                     ; 369     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1313                     ; 372     if ((FLASH->IAPSR & (u8)FLASH_FLAG) != (u8)RESET)
1315  0003 c4505f        	and	a,20575
1316  0006 2702          	jreq	L325
1317                     ; 374         status = SET; /* FLASH_FLAG is set */
1319  0008 a601          	ld	a,#1
1321  000a               L325:
1322                     ; 378         status = RESET; /* FLASH_FLAG is reset*/
1324                     ; 382     return status;
1328  000a 5b01          	addw	sp,#1
1329  000c 81            	ret	
1422                     ; 393 FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef MemType)
1422                     ; 394 {
1423                     .text:	section	.text,new
1424  0000               _FLASH_WaitForLastOperation:
1426  0000 5203          	subw	sp,#3
1427       00000003      OFST:	set	3
1430                     ; 395     u8 flagstatus = 0x00;
1432  0002 0f03          	clr	(OFST+0,sp)
1433                     ; 396     u16 timeout = OPERATION_TIMEOUT;
1435  0004 ae1000        	ldw	x,#4096
1436  0007 1f01          	ldw	(OFST-2,sp),x
1437                     ; 399     if (MemType == FLASH_MEMTYPE_PROG)
1439  0009 4d            	tnz	a
1440  000a 2620          	jrne	L706
1442  000c 200a          	jra	L575
1443  000e               L375:
1444                     ; 403             flagstatus = (u8)(FLASH->IAPSR & (FLASH_IAPSR_EOP |
1444                     ; 404                                               FLASH_IAPSR_WR_PG_DIS));
1446  000e c6505f        	ld	a,20575
1447  0011 a405          	and	a,#5
1448  0013 6b03          	ld	(OFST+0,sp),a
1449                     ; 405             timeout--;
1451  0015 5a            	decw	x
1452  0016 1f01          	ldw	(OFST-2,sp),x
1453  0018               L575:
1454                     ; 401         while ((flagstatus == 0x00) && (timeout != 0x00))
1456  0018 7b03          	ld	a,(OFST+0,sp)
1457  001a 2618          	jrne	L306
1459  001c 1e01          	ldw	x,(OFST-2,sp)
1460  001e 26ee          	jrne	L375
1461  0020 2012          	jra	L306
1462  0022               L506:
1463                     ; 412             flagstatus = (u8)(FLASH->IAPSR & (FLASH_IAPSR_HVOFF |
1463                     ; 413                                               FLASH_IAPSR_WR_PG_DIS));
1465  0022 c6505f        	ld	a,20575
1466  0025 a441          	and	a,#65
1467  0027 6b03          	ld	(OFST+0,sp),a
1468                     ; 414             timeout--;
1470  0029 5a            	decw	x
1471  002a 1f01          	ldw	(OFST-2,sp),x
1472  002c               L706:
1473                     ; 410         while ((flagstatus == 0x00) && (timeout != 0x00))
1475  002c 7b03          	ld	a,(OFST+0,sp)
1476  002e 2604          	jrne	L306
1478  0030 1e01          	ldw	x,(OFST-2,sp)
1479  0032 26ee          	jrne	L506
1480  0034               L306:
1481                     ; 425     if (timeout == 0x00 )
1483  0034 1e01          	ldw	x,(OFST-2,sp)
1484  0036 2602          	jrne	L516
1485                     ; 427         flagstatus = FLASH_STATUS_TIMEOUT;
1487  0038 a602          	ld	a,#2
1488  003a               L516:
1489                     ; 430     return((FLASH_Status_TypeDef)flagstatus);
1493  003a 5b03          	addw	sp,#3
1494  003c 81            	ret	
1556                     ; 457 void FLASH_EraseBlock(u16 BlockNum, FLASH_MemType_TypeDef MemType)
1556                     ; 458 {
1557                     .text:	section	.text,new
1558  0000               _FLASH_EraseBlock:
1560  0000 89            	pushw	x
1561  0001 5206          	subw	sp,#6
1562       00000006      OFST:	set	6
1565                     ; 459     u16 timeout = OPERATION_TIMEOUT;
1567  0003 ae1000        	ldw	x,#4096
1568  0006 1f01          	ldw	(OFST-5,sp),x
1569                     ; 461     u32 StartAddress = 0;
1571  0008 96            	ldw	x,sp
1572  0009 1c0003        	addw	x,#OFST-3
1573  000c cd0000        	call	c_ltor
1575                     ; 468     assert_param(IS_MEMORY_TYPE_OK(MemType));
1577                     ; 469     if (MemType == FLASH_MEMTYPE_PROG)
1579  000f 7b0b          	ld	a,(OFST+5,sp)
1580  0011 2605          	jrne	L156
1581                     ; 471         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1583                     ; 472         StartAddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1585  0013 ae8000        	ldw	x,#32768
1587  0016 2003          	jra	L356
1588  0018               L156:
1589                     ; 476         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1591                     ; 477         StartAddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1593  0018 ae4000        	ldw	x,#16384
1594  001b               L356:
1595  001b 1f05          	ldw	(OFST-1,sp),x
1596  001d 5f            	clrw	x
1597  001e 1f03          	ldw	(OFST-3,sp),x
1598                     ; 481     StartAddress = StartAddress + ((u32)BlockNum * FLASH_BLOCK_SIZE);
1600  0020 1e07          	ldw	x,(OFST+1,sp)
1601  0022 a680          	ld	a,#128
1602  0024 cd0000        	call	c_cmulx
1604  0027 96            	ldw	x,sp
1605  0028 1c0003        	addw	x,#OFST-3
1606  002b cd0000        	call	c_lgadd
1608                     ; 484     FLASH->CR2 |= FLASH_CR2_ERASE;
1610  002e 721a505b      	bset	20571,#5
1611                     ; 485     FLASH->NCR2 &= (u8)(~FLASH_NCR2_NERASE);
1613  0032 721b505c      	bres	20572,#5
1614                     ; 487     *((PointerAttr u8*) StartAddress) = FLASH_CLEAR_BYTE;
1616  0036 7b04          	ld	a,(OFST-2,sp)
1617  0038 b700          	ld	c_x,a
1618  003a 1e05          	ldw	x,(OFST-1,sp)
1619  003c bf01          	ldw	c_x+1,x
1620  003e 4f            	clr	a
1621  003f 92bd0000      	ldf	[c_x.e],a
1622                     ; 488     *((PointerAttr u8*) StartAddress + 1) = FLASH_CLEAR_BYTE;
1625  0043 90ae0001      	ldw	y,#1
1626  0047 93            	ldw	x,y
1627  0048 92a70000      	ldf	([c_x.e],x),a
1628                     ; 489     *((PointerAttr u8*) StartAddress + 2) = FLASH_CLEAR_BYTE;
1631  004c 905c          	incw	y
1632  004e 93            	ldw	x,y
1633  004f 92a70000      	ldf	([c_x.e],x),a
1634                     ; 490     *((PointerAttr u8*) StartAddress + 3) = FLASH_CLEAR_BYTE;
1637  0053 905c          	incw	y
1638  0055 93            	ldw	x,y
1639  0056 92a70000      	ldf	([c_x.e],x),a
1642  005a 2005          	jra	L756
1643  005c               L556:
1644                     ; 507         timeout--;
1646  005c 1e01          	ldw	x,(OFST-5,sp)
1647  005e 5a            	decw	x
1648  005f 1f01          	ldw	(OFST-5,sp),x
1649  0061               L756:
1650                     ; 505     while ((FLASH->IAPSR & FLASH_IAPSR_HVOFF) != 0x00 || (timeout == 0x00))
1652  0061 720c505ff6    	btjt	20575,#6,L556
1654  0066 1e01          	ldw	x,(OFST-5,sp)
1655  0068 27f2          	jreq	L556
1656                     ; 510 }
1659  006a 5b08          	addw	sp,#8
1660  006c 81            	ret	
1773                     ; 525 void FLASH_ProgramBlock(u16 BlockNum, FLASH_MemType_TypeDef MemType, FLASH_ProgramMode_TypeDef ProgMode, u8 *Buffer)
1773                     ; 526 {
1774                     .text:	section	.text,new
1775  0000               _FLASH_ProgramBlock:
1777  0000 89            	pushw	x
1778  0001 5208          	subw	sp,#8
1779       00000008      OFST:	set	8
1782                     ; 527     u16 Count = 0;
1784                     ; 528     u32 StartAddress = 0;
1786  0003 96            	ldw	x,sp
1787  0004 1c0003        	addw	x,#OFST-5
1788  0007 cd0000        	call	c_ltor
1790                     ; 529     u16 timeout = OPERATION_TIMEOUT;
1792  000a ae1000        	ldw	x,#4096
1793  000d 1f01          	ldw	(OFST-7,sp),x
1794                     ; 531     assert_param(IS_MEMORY_TYPE_OK(MemType));
1796                     ; 532     assert_param(IS_FLASH_PROGRAM_MODE_OK(ProgMode));
1798                     ; 533     if (MemType == FLASH_MEMTYPE_PROG)
1800  000f 7b0d          	ld	a,(OFST+5,sp)
1801  0011 2605          	jrne	L147
1802                     ; 535         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1804                     ; 536         StartAddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1806  0013 ae8000        	ldw	x,#32768
1808  0016 2003          	jra	L347
1809  0018               L147:
1810                     ; 540         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1812                     ; 541         StartAddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1814  0018 ae4000        	ldw	x,#16384
1815  001b               L347:
1816  001b 1f05          	ldw	(OFST-3,sp),x
1817  001d 5f            	clrw	x
1818  001e 1f03          	ldw	(OFST-5,sp),x
1819                     ; 545     StartAddress = StartAddress + ((u32)BlockNum * FLASH_BLOCK_SIZE);
1821  0020 1e09          	ldw	x,(OFST+1,sp)
1822  0022 a680          	ld	a,#128
1823  0024 cd0000        	call	c_cmulx
1825  0027 96            	ldw	x,sp
1826  0028 1c0003        	addw	x,#OFST-5
1827  002b cd0000        	call	c_lgadd
1829                     ; 548     if (ProgMode == FLASH_PROGRAMMODE_STANDARD)
1831  002e 7b0e          	ld	a,(OFST+6,sp)
1832  0030 260a          	jrne	L547
1833                     ; 551         FLASH->CR2 |= FLASH_CR2_PRG;
1835  0032 7210505b      	bset	20571,#0
1836                     ; 552         FLASH->NCR2 &= (u8)(~FLASH_NCR2_NPRG);
1838  0036 7211505c      	bres	20572,#0
1840  003a 2008          	jra	L747
1841  003c               L547:
1842                     ; 557         FLASH->CR2 |= FLASH_CR2_FPRG;
1844  003c 7218505b      	bset	20571,#4
1845                     ; 558         FLASH->NCR2 &= (u8)(~FLASH_NCR2_NFPRG);
1847  0040 7219505c      	bres	20572,#4
1848  0044               L747:
1849                     ; 562     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1851  0044 5f            	clrw	x
1852  0045 1f07          	ldw	(OFST-1,sp),x
1853  0047               L157:
1854                     ; 564         *((PointerAttr u8*)StartAddress + Count) = ((u8)(Buffer[Count]));
1856  0047 1e0f          	ldw	x,(OFST+7,sp)
1857  0049 72fb07        	addw	x,(OFST-1,sp)
1858  004c f6            	ld	a,(x)
1859  004d 88            	push	a
1860  004e 7b05          	ld	a,(OFST-3,sp)
1861  0050 b700          	ld	c_x,a
1862  0052 1e06          	ldw	x,(OFST-2,sp)
1863  0054 bf01          	ldw	c_x+1,x
1864  0056 84            	pop	a
1865  0057 1e07          	ldw	x,(OFST-1,sp)
1866  0059 92a70000      	ldf	([c_x.e],x),a
1867                     ; 562     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1869  005d 5c            	incw	x
1870  005e 1f07          	ldw	(OFST-1,sp),x
1873  0060 a30080        	cpw	x,#128
1874  0063 25e2          	jrult	L157
1875                     ; 568     if (MemType == FLASH_MEMTYPE_DATA)
1877  0065 7b0d          	ld	a,(OFST+5,sp)
1878  0067 4a            	dec	a
1879  0068 2610          	jrne	L757
1881  006a 2005          	jra	L367
1882  006c               L167:
1883                     ; 573             timeout--;
1885  006c 1e01          	ldw	x,(OFST-7,sp)
1886  006e 5a            	decw	x
1887  006f 1f01          	ldw	(OFST-7,sp),x
1888  0071               L367:
1889                     ; 571         while ((FLASH->IAPSR & FLASH_IAPSR_HVOFF) != 0x00 || (timeout == 0x00))
1891  0071 720c505ff6    	btjt	20575,#6,L167
1893  0076 1e01          	ldw	x,(OFST-7,sp)
1894  0078 27f2          	jreq	L167
1895  007a               L757:
1896                     ; 577 }
1899  007a 5b0a          	addw	sp,#10
1900  007c 81            	ret	
1913                     	xdef	_FLASH_WaitForLastOperation
1914                     	xdef	_FLASH_ProgramBlock
1915                     	xdef	_FLASH_EraseBlock
1916                     	xdef	_FLASH_GetFlagStatus
1917                     	xdef	_FLASH_GetBootSize
1918                     	xdef	_FLASH_GetProgrammingTime
1919                     	xdef	_FLASH_GetLowPowerMode
1920                     	xdef	_FLASH_SetProgrammingTime
1921                     	xdef	_FLASH_SetLowPowerMode
1922                     	xdef	_FLASH_EraseOptionByte
1923                     	xdef	_FLASH_ProgramOptionByte
1924                     	xdef	_FLASH_ReadOptionByte
1925                     	xdef	_FLASH_ProgramWord
1926                     	xdef	_FLASH_ReadByte
1927                     	xdef	_FLASH_ProgramByte
1928                     	xdef	_FLASH_EraseByte
1929                     	xdef	_FLASH_ITConfig
1930                     	xdef	_FLASH_DeInit
1931                     	xdef	_FLASH_Lock
1932                     	xdef	_FLASH_Unlock
1933                     	xref.b	c_lreg
1934                     	xref.b	c_x
1953                     	xref	c_cmulx
1954                     	xref	c_ltor
1955                     	xref	c_lgadd
1956                     	xref	c_rtol
1957                     	xref	c_umul
1958                     	end
