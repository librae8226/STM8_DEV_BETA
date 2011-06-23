   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 43 void TIM3_DeInit(void)
  33                     ; 44 {
  35                     .text:	section	.text,new
  36  0000               _TIM3_DeInit:
  40                     ; 46     TIM3->CR1 = (u8)TIM3_CR1_RESET_VALUE;
  42  0000 725f5320      	clr	21280
  43                     ; 47     TIM3->IER = (u8)TIM3_IER_RESET_VALUE;
  45  0004 725f5321      	clr	21281
  46                     ; 48     TIM3->SR2 = (u8)TIM3_SR2_RESET_VALUE;
  48  0008 725f5323      	clr	21283
  49                     ; 51     TIM3->CCER1 = (u8)TIM3_CCER1_RESET_VALUE;
  51  000c 725f5327      	clr	21287
  52                     ; 54     TIM3->CCER1 = (u8)TIM3_CCER1_RESET_VALUE;
  54  0010 725f5327      	clr	21287
  55                     ; 55     TIM3->CCMR1 = (u8)TIM3_CCMR1_RESET_VALUE;
  57  0014 725f5325      	clr	21285
  58                     ; 56     TIM3->CCMR2 = (u8)TIM3_CCMR2_RESET_VALUE;
  60  0018 725f5326      	clr	21286
  61                     ; 57     TIM3->CNTRH = (u8)TIM3_CNTRH_RESET_VALUE;
  63  001c 725f5328      	clr	21288
  64                     ; 58     TIM3->CNTRL = (u8)TIM3_CNTRL_RESET_VALUE;
  66  0020 725f5329      	clr	21289
  67                     ; 59     TIM3->PSCR = (u8)TIM3_PSCR_RESET_VALUE;
  69  0024 725f532a      	clr	21290
  70                     ; 60     TIM3->ARRH  = (u8)TIM3_ARRH_RESET_VALUE;
  72  0028 35ff532b      	mov	21291,#255
  73                     ; 61     TIM3->ARRL  = (u8)TIM3_ARRL_RESET_VALUE;
  75  002c 35ff532c      	mov	21292,#255
  76                     ; 62     TIM3->CCR1H = (u8)TIM3_CCR1H_RESET_VALUE;
  78  0030 725f532d      	clr	21293
  79                     ; 63     TIM3->CCR1L = (u8)TIM3_CCR1L_RESET_VALUE;
  81  0034 725f532e      	clr	21294
  82                     ; 64     TIM3->CCR2H = (u8)TIM3_CCR2H_RESET_VALUE;
  84  0038 725f532f      	clr	21295
  85                     ; 65     TIM3->CCR2L = (u8)TIM3_CCR2L_RESET_VALUE;
  87  003c 725f5330      	clr	21296
  88                     ; 66     TIM3->SR1 = (u8)TIM3_SR1_RESET_VALUE;
  90  0040 725f5322      	clr	21282
  91                     ; 67 }
  94  0044 81            	ret	
 262                     ; 76 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 262                     ; 77                         u16 TIM3_Period)
 262                     ; 78 {
 263                     .text:	section	.text,new
 264  0000               _TIM3_TimeBaseInit:
 266  0000 88            	push	a
 267       00000000      OFST:	set	0
 270                     ; 80     TIM3->PSCR = (u8)(TIM3_Prescaler);
 272  0001 c7532a        	ld	21290,a
 273                     ; 82     TIM3->ARRH = (u8)(TIM3_Period >> 8);
 275  0004 7b04          	ld	a,(OFST+4,sp)
 276  0006 c7532b        	ld	21291,a
 277                     ; 83     TIM3->ARRL = (u8)(TIM3_Period);
 279  0009 7b05          	ld	a,(OFST+5,sp)
 280  000b c7532c        	ld	21292,a
 281                     ; 84 }
 284  000e 84            	pop	a
 285  000f 81            	ret	
 442                     ; 94 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 442                     ; 95                   TIM3_OutputState_TypeDef TIM3_OutputState,
 442                     ; 96                   u16 TIM3_Pulse,
 442                     ; 97                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 442                     ; 98 {
 443                     .text:	section	.text,new
 444  0000               _TIM3_OC1Init:
 446  0000 89            	pushw	x
 447  0001 88            	push	a
 448       00000001      OFST:	set	1
 451                     ; 100     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 453                     ; 101     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 455                     ; 102     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 457                     ; 105     TIM3->CCER1 &= (u8)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 459  0002 c65327        	ld	a,21287
 460  0005 a4fc          	and	a,#252
 461  0007 c75327        	ld	21287,a
 462                     ; 107     TIM3->CCER1 |= (u8)((TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 464  000a 7b08          	ld	a,(OFST+7,sp)
 465  000c a402          	and	a,#2
 466  000e 6b01          	ld	(OFST+0,sp),a
 467  0010 9f            	ld	a,xl
 468  0011 a401          	and	a,#1
 469  0013 1a01          	or	a,(OFST+0,sp)
 470  0015 ca5327        	or	a,21287
 471  0018 c75327        	ld	21287,a
 472                     ; 110     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
 474  001b c65325        	ld	a,21285
 475  001e a48f          	and	a,#143
 476  0020 1a02          	or	a,(OFST+1,sp)
 477  0022 c75325        	ld	21285,a
 478                     ; 113     TIM3->CCR1H = (u8)(TIM3_Pulse >> 8);
 480  0025 7b06          	ld	a,(OFST+5,sp)
 481  0027 c7532d        	ld	21293,a
 482                     ; 114     TIM3->CCR1L = (u8)(TIM3_Pulse);
 484  002a 7b07          	ld	a,(OFST+6,sp)
 485  002c c7532e        	ld	21294,a
 486                     ; 115 }
 489  002f 5b03          	addw	sp,#3
 490  0031 81            	ret	
 554                     ; 126 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 554                     ; 127                   TIM3_OutputState_TypeDef TIM3_OutputState,
 554                     ; 128                   u16 TIM3_Pulse,
 554                     ; 129                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 554                     ; 130 {
 555                     .text:	section	.text,new
 556  0000               _TIM3_OC2Init:
 558  0000 89            	pushw	x
 559  0001 88            	push	a
 560       00000001      OFST:	set	1
 563                     ; 132     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 565                     ; 133     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 567                     ; 134     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 569                     ; 138     TIM3->CCER1 &= (u8)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 571  0002 c65327        	ld	a,21287
 572  0005 a4cf          	and	a,#207
 573  0007 c75327        	ld	21287,a
 574                     ; 140     TIM3->CCER1 |= (u8)((TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 576  000a 7b08          	ld	a,(OFST+7,sp)
 577  000c a420          	and	a,#32
 578  000e 6b01          	ld	(OFST+0,sp),a
 579  0010 9f            	ld	a,xl
 580  0011 a410          	and	a,#16
 581  0013 1a01          	or	a,(OFST+0,sp)
 582  0015 ca5327        	or	a,21287
 583  0018 c75327        	ld	21287,a
 584                     ; 144     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
 586  001b c65326        	ld	a,21286
 587  001e a48f          	and	a,#143
 588  0020 1a02          	or	a,(OFST+1,sp)
 589  0022 c75326        	ld	21286,a
 590                     ; 148     TIM3->CCR2H = (u8)(TIM3_Pulse >> 8);
 592  0025 7b06          	ld	a,(OFST+5,sp)
 593  0027 c7532f        	ld	21295,a
 594                     ; 149     TIM3->CCR2L = (u8)(TIM3_Pulse);
 596  002a 7b07          	ld	a,(OFST+6,sp)
 597  002c c75330        	ld	21296,a
 598                     ; 150 }
 601  002f 5b03          	addw	sp,#3
 602  0031 81            	ret	
 786                     ; 161 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 786                     ; 162                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 786                     ; 163                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 786                     ; 164                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 786                     ; 165                  u8 TIM3_ICFilter)
 786                     ; 166 {
 787                     .text:	section	.text,new
 788  0000               _TIM3_ICInit:
 790  0000 89            	pushw	x
 791       00000000      OFST:	set	0
 794                     ; 168     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 796                     ; 169     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 798                     ; 170     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 800                     ; 171     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 802                     ; 172     assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 804                     ; 174     if (TIM3_Channel != TIM3_CHANNEL_2)
 806  0001 9e            	ld	a,xh
 807  0002 4a            	dec	a
 808  0003 2714          	jreq	L343
 809                     ; 177         TI1_Config((u8)TIM3_ICPolarity,
 809                     ; 178                    (u8)TIM3_ICSelection,
 809                     ; 179                    (u8)TIM3_ICFilter);
 811  0005 7b07          	ld	a,(OFST+7,sp)
 812  0007 88            	push	a
 813  0008 7b06          	ld	a,(OFST+6,sp)
 814  000a 97            	ld	xl,a
 815  000b 7b03          	ld	a,(OFST+3,sp)
 816  000d 95            	ld	xh,a
 817  000e cd0000        	call	L3_TI1_Config
 819  0011 84            	pop	a
 820                     ; 182         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 822  0012 7b06          	ld	a,(OFST+6,sp)
 823  0014 cd0000        	call	_TIM3_SetIC1Prescaler
 826  0017 2012          	jra	L543
 827  0019               L343:
 828                     ; 187         TI2_Config((u8)TIM3_ICPolarity,
 828                     ; 188                    (u8)TIM3_ICSelection,
 828                     ; 189                    (u8)TIM3_ICFilter);
 830  0019 7b07          	ld	a,(OFST+7,sp)
 831  001b 88            	push	a
 832  001c 7b06          	ld	a,(OFST+6,sp)
 833  001e 97            	ld	xl,a
 834  001f 7b03          	ld	a,(OFST+3,sp)
 835  0021 95            	ld	xh,a
 836  0022 cd0000        	call	L5_TI2_Config
 838  0025 84            	pop	a
 839                     ; 192         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 841  0026 7b06          	ld	a,(OFST+6,sp)
 842  0028 cd0000        	call	_TIM3_SetIC2Prescaler
 844  002b               L543:
 845                     ; 194 }
 848  002b 85            	popw	x
 849  002c 81            	ret	
 945                     ; 204 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
 945                     ; 205                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 945                     ; 206                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
 945                     ; 207                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 945                     ; 208                      u8 TIM3_ICFilter)
 945                     ; 209 {
 946                     .text:	section	.text,new
 947  0000               _TIM3_PWMIConfig:
 949  0000 89            	pushw	x
 950  0001 89            	pushw	x
 951       00000002      OFST:	set	2
 954                     ; 210     u8 icpolarity = (u8)TIM3_ICPOLARITY_RISING;
 956                     ; 211     u8 icselection = (u8)TIM3_ICSELECTION_DIRECTTI;
 958                     ; 214     assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
 960                     ; 215     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 962                     ; 216     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 964                     ; 217     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 966                     ; 220     if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
 968  0002 7b04          	ld	a,(OFST+2,sp)
 969  0004 a144          	cp	a,#68
 970  0006 2706          	jreq	L514
 971                     ; 222         icpolarity = (u8)TIM3_ICPOLARITY_FALLING;
 973  0008 a644          	ld	a,#68
 974  000a 6b01          	ld	(OFST-1,sp),a
 976  000c 2002          	jra	L714
 977  000e               L514:
 978                     ; 226         icpolarity = (u8)TIM3_ICPOLARITY_RISING;
 980  000e 0f01          	clr	(OFST-1,sp)
 981  0010               L714:
 982                     ; 230     if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
 984  0010 7b07          	ld	a,(OFST+5,sp)
 985  0012 4a            	dec	a
 986  0013 2604          	jrne	L124
 987                     ; 232         icselection = (u8)TIM3_ICSELECTION_INDIRECTTI;
 989  0015 a602          	ld	a,#2
 991  0017 2002          	jra	L324
 992  0019               L124:
 993                     ; 236         icselection = (u8)TIM3_ICSELECTION_DIRECTTI;
 995  0019 a601          	ld	a,#1
 996  001b               L324:
 997  001b 6b02          	ld	(OFST+0,sp),a
 998                     ; 239     if (TIM3_Channel != TIM3_CHANNEL_2)
1000  001d 7b03          	ld	a,(OFST+1,sp)
1001  001f 4a            	dec	a
1002  0020 2726          	jreq	L524
1003                     ; 242         TI1_Config((u8)TIM3_ICPolarity, (u8)TIM3_ICSelection,
1003                     ; 243                    (u8)TIM3_ICFilter);
1005  0022 7b09          	ld	a,(OFST+7,sp)
1006  0024 88            	push	a
1007  0025 7b08          	ld	a,(OFST+6,sp)
1008  0027 97            	ld	xl,a
1009  0028 7b05          	ld	a,(OFST+3,sp)
1010  002a 95            	ld	xh,a
1011  002b cd0000        	call	L3_TI1_Config
1013  002e 84            	pop	a
1014                     ; 246         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1016  002f 7b08          	ld	a,(OFST+6,sp)
1017  0031 cd0000        	call	_TIM3_SetIC1Prescaler
1019                     ; 249         TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1021  0034 7b09          	ld	a,(OFST+7,sp)
1022  0036 88            	push	a
1023  0037 7b03          	ld	a,(OFST+1,sp)
1024  0039 97            	ld	xl,a
1025  003a 7b02          	ld	a,(OFST+0,sp)
1026  003c 95            	ld	xh,a
1027  003d cd0000        	call	L5_TI2_Config
1029  0040 84            	pop	a
1030                     ; 252         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1032  0041 7b08          	ld	a,(OFST+6,sp)
1033  0043 cd0000        	call	_TIM3_SetIC2Prescaler
1036  0046 2024          	jra	L724
1037  0048               L524:
1038                     ; 257         TI2_Config((u8)TIM3_ICPolarity, (u8)TIM3_ICSelection,
1038                     ; 258                    (u8)TIM3_ICFilter);
1040  0048 7b09          	ld	a,(OFST+7,sp)
1041  004a 88            	push	a
1042  004b 7b08          	ld	a,(OFST+6,sp)
1043  004d 97            	ld	xl,a
1044  004e 7b05          	ld	a,(OFST+3,sp)
1045  0050 95            	ld	xh,a
1046  0051 cd0000        	call	L5_TI2_Config
1048  0054 84            	pop	a
1049                     ; 261         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1051  0055 7b08          	ld	a,(OFST+6,sp)
1052  0057 cd0000        	call	_TIM3_SetIC2Prescaler
1054                     ; 264         TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1056  005a 7b09          	ld	a,(OFST+7,sp)
1057  005c 88            	push	a
1058  005d 7b03          	ld	a,(OFST+1,sp)
1059  005f 97            	ld	xl,a
1060  0060 7b02          	ld	a,(OFST+0,sp)
1061  0062 95            	ld	xh,a
1062  0063 cd0000        	call	L3_TI1_Config
1064  0066 84            	pop	a
1065                     ; 267         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1067  0067 7b08          	ld	a,(OFST+6,sp)
1068  0069 cd0000        	call	_TIM3_SetIC1Prescaler
1070  006c               L724:
1071                     ; 269 }
1074  006c 5b04          	addw	sp,#4
1075  006e 81            	ret	
1130                     ; 278 void TIM3_Cmd(FunctionalState NewState)
1130                     ; 279 {
1131                     .text:	section	.text,new
1132  0000               _TIM3_Cmd:
1136                     ; 281     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1138                     ; 284     if (NewState != DISABLE)
1140  0000 4d            	tnz	a
1141  0001 2705          	jreq	L754
1142                     ; 286         TIM3->CR1 |= (u8)TIM3_CR1_CEN;
1144  0003 72105320      	bset	21280,#0
1147  0007 81            	ret	
1148  0008               L754:
1149                     ; 290         TIM3->CR1 &= (u8)(~TIM3_CR1_CEN);
1151  0008 72115320      	bres	21280,#0
1152                     ; 292 }
1155  000c 81            	ret	
1227                     ; 307 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1227                     ; 308 {
1228                     .text:	section	.text,new
1229  0000               _TIM3_ITConfig:
1231  0000 89            	pushw	x
1232       00000000      OFST:	set	0
1235                     ; 310     assert_param(IS_TIM3_IT_OK(TIM3_IT));
1237                     ; 311     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1239                     ; 313     if (NewState != DISABLE)
1241  0001 9f            	ld	a,xl
1242  0002 4d            	tnz	a
1243  0003 2706          	jreq	L715
1244                     ; 316         TIM3->IER |= (u8)TIM3_IT;
1246  0005 9e            	ld	a,xh
1247  0006 ca5321        	or	a,21281
1249  0009 2006          	jra	L125
1250  000b               L715:
1251                     ; 321         TIM3->IER &= (u8)(~TIM3_IT);
1253  000b 7b01          	ld	a,(OFST+1,sp)
1254  000d 43            	cpl	a
1255  000e c45321        	and	a,21281
1256  0011               L125:
1257  0011 c75321        	ld	21281,a
1258                     ; 323 }
1261  0014 85            	popw	x
1262  0015 81            	ret	
1298                     ; 332 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1298                     ; 333 {
1299                     .text:	section	.text,new
1300  0000               _TIM3_UpdateDisableConfig:
1304                     ; 335     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1306                     ; 338     if (NewState != DISABLE)
1308  0000 4d            	tnz	a
1309  0001 2705          	jreq	L145
1310                     ; 340         TIM3->CR1 |= TIM3_CR1_UDIS;
1312  0003 72125320      	bset	21280,#1
1315  0007 81            	ret	
1316  0008               L145:
1317                     ; 344         TIM3->CR1 &= (u8)(~TIM3_CR1_UDIS);
1319  0008 72135320      	bres	21280,#1
1320                     ; 346 }
1323  000c 81            	ret	
1381                     ; 356 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1381                     ; 357 {
1382                     .text:	section	.text,new
1383  0000               _TIM3_UpdateRequestConfig:
1387                     ; 359     assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1389                     ; 362     if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1391  0000 4d            	tnz	a
1392  0001 2705          	jreq	L375
1393                     ; 364         TIM3->CR1 |= TIM3_CR1_URS;
1395  0003 72145320      	bset	21280,#2
1398  0007 81            	ret	
1399  0008               L375:
1400                     ; 368         TIM3->CR1 &= (u8)(~TIM3_CR1_URS);
1402  0008 72155320      	bres	21280,#2
1403                     ; 370 }
1406  000c 81            	ret	
1463                     ; 381 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1463                     ; 382 {
1464                     .text:	section	.text,new
1465  0000               _TIM3_SelectOnePulseMode:
1469                     ; 384     assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1471                     ; 387     if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1473  0000 4d            	tnz	a
1474  0001 2705          	jreq	L526
1475                     ; 389         TIM3->CR1 |= TIM3_CR1_OPM;
1477  0003 72165320      	bset	21280,#3
1480  0007 81            	ret	
1481  0008               L526:
1482                     ; 393         TIM3->CR1 &= (u8)(~TIM3_CR1_OPM);
1484  0008 72175320      	bres	21280,#3
1485                     ; 396 }
1488  000c 81            	ret	
1556                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1556                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1556                     ; 429 {
1557                     .text:	section	.text,new
1558  0000               _TIM3_PrescalerConfig:
1562                     ; 431     assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1564                     ; 432     assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1566                     ; 435     TIM3->PSCR = (u8)Prescaler;
1568  0000 9e            	ld	a,xh
1569  0001 c7532a        	ld	21290,a
1570                     ; 438     TIM3->EGR = (u8)TIM3_PSCReloadMode;
1572  0004 9f            	ld	a,xl
1573  0005 c75324        	ld	21284,a
1574                     ; 439 }
1577  0008 81            	ret	
1635                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1635                     ; 451 {
1636                     .text:	section	.text,new
1637  0000               _TIM3_ForcedOC1Config:
1639  0000 88            	push	a
1640       00000000      OFST:	set	0
1643                     ; 453     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1645                     ; 456     TIM3->CCMR1 =  (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM))  | (u8)TIM3_ForcedAction);
1647  0001 c65325        	ld	a,21285
1648  0004 a48f          	and	a,#143
1649  0006 1a01          	or	a,(OFST+1,sp)
1650  0008 c75325        	ld	21285,a
1651                     ; 457 }
1654  000b 84            	pop	a
1655  000c 81            	ret	
1691                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1691                     ; 469 {
1692                     .text:	section	.text,new
1693  0000               _TIM3_ForcedOC2Config:
1695  0000 88            	push	a
1696       00000000      OFST:	set	0
1699                     ; 471     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1701                     ; 474     TIM3->CCMR2 =  (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_ForcedAction);
1703  0001 c65326        	ld	a,21286
1704  0004 a48f          	and	a,#143
1705  0006 1a01          	or	a,(OFST+1,sp)
1706  0008 c75326        	ld	21286,a
1707                     ; 475 }
1710  000b 84            	pop	a
1711  000c 81            	ret	
1747                     ; 484 void TIM3_ARRPreloadConfig(FunctionalState NewState)
1747                     ; 485 {
1748                     .text:	section	.text,new
1749  0000               _TIM3_ARRPreloadConfig:
1753                     ; 487     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1755                     ; 490     if (NewState != DISABLE)
1757  0000 4d            	tnz	a
1758  0001 2705          	jreq	L547
1759                     ; 492         TIM3->CR1 |= TIM3_CR1_ARPE;
1761  0003 721e5320      	bset	21280,#7
1764  0007 81            	ret	
1765  0008               L547:
1766                     ; 496         TIM3->CR1 &= (u8)(~TIM3_CR1_ARPE);
1768  0008 721f5320      	bres	21280,#7
1769                     ; 498 }
1772  000c 81            	ret	
1808                     ; 507 void TIM3_OC1PreloadConfig(FunctionalState NewState)
1808                     ; 508 {
1809                     .text:	section	.text,new
1810  0000               _TIM3_OC1PreloadConfig:
1814                     ; 510     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1816                     ; 513     if (NewState != DISABLE)
1818  0000 4d            	tnz	a
1819  0001 2705          	jreq	L767
1820                     ; 515         TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
1822  0003 72165325      	bset	21285,#3
1825  0007 81            	ret	
1826  0008               L767:
1827                     ; 519         TIM3->CCMR1 &= (u8)(~TIM3_CCMR_OCxPE);
1829  0008 72175325      	bres	21285,#3
1830                     ; 521 }
1833  000c 81            	ret	
1869                     ; 530 void TIM3_OC2PreloadConfig(FunctionalState NewState)
1869                     ; 531 {
1870                     .text:	section	.text,new
1871  0000               _TIM3_OC2PreloadConfig:
1875                     ; 533     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1877                     ; 536     if (NewState != DISABLE)
1879  0000 4d            	tnz	a
1880  0001 2705          	jreq	L1101
1881                     ; 538         TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
1883  0003 72165326      	bset	21286,#3
1886  0007 81            	ret	
1887  0008               L1101:
1888                     ; 542         TIM3->CCMR2 &= (u8)(~TIM3_CCMR_OCxPE);
1890  0008 72175326      	bres	21286,#3
1891                     ; 544 }
1894  000c 81            	ret	
1959                     ; 555 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
1959                     ; 556 {
1960                     .text:	section	.text,new
1961  0000               _TIM3_GenerateEvent:
1965                     ; 558     assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
1967                     ; 561     TIM3->EGR = (u8)TIM3_EventSource;
1969  0000 c75324        	ld	21284,a
1970                     ; 562 }
1973  0003 81            	ret	
2009                     ; 573 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2009                     ; 574 {
2010                     .text:	section	.text,new
2011  0000               _TIM3_OC1PolarityConfig:
2015                     ; 576     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2017                     ; 579     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2019  0000 4d            	tnz	a
2020  0001 2705          	jreq	L3601
2021                     ; 581         TIM3->CCER1 |= TIM3_CCER1_CC1P;
2023  0003 72125327      	bset	21287,#1
2026  0007 81            	ret	
2027  0008               L3601:
2028                     ; 585         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1P);
2030  0008 72135327      	bres	21287,#1
2031                     ; 587 }
2034  000c 81            	ret	
2070                     ; 598 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2070                     ; 599 {
2071                     .text:	section	.text,new
2072  0000               _TIM3_OC2PolarityConfig:
2076                     ; 601     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2078                     ; 604     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2080  0000 4d            	tnz	a
2081  0001 2705          	jreq	L5011
2082                     ; 606         TIM3->CCER1 |= TIM3_CCER1_CC2P;
2084  0003 721a5327      	bset	21287,#5
2087  0007 81            	ret	
2088  0008               L5011:
2089                     ; 610         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2P);
2091  0008 721b5327      	bres	21287,#5
2092                     ; 612 }
2095  000c 81            	ret	
2140                     ; 625 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2140                     ; 626 {
2141                     .text:	section	.text,new
2142  0000               _TIM3_CCxCmd:
2144  0000 89            	pushw	x
2145       00000000      OFST:	set	0
2148                     ; 628     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2150                     ; 629     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2152                     ; 631     if (TIM3_Channel == TIM3_CHANNEL_1)
2154  0001 9e            	ld	a,xh
2155  0002 4d            	tnz	a
2156  0003 2610          	jrne	L3311
2157                     ; 634         if (NewState != DISABLE)
2159  0005 9f            	ld	a,xl
2160  0006 4d            	tnz	a
2161  0007 2706          	jreq	L5311
2162                     ; 636             TIM3->CCER1 |= TIM3_CCER1_CC1E;
2164  0009 72105327      	bset	21287,#0
2166  000d 2014          	jra	L1411
2167  000f               L5311:
2168                     ; 640             TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
2170  000f 72115327      	bres	21287,#0
2171  0013 200e          	jra	L1411
2172  0015               L3311:
2173                     ; 647         if (NewState != DISABLE)
2175  0015 7b02          	ld	a,(OFST+2,sp)
2176  0017 2706          	jreq	L3411
2177                     ; 649             TIM3->CCER1 |= TIM3_CCER1_CC2E;
2179  0019 72185327      	bset	21287,#4
2181  001d 2004          	jra	L1411
2182  001f               L3411:
2183                     ; 653             TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2E);
2185  001f 72195327      	bres	21287,#4
2186  0023               L1411:
2187                     ; 657 }
2190  0023 85            	popw	x
2191  0024 81            	ret	
2236                     ; 678 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2236                     ; 679 {
2237                     .text:	section	.text,new
2238  0000               _TIM3_SelectOCxM:
2240  0000 89            	pushw	x
2241       00000000      OFST:	set	0
2244                     ; 681     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2246                     ; 682     assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2248                     ; 684     if (TIM3_Channel == TIM3_CHANNEL_1)
2250  0001 9e            	ld	a,xh
2251  0002 4d            	tnz	a
2252  0003 2610          	jrne	L1711
2253                     ; 687         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
2255  0005 72115327      	bres	21287,#0
2256                     ; 690         TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
2258  0009 c65325        	ld	a,21285
2259  000c a48f          	and	a,#143
2260  000e 1a02          	or	a,(OFST+2,sp)
2261  0010 c75325        	ld	21285,a
2263  0013 200e          	jra	L3711
2264  0015               L1711:
2265                     ; 695         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2E);
2267  0015 72195327      	bres	21287,#4
2268                     ; 698         TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
2270  0019 c65326        	ld	a,21286
2271  001c a48f          	and	a,#143
2272  001e 1a02          	or	a,(OFST+2,sp)
2273  0020 c75326        	ld	21286,a
2274  0023               L3711:
2275                     ; 700 }
2278  0023 85            	popw	x
2279  0024 81            	ret	
2313                     ; 709 void TIM3_SetCounter(u16 Counter)
2313                     ; 710 {
2314                     .text:	section	.text,new
2315  0000               _TIM3_SetCounter:
2319                     ; 712     TIM3->CNTRH = (u8)(Counter >> 8);
2321  0000 9e            	ld	a,xh
2322  0001 c75328        	ld	21288,a
2323                     ; 713     TIM3->CNTRL = (u8)(Counter);
2325  0004 9f            	ld	a,xl
2326  0005 c75329        	ld	21289,a
2327                     ; 715 }
2330  0008 81            	ret	
2364                     ; 724 void TIM3_SetAutoreload(u16 Autoreload)
2364                     ; 725 {
2365                     .text:	section	.text,new
2366  0000               _TIM3_SetAutoreload:
2370                     ; 727     TIM3->ARRH = (u8)(Autoreload >> 8);
2372  0000 9e            	ld	a,xh
2373  0001 c7532b        	ld	21291,a
2374                     ; 728     TIM3->ARRL = (u8)(Autoreload);
2376  0004 9f            	ld	a,xl
2377  0005 c7532c        	ld	21292,a
2378                     ; 729 }
2381  0008 81            	ret	
2415                     ; 738 void TIM3_SetCompare1(u16 Compare1)
2415                     ; 739 {
2416                     .text:	section	.text,new
2417  0000               _TIM3_SetCompare1:
2421                     ; 741     TIM3->CCR1H = (u8)(Compare1 >> 8);
2423  0000 9e            	ld	a,xh
2424  0001 c7532d        	ld	21293,a
2425                     ; 742     TIM3->CCR1L = (u8)(Compare1);
2427  0004 9f            	ld	a,xl
2428  0005 c7532e        	ld	21294,a
2429                     ; 743 }
2432  0008 81            	ret	
2466                     ; 752 void TIM3_SetCompare2(u16 Compare2)
2466                     ; 753 {
2467                     .text:	section	.text,new
2468  0000               _TIM3_SetCompare2:
2472                     ; 755     TIM3->CCR2H = (u8)(Compare2 >> 8);
2474  0000 9e            	ld	a,xh
2475  0001 c7532f        	ld	21295,a
2476                     ; 756     TIM3->CCR2L = (u8)(Compare2);
2478  0004 9f            	ld	a,xl
2479  0005 c75330        	ld	21296,a
2480                     ; 757 }
2483  0008 81            	ret	
2519                     ; 770 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
2519                     ; 771 {
2520                     .text:	section	.text,new
2521  0000               _TIM3_SetIC1Prescaler:
2523  0000 88            	push	a
2524       00000000      OFST:	set	0
2527                     ; 773     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
2529                     ; 776     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_ICxPSC)) | (u8)TIM3_IC1Prescaler);
2531  0001 c65325        	ld	a,21285
2532  0004 a4f3          	and	a,#243
2533  0006 1a01          	or	a,(OFST+1,sp)
2534  0008 c75325        	ld	21285,a
2535                     ; 777 }
2538  000b 84            	pop	a
2539  000c 81            	ret	
2575                     ; 789 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
2575                     ; 790 {
2576                     .text:	section	.text,new
2577  0000               _TIM3_SetIC2Prescaler:
2579  0000 88            	push	a
2580       00000000      OFST:	set	0
2583                     ; 792     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
2585                     ; 795     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_ICxPSC)) | (u8)TIM3_IC2Prescaler);
2587  0001 c65326        	ld	a,21286
2588  0004 a4f3          	and	a,#243
2589  0006 1a01          	or	a,(OFST+1,sp)
2590  0008 c75326        	ld	21286,a
2591                     ; 796 }
2594  000b 84            	pop	a
2595  000c 81            	ret	
2647                     ; 803 u16 TIM3_GetCapture1(void)
2647                     ; 804 {
2648                     .text:	section	.text,new
2649  0000               _TIM3_GetCapture1:
2651  0000 5204          	subw	sp,#4
2652       00000004      OFST:	set	4
2655                     ; 806     u16 tmpccr1 = 0;
2657                     ; 807     u8 tmpccr1l=0, tmpccr1h=0;
2661                     ; 809     tmpccr1h = TIM3->CCR1H;
2663  0002 c6532d        	ld	a,21293
2664  0005 6b02          	ld	(OFST-2,sp),a
2665                     ; 810     tmpccr1l = TIM3->CCR1L;
2667  0007 c6532e        	ld	a,21294
2668  000a 6b01          	ld	(OFST-3,sp),a
2669                     ; 812     tmpccr1 = (u16)(tmpccr1l);
2671  000c 5f            	clrw	x
2672  000d 97            	ld	xl,a
2673  000e 1f03          	ldw	(OFST-1,sp),x
2674                     ; 813     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
2676  0010 7b02          	ld	a,(OFST-2,sp)
2677  0012 97            	ld	xl,a
2678  0013 7b04          	ld	a,(OFST+0,sp)
2679  0015 01            	rrwa	x,a
2680  0016 1a03          	or	a,(OFST-1,sp)
2681  0018 01            	rrwa	x,a
2682                     ; 815     return (u16)tmpccr1;
2686  0019 5b04          	addw	sp,#4
2687  001b 81            	ret	
2739                     ; 824 u16 TIM3_GetCapture2(void)
2739                     ; 825 {
2740                     .text:	section	.text,new
2741  0000               _TIM3_GetCapture2:
2743  0000 5204          	subw	sp,#4
2744       00000004      OFST:	set	4
2747                     ; 827     u16 tmpccr2 = 0;
2749                     ; 828     u8 tmpccr2l=0, tmpccr2h=0;
2753                     ; 830     tmpccr2h = TIM3->CCR2H;
2755  0002 c6532f        	ld	a,21295
2756  0005 6b02          	ld	(OFST-2,sp),a
2757                     ; 831     tmpccr2l = TIM3->CCR2L;
2759  0007 c65330        	ld	a,21296
2760  000a 6b01          	ld	(OFST-3,sp),a
2761                     ; 833     tmpccr2 = (u16)(tmpccr2l);
2763  000c 5f            	clrw	x
2764  000d 97            	ld	xl,a
2765  000e 1f03          	ldw	(OFST-1,sp),x
2766                     ; 834     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
2768  0010 7b02          	ld	a,(OFST-2,sp)
2769  0012 97            	ld	xl,a
2770  0013 7b04          	ld	a,(OFST+0,sp)
2771  0015 01            	rrwa	x,a
2772  0016 1a03          	or	a,(OFST-1,sp)
2773  0018 01            	rrwa	x,a
2774                     ; 836     return (u16)tmpccr2;
2778  0019 5b04          	addw	sp,#4
2779  001b 81            	ret	
2802                     ; 845 u16 TIM3_GetCounter(void)
2802                     ; 846 {
2803                     .text:	section	.text,new
2804  0000               _TIM3_GetCounter:
2806  0000 89            	pushw	x
2807       00000002      OFST:	set	2
2810                     ; 848     return (u16)(((u16)TIM3->CNTRH << 8) | (u16)(TIM3->CNTRL));
2812  0001 c65329        	ld	a,21289
2813  0004 5f            	clrw	x
2814  0005 97            	ld	xl,a
2815  0006 1f01          	ldw	(OFST-1,sp),x
2816  0008 c65328        	ld	a,21288
2817  000b 97            	ld	xl,a
2818  000c 7b02          	ld	a,(OFST+0,sp)
2819  000e 01            	rrwa	x,a
2820  000f 1a01          	or	a,(OFST-1,sp)
2821  0011 01            	rrwa	x,a
2824  0012 5b02          	addw	sp,#2
2825  0014 81            	ret	
2849                     ; 858 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
2849                     ; 859 {
2850                     .text:	section	.text,new
2851  0000               _TIM3_GetPrescaler:
2855                     ; 861     return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
2857  0000 c6532a        	ld	a,21290
2860  0003 81            	ret	
2985                     ; 876 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
2985                     ; 877 {
2986                     .text:	section	.text,new
2987  0000               _TIM3_GetFlagStatus:
2989  0000 5204          	subw	sp,#4
2990       00000004      OFST:	set	4
2993                     ; 878     volatile FlagStatus bitstatus = RESET;
2995  0002 0f04          	clr	(OFST+0,sp)
2996                     ; 882     assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
2998                     ; 884     tim3_flag_l = (u8)(TIM3_FLAG);
3000  0004 9f            	ld	a,xl
3001  0005 6b02          	ld	(OFST-2,sp),a
3002                     ; 885     tim3_flag_h = (u8)(TIM3_FLAG >> 8);
3004  0007 9e            	ld	a,xh
3005  0008 6b03          	ld	(OFST-1,sp),a
3006                     ; 887     if (((TIM3->SR1 & tim3_flag_l) | (TIM3->SR2 & tim3_flag_h)) != (u8)RESET )
3008  000a c65323        	ld	a,21283
3009  000d 1403          	and	a,(OFST-1,sp)
3010  000f 6b01          	ld	(OFST-3,sp),a
3011  0011 c65322        	ld	a,21282
3012  0014 1402          	and	a,(OFST-2,sp)
3013  0016 1a01          	or	a,(OFST-3,sp)
3014  0018 2706          	jreq	L5741
3015                     ; 889         bitstatus = SET;
3017  001a a601          	ld	a,#1
3018  001c 6b04          	ld	(OFST+0,sp),a
3020  001e 2002          	jra	L7741
3021  0020               L5741:
3022                     ; 893         bitstatus = RESET;
3024  0020 6b04          	ld	(OFST+0,sp),a
3025  0022               L7741:
3026                     ; 895     return (FlagStatus)bitstatus;
3028  0022 7b04          	ld	a,(OFST+0,sp)
3031  0024 5b04          	addw	sp,#4
3032  0026 81            	ret	
3067                     ; 910 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3067                     ; 911 {
3068                     .text:	section	.text,new
3069  0000               _TIM3_ClearFlag:
3071  0000 89            	pushw	x
3072       00000000      OFST:	set	0
3075                     ; 913     assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3077                     ; 916     TIM3->SR1 = (u8)(~((u8)(TIM3_FLAG)));
3079  0001 9f            	ld	a,xl
3080  0002 43            	cpl	a
3081  0003 c75322        	ld	21282,a
3082                     ; 917     TIM3->SR2 = (u8)(~((u8)(TIM3_FLAG >> 8)));
3084  0006 7b01          	ld	a,(OFST+1,sp)
3085  0008 43            	cpl	a
3086  0009 c75323        	ld	21283,a
3087                     ; 918 }
3090  000c 85            	popw	x
3091  000d 81            	ret	
3155                     ; 931 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3155                     ; 932 {
3156                     .text:	section	.text,new
3157  0000               _TIM3_GetITStatus:
3159  0000 88            	push	a
3160  0001 5203          	subw	sp,#3
3161       00000003      OFST:	set	3
3164                     ; 933     volatile ITStatus bitstatus = RESET;
3166  0003 0f03          	clr	(OFST+0,sp)
3167                     ; 934     vu8 TIM3_itStatus = 0, TIM3_itEnable = 0;
3169  0005 0f01          	clr	(OFST-2,sp)
3172  0007 0f02          	clr	(OFST-1,sp)
3173                     ; 937     assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3175                     ; 939     TIM3_itStatus = (u8)(TIM3->SR1 & TIM3_IT);
3177  0009 c45322        	and	a,21282
3178  000c 6b01          	ld	(OFST-2,sp),a
3179                     ; 941     TIM3_itEnable = (u8)(TIM3->IER & TIM3_IT);
3181  000e c65321        	ld	a,21281
3182  0011 1404          	and	a,(OFST+1,sp)
3183  0013 6b02          	ld	(OFST-1,sp),a
3184                     ; 943     if ((TIM3_itStatus != (u8)RESET ) && (TIM3_itEnable != (u8)RESET ))
3186  0015 0d01          	tnz	(OFST-2,sp)
3187  0017 270a          	jreq	L1551
3189  0019 0d02          	tnz	(OFST-1,sp)
3190  001b 2706          	jreq	L1551
3191                     ; 945         bitstatus = SET;
3193  001d a601          	ld	a,#1
3194  001f 6b03          	ld	(OFST+0,sp),a
3196  0021 2002          	jra	L3551
3197  0023               L1551:
3198                     ; 949         bitstatus = RESET;
3200  0023 0f03          	clr	(OFST+0,sp)
3201  0025               L3551:
3202                     ; 951     return (ITStatus)(bitstatus);
3204  0025 7b03          	ld	a,(OFST+0,sp)
3207  0027 5b04          	addw	sp,#4
3208  0029 81            	ret	
3244                     ; 964 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3244                     ; 965 {
3245                     .text:	section	.text,new
3246  0000               _TIM3_ClearITPendingBit:
3250                     ; 967     assert_param(IS_TIM3_IT_OK(TIM3_IT));
3252                     ; 970     TIM3->SR1 = (u8)(~TIM3_IT);
3254  0000 43            	cpl	a
3255  0001 c75322        	ld	21282,a
3256                     ; 971 }
3259  0004 81            	ret	
3311                     ; 990 static void TI1_Config(u8 TIM3_ICPolarity,
3311                     ; 991                        u8 TIM3_ICSelection,
3311                     ; 992                        u8 TIM3_ICFilter)
3311                     ; 993 {
3312                     .text:	section	.text,new
3313  0000               L3_TI1_Config:
3315  0000 89            	pushw	x
3316  0001 88            	push	a
3317       00000001      OFST:	set	1
3320                     ; 995     TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
3322  0002 72115327      	bres	21287,#0
3323                     ; 998     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~( TIM3_CCMR_CCxS     |        TIM3_CCMR_ICxF    ))) | (u8)(( (TIM3_ICSelection)) | ((u8)( TIM3_ICFilter << 4))));
3325  0006 7b06          	ld	a,(OFST+5,sp)
3326  0008 97            	ld	xl,a
3327  0009 a610          	ld	a,#16
3328  000b 42            	mul	x,a
3329  000c 9f            	ld	a,xl
3330  000d 1a03          	or	a,(OFST+2,sp)
3331  000f 6b01          	ld	(OFST+0,sp),a
3332  0011 c65325        	ld	a,21285
3333  0014 a40c          	and	a,#12
3334  0016 1a01          	or	a,(OFST+0,sp)
3335  0018 c75325        	ld	21285,a
3336                     ; 1001     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3338  001b 7b02          	ld	a,(OFST+1,sp)
3339  001d 2706          	jreq	L1261
3340                     ; 1003         TIM3->CCER1 |= TIM3_CCER1_CC1P;
3342  001f 72125327      	bset	21287,#1
3344  0023 2004          	jra	L3261
3345  0025               L1261:
3346                     ; 1007         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1P);
3348  0025 72135327      	bres	21287,#1
3349  0029               L3261:
3350                     ; 1010     TIM3->CCER1 |= TIM3_CCER1_CC1E;
3352  0029 72105327      	bset	21287,#0
3353                     ; 1011 }
3356  002d 5b03          	addw	sp,#3
3357  002f 81            	ret	
3409                     ; 1030 static void TI2_Config(u8 TIM3_ICPolarity,
3409                     ; 1031                        u8 TIM3_ICSelection,
3409                     ; 1032                        u8 TIM3_ICFilter)
3409                     ; 1033 {
3410                     .text:	section	.text,new
3411  0000               L5_TI2_Config:
3413  0000 89            	pushw	x
3414  0001 88            	push	a
3415       00000001      OFST:	set	1
3418                     ; 1035     TIM3->CCER1 &=  (u8)(~TIM3_CCER1_CC2E);
3420  0002 72195327      	bres	21287,#4
3421                     ; 1038     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~( TIM3_CCMR_CCxS     |        TIM3_CCMR_ICxF    ))) | (u8)(( (TIM3_ICSelection)) | ((u8)( TIM3_ICFilter << 4))));
3423  0006 7b06          	ld	a,(OFST+5,sp)
3424  0008 97            	ld	xl,a
3425  0009 a610          	ld	a,#16
3426  000b 42            	mul	x,a
3427  000c 9f            	ld	a,xl
3428  000d 1a03          	or	a,(OFST+2,sp)
3429  000f 6b01          	ld	(OFST+0,sp),a
3430  0011 c65326        	ld	a,21286
3431  0014 a40c          	and	a,#12
3432  0016 1a01          	or	a,(OFST+0,sp)
3433  0018 c75326        	ld	21286,a
3434                     ; 1042     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3436  001b 7b02          	ld	a,(OFST+1,sp)
3437  001d 2706          	jreq	L3561
3438                     ; 1044         TIM3->CCER1 |= TIM3_CCER1_CC2P;
3440  001f 721a5327      	bset	21287,#5
3442  0023 2004          	jra	L5561
3443  0025               L3561:
3444                     ; 1048         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2P);
3446  0025 721b5327      	bres	21287,#5
3447  0029               L5561:
3448                     ; 1052     TIM3->CCER1 |= TIM3_CCER1_CC2E;
3450  0029 72185327      	bset	21287,#4
3451                     ; 1054 }
3454  002d 5b03          	addw	sp,#3
3455  002f 81            	ret	
3468                     	xdef	_TIM3_ClearITPendingBit
3469                     	xdef	_TIM3_GetITStatus
3470                     	xdef	_TIM3_ClearFlag
3471                     	xdef	_TIM3_GetFlagStatus
3472                     	xdef	_TIM3_GetPrescaler
3473                     	xdef	_TIM3_GetCounter
3474                     	xdef	_TIM3_GetCapture2
3475                     	xdef	_TIM3_GetCapture1
3476                     	xdef	_TIM3_SetIC2Prescaler
3477                     	xdef	_TIM3_SetIC1Prescaler
3478                     	xdef	_TIM3_SetCompare2
3479                     	xdef	_TIM3_SetCompare1
3480                     	xdef	_TIM3_SetAutoreload
3481                     	xdef	_TIM3_SetCounter
3482                     	xdef	_TIM3_SelectOCxM
3483                     	xdef	_TIM3_CCxCmd
3484                     	xdef	_TIM3_OC2PolarityConfig
3485                     	xdef	_TIM3_OC1PolarityConfig
3486                     	xdef	_TIM3_GenerateEvent
3487                     	xdef	_TIM3_OC2PreloadConfig
3488                     	xdef	_TIM3_OC1PreloadConfig
3489                     	xdef	_TIM3_ARRPreloadConfig
3490                     	xdef	_TIM3_ForcedOC2Config
3491                     	xdef	_TIM3_ForcedOC1Config
3492                     	xdef	_TIM3_PrescalerConfig
3493                     	xdef	_TIM3_SelectOnePulseMode
3494                     	xdef	_TIM3_UpdateRequestConfig
3495                     	xdef	_TIM3_UpdateDisableConfig
3496                     	xdef	_TIM3_ITConfig
3497                     	xdef	_TIM3_Cmd
3498                     	xdef	_TIM3_PWMIConfig
3499                     	xdef	_TIM3_ICInit
3500                     	xdef	_TIM3_OC2Init
3501                     	xdef	_TIM3_OC1Init
3502                     	xdef	_TIM3_TimeBaseInit
3503                     	xdef	_TIM3_DeInit
3522                     	end
