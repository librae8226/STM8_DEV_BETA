   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 44 void TIM2_DeInit(void)
  33                     ; 45 {
  35                     .text:	section	.text,new
  36  0000               _TIM2_DeInit:
  40                     ; 47     TIM2->CR1 = (u8)TIM2_CR1_RESET_VALUE;
  42  0000 725f5300      	clr	21248
  43                     ; 48     TIM2->IER = (u8)TIM2_IER_RESET_VALUE;
  45  0004 725f5301      	clr	21249
  46                     ; 49     TIM2->SR2 = (u8)TIM2_SR2_RESET_VALUE;
  48  0008 725f5303      	clr	21251
  49                     ; 52     TIM2->CCER1 = (u8)TIM2_CCER1_RESET_VALUE;
  51  000c 725f5308      	clr	21256
  52                     ; 53     TIM2->CCER2 = (u8)TIM2_CCER2_RESET_VALUE;
  54  0010 725f5309      	clr	21257
  55                     ; 57     TIM2->CCER1 = (u8)TIM2_CCER1_RESET_VALUE;
  57  0014 725f5308      	clr	21256
  58                     ; 58     TIM2->CCER2 = (u8)TIM2_CCER2_RESET_VALUE;
  60  0018 725f5309      	clr	21257
  61                     ; 59     TIM2->CCMR1 = (u8)TIM2_CCMR1_RESET_VALUE;
  63  001c 725f5305      	clr	21253
  64                     ; 60     TIM2->CCMR2 = (u8)TIM2_CCMR2_RESET_VALUE;
  66  0020 725f5306      	clr	21254
  67                     ; 61     TIM2->CCMR3 = (u8)TIM2_CCMR3_RESET_VALUE;
  69  0024 725f5307      	clr	21255
  70                     ; 62     TIM2->CNTRH = (u8)TIM2_CNTRH_RESET_VALUE;
  72  0028 725f530a      	clr	21258
  73                     ; 63     TIM2->CNTRL = (u8)TIM2_CNTRL_RESET_VALUE;
  75  002c 725f530b      	clr	21259
  76                     ; 64     TIM2->PSCR = (u8)TIM2_PSCR_RESET_VALUE;
  78  0030 725f530c      	clr	21260
  79                     ; 65     TIM2->ARRH  = (u8)TIM2_ARRH_RESET_VALUE;
  81  0034 35ff530d      	mov	21261,#255
  82                     ; 66     TIM2->ARRL  = (u8)TIM2_ARRL_RESET_VALUE;
  84  0038 35ff530e      	mov	21262,#255
  85                     ; 67     TIM2->CCR1H = (u8)TIM2_CCR1H_RESET_VALUE;
  87  003c 725f530f      	clr	21263
  88                     ; 68     TIM2->CCR1L = (u8)TIM2_CCR1L_RESET_VALUE;
  90  0040 725f5310      	clr	21264
  91                     ; 69     TIM2->CCR2H = (u8)TIM2_CCR2H_RESET_VALUE;
  93  0044 725f5311      	clr	21265
  94                     ; 70     TIM2->CCR2L = (u8)TIM2_CCR2L_RESET_VALUE;
  96  0048 725f5312      	clr	21266
  97                     ; 71     TIM2->CCR3H = (u8)TIM2_CCR3H_RESET_VALUE;
  99  004c 725f5313      	clr	21267
 100                     ; 72     TIM2->CCR3L = (u8)TIM2_CCR3L_RESET_VALUE;
 102  0050 725f5314      	clr	21268
 103                     ; 73     TIM2->SR1 = (u8)TIM2_SR1_RESET_VALUE;
 105  0054 725f5302      	clr	21250
 106                     ; 74 }
 109  0058 81            	ret	
 277                     ; 83 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 277                     ; 84                         u16 TIM2_Period)
 277                     ; 85 {
 278                     .text:	section	.text,new
 279  0000               _TIM2_TimeBaseInit:
 281  0000 88            	push	a
 282       00000000      OFST:	set	0
 285                     ; 87     TIM2->PSCR = (u8)(TIM2_Prescaler);
 287  0001 c7530c        	ld	21260,a
 288                     ; 89     TIM2->ARRH = (u8)(TIM2_Period >> 8);
 290  0004 7b04          	ld	a,(OFST+4,sp)
 291  0006 c7530d        	ld	21261,a
 292                     ; 90     TIM2->ARRL = (u8)(TIM2_Period);
 294  0009 7b05          	ld	a,(OFST+5,sp)
 295  000b c7530e        	ld	21262,a
 296                     ; 91 }
 299  000e 84            	pop	a
 300  000f 81            	ret	
 457                     ; 102 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 457                     ; 103                   TIM2_OutputState_TypeDef TIM2_OutputState,
 457                     ; 104                   u16 TIM2_Pulse,
 457                     ; 105                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 457                     ; 106 {
 458                     .text:	section	.text,new
 459  0000               _TIM2_OC1Init:
 461  0000 89            	pushw	x
 462  0001 88            	push	a
 463       00000001      OFST:	set	1
 466                     ; 108     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 468                     ; 109     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 470                     ; 110     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 472                     ; 113     TIM2->CCER1 &= (u8)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 474  0002 c65308        	ld	a,21256
 475  0005 a4fc          	and	a,#252
 476  0007 c75308        	ld	21256,a
 477                     ; 115     TIM2->CCER1 |= (u8)((TIM2_OutputState  & TIM2_CCER1_CC1E   ) | (TIM2_OCPolarity   & TIM2_CCER1_CC1P   ));
 479  000a 7b08          	ld	a,(OFST+7,sp)
 480  000c a402          	and	a,#2
 481  000e 6b01          	ld	(OFST+0,sp),a
 482  0010 9f            	ld	a,xl
 483  0011 a401          	and	a,#1
 484  0013 1a01          	or	a,(OFST+0,sp)
 485  0015 ca5308        	or	a,21256
 486  0018 c75308        	ld	21256,a
 487                     ; 118     TIM2->CCMR1 = (u8)((TIM2->CCMR1 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
 489  001b c65305        	ld	a,21253
 490  001e a48f          	and	a,#143
 491  0020 1a02          	or	a,(OFST+1,sp)
 492  0022 c75305        	ld	21253,a
 493                     ; 121     TIM2->CCR1H = (u8)(TIM2_Pulse >> 8);
 495  0025 7b06          	ld	a,(OFST+5,sp)
 496  0027 c7530f        	ld	21263,a
 497                     ; 122     TIM2->CCR1L = (u8)(TIM2_Pulse);
 499  002a 7b07          	ld	a,(OFST+6,sp)
 500  002c c75310        	ld	21264,a
 501                     ; 123 }
 504  002f 5b03          	addw	sp,#3
 505  0031 81            	ret	
 569                     ; 134 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 569                     ; 135                   TIM2_OutputState_TypeDef TIM2_OutputState,
 569                     ; 136                   u16 TIM2_Pulse,
 569                     ; 137                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 569                     ; 138 {
 570                     .text:	section	.text,new
 571  0000               _TIM2_OC2Init:
 573  0000 89            	pushw	x
 574  0001 88            	push	a
 575       00000001      OFST:	set	1
 578                     ; 140     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 580                     ; 141     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 582                     ; 142     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 584                     ; 146     TIM2->CCER1 &= (u8)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 586  0002 c65308        	ld	a,21256
 587  0005 a4cf          	and	a,#207
 588  0007 c75308        	ld	21256,a
 589                     ; 148     TIM2->CCER1 |= (u8)((TIM2_OutputState  & TIM2_CCER1_CC2E   ) | \
 589                     ; 149                         (TIM2_OCPolarity   & TIM2_CCER1_CC2P   ));
 591  000a 7b08          	ld	a,(OFST+7,sp)
 592  000c a420          	and	a,#32
 593  000e 6b01          	ld	(OFST+0,sp),a
 594  0010 9f            	ld	a,xl
 595  0011 a410          	and	a,#16
 596  0013 1a01          	or	a,(OFST+0,sp)
 597  0015 ca5308        	or	a,21256
 598  0018 c75308        	ld	21256,a
 599                     ; 153     TIM2->CCMR2 = (u8)((TIM2->CCMR2 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
 601  001b c65306        	ld	a,21254
 602  001e a48f          	and	a,#143
 603  0020 1a02          	or	a,(OFST+1,sp)
 604  0022 c75306        	ld	21254,a
 605                     ; 157     TIM2->CCR2H = (u8)(TIM2_Pulse >> 8);
 607  0025 7b06          	ld	a,(OFST+5,sp)
 608  0027 c75311        	ld	21265,a
 609                     ; 158     TIM2->CCR2L = (u8)(TIM2_Pulse);
 611  002a 7b07          	ld	a,(OFST+6,sp)
 612  002c c75312        	ld	21266,a
 613                     ; 159 }
 616  002f 5b03          	addw	sp,#3
 617  0031 81            	ret	
 681                     ; 170 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 681                     ; 171                   TIM2_OutputState_TypeDef TIM2_OutputState,
 681                     ; 172                   u16 TIM2_Pulse,
 681                     ; 173                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 681                     ; 174 {
 682                     .text:	section	.text,new
 683  0000               _TIM2_OC3Init:
 685  0000 89            	pushw	x
 686  0001 88            	push	a
 687       00000001      OFST:	set	1
 690                     ; 176     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 692                     ; 177     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 694                     ; 178     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 696                     ; 180     TIM2->CCER2 &= (u8)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 698  0002 c65309        	ld	a,21257
 699  0005 a4fc          	and	a,#252
 700  0007 c75309        	ld	21257,a
 701                     ; 182     TIM2->CCER2 |= (u8)((TIM2_OutputState  & TIM2_CCER2_CC3E   ) |  (TIM2_OCPolarity   & TIM2_CCER2_CC3P   ));
 703  000a 7b08          	ld	a,(OFST+7,sp)
 704  000c a402          	and	a,#2
 705  000e 6b01          	ld	(OFST+0,sp),a
 706  0010 9f            	ld	a,xl
 707  0011 a401          	and	a,#1
 708  0013 1a01          	or	a,(OFST+0,sp)
 709  0015 ca5309        	or	a,21257
 710  0018 c75309        	ld	21257,a
 711                     ; 185     TIM2->CCMR3 = (u8)((TIM2->CCMR3 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
 713  001b c65307        	ld	a,21255
 714  001e a48f          	and	a,#143
 715  0020 1a02          	or	a,(OFST+1,sp)
 716  0022 c75307        	ld	21255,a
 717                     ; 188     TIM2->CCR3H = (u8)(TIM2_Pulse >> 8);
 719  0025 7b06          	ld	a,(OFST+5,sp)
 720  0027 c75313        	ld	21267,a
 721                     ; 189     TIM2->CCR3L = (u8)(TIM2_Pulse);
 723  002a 7b07          	ld	a,(OFST+6,sp)
 724  002c c75314        	ld	21268,a
 725                     ; 191 }
 728  002f 5b03          	addw	sp,#3
 729  0031 81            	ret	
 922                     ; 203 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 922                     ; 204                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 922                     ; 205                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 922                     ; 206                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 922                     ; 207                  u8 TIM2_ICFilter)
 922                     ; 208 {
 923                     .text:	section	.text,new
 924  0000               _TIM2_ICInit:
 926  0000 89            	pushw	x
 927       00000000      OFST:	set	0
 930                     ; 210     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 932                     ; 211     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 934                     ; 212     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 936                     ; 213     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 938                     ; 214     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 940                     ; 216     if (TIM2_Channel == TIM2_CHANNEL_1)
 942  0001 9e            	ld	a,xh
 943  0002 4d            	tnz	a
 944  0003 2614          	jrne	L104
 945                     ; 219         TI1_Config((u8)TIM2_ICPolarity,
 945                     ; 220                    (u8)TIM2_ICSelection,
 945                     ; 221                    (u8)TIM2_ICFilter);
 947  0005 7b07          	ld	a,(OFST+7,sp)
 948  0007 88            	push	a
 949  0008 7b06          	ld	a,(OFST+6,sp)
 950  000a 97            	ld	xl,a
 951  000b 7b03          	ld	a,(OFST+3,sp)
 952  000d 95            	ld	xh,a
 953  000e cd0000        	call	L3_TI1_Config
 955  0011 84            	pop	a
 956                     ; 224         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 958  0012 7b06          	ld	a,(OFST+6,sp)
 959  0014 cd0000        	call	_TIM2_SetIC1Prescaler
 962  0017 202b          	jra	L304
 963  0019               L104:
 964                     ; 226     else if (TIM2_Channel == TIM2_CHANNEL_2)
 966  0019 7b01          	ld	a,(OFST+1,sp)
 967  001b 4a            	dec	a
 968  001c 2614          	jrne	L504
 969                     ; 229         TI2_Config((u8)TIM2_ICPolarity,
 969                     ; 230                    (u8)TIM2_ICSelection,
 969                     ; 231                    (u8)TIM2_ICFilter);
 971  001e 7b07          	ld	a,(OFST+7,sp)
 972  0020 88            	push	a
 973  0021 7b06          	ld	a,(OFST+6,sp)
 974  0023 97            	ld	xl,a
 975  0024 7b03          	ld	a,(OFST+3,sp)
 976  0026 95            	ld	xh,a
 977  0027 cd0000        	call	L5_TI2_Config
 979  002a 84            	pop	a
 980                     ; 234         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 982  002b 7b06          	ld	a,(OFST+6,sp)
 983  002d cd0000        	call	_TIM2_SetIC2Prescaler
 986  0030 2012          	jra	L304
 987  0032               L504:
 988                     ; 239         TI3_Config((u8)TIM2_ICPolarity,
 988                     ; 240                    (u8)TIM2_ICSelection,
 988                     ; 241                    (u8)TIM2_ICFilter);
 990  0032 7b07          	ld	a,(OFST+7,sp)
 991  0034 88            	push	a
 992  0035 7b06          	ld	a,(OFST+6,sp)
 993  0037 97            	ld	xl,a
 994  0038 7b03          	ld	a,(OFST+3,sp)
 995  003a 95            	ld	xh,a
 996  003b cd0000        	call	L7_TI3_Config
 998  003e 84            	pop	a
 999                     ; 244         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1001  003f 7b06          	ld	a,(OFST+6,sp)
1002  0041 cd0000        	call	_TIM2_SetIC3Prescaler
1004  0044               L304:
1005                     ; 246 }
1008  0044 85            	popw	x
1009  0045 81            	ret	
1105                     ; 258 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1105                     ; 259                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1105                     ; 260                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1105                     ; 261                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1105                     ; 262                      u8 TIM2_ICFilter)
1105                     ; 263 {
1106                     .text:	section	.text,new
1107  0000               _TIM2_PWMIConfig:
1109  0000 89            	pushw	x
1110  0001 89            	pushw	x
1111       00000002      OFST:	set	2
1114                     ; 264     u8 icpolarity = (u8)TIM2_ICPOLARITY_RISING;
1116                     ; 265     u8 icselection = (u8)TIM2_ICSELECTION_DIRECTTI;
1118                     ; 268     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1120                     ; 269     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1122                     ; 270     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1124                     ; 271     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1126                     ; 274     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1128  0002 7b04          	ld	a,(OFST+2,sp)
1129  0004 a144          	cp	a,#68
1130  0006 2706          	jreq	L754
1131                     ; 276         icpolarity = (u8)TIM2_ICPOLARITY_FALLING;
1133  0008 a644          	ld	a,#68
1134  000a 6b01          	ld	(OFST-1,sp),a
1136  000c 2002          	jra	L164
1137  000e               L754:
1138                     ; 280         icpolarity = (u8)TIM2_ICPOLARITY_RISING;
1140  000e 0f01          	clr	(OFST-1,sp)
1141  0010               L164:
1142                     ; 284     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1144  0010 7b07          	ld	a,(OFST+5,sp)
1145  0012 4a            	dec	a
1146  0013 2604          	jrne	L364
1147                     ; 286         icselection = (u8)TIM2_ICSELECTION_INDIRECTTI;
1149  0015 a602          	ld	a,#2
1151  0017 2002          	jra	L564
1152  0019               L364:
1153                     ; 290         icselection = (u8)TIM2_ICSELECTION_DIRECTTI;
1155  0019 a601          	ld	a,#1
1156  001b               L564:
1157  001b 6b02          	ld	(OFST+0,sp),a
1158                     ; 293     if (TIM2_Channel == TIM2_CHANNEL_1)
1160  001d 7b03          	ld	a,(OFST+1,sp)
1161  001f 2626          	jrne	L764
1162                     ; 296         TI1_Config((u8)TIM2_ICPolarity, (u8)TIM2_ICSelection,
1162                     ; 297                    (u8)TIM2_ICFilter);
1164  0021 7b09          	ld	a,(OFST+7,sp)
1165  0023 88            	push	a
1166  0024 7b08          	ld	a,(OFST+6,sp)
1167  0026 97            	ld	xl,a
1168  0027 7b05          	ld	a,(OFST+3,sp)
1169  0029 95            	ld	xh,a
1170  002a cd0000        	call	L3_TI1_Config
1172  002d 84            	pop	a
1173                     ; 300         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1175  002e 7b08          	ld	a,(OFST+6,sp)
1176  0030 cd0000        	call	_TIM2_SetIC1Prescaler
1178                     ; 303         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1180  0033 7b09          	ld	a,(OFST+7,sp)
1181  0035 88            	push	a
1182  0036 7b03          	ld	a,(OFST+1,sp)
1183  0038 97            	ld	xl,a
1184  0039 7b02          	ld	a,(OFST+0,sp)
1185  003b 95            	ld	xh,a
1186  003c cd0000        	call	L5_TI2_Config
1188  003f 84            	pop	a
1189                     ; 306         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1191  0040 7b08          	ld	a,(OFST+6,sp)
1192  0042 cd0000        	call	_TIM2_SetIC2Prescaler
1195  0045 2024          	jra	L174
1196  0047               L764:
1197                     ; 311         TI2_Config((u8)TIM2_ICPolarity, (u8)TIM2_ICSelection,
1197                     ; 312                    (u8)TIM2_ICFilter);
1199  0047 7b09          	ld	a,(OFST+7,sp)
1200  0049 88            	push	a
1201  004a 7b08          	ld	a,(OFST+6,sp)
1202  004c 97            	ld	xl,a
1203  004d 7b05          	ld	a,(OFST+3,sp)
1204  004f 95            	ld	xh,a
1205  0050 cd0000        	call	L5_TI2_Config
1207  0053 84            	pop	a
1208                     ; 315         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1210  0054 7b08          	ld	a,(OFST+6,sp)
1211  0056 cd0000        	call	_TIM2_SetIC2Prescaler
1213                     ; 318         TI1_Config((u8)icpolarity, icselection, (u8)TIM2_ICFilter);
1215  0059 7b09          	ld	a,(OFST+7,sp)
1216  005b 88            	push	a
1217  005c 7b03          	ld	a,(OFST+1,sp)
1218  005e 97            	ld	xl,a
1219  005f 7b02          	ld	a,(OFST+0,sp)
1220  0061 95            	ld	xh,a
1221  0062 cd0000        	call	L3_TI1_Config
1223  0065 84            	pop	a
1224                     ; 321         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1226  0066 7b08          	ld	a,(OFST+6,sp)
1227  0068 cd0000        	call	_TIM2_SetIC1Prescaler
1229  006b               L174:
1230                     ; 323 }
1233  006b 5b04          	addw	sp,#4
1234  006d 81            	ret	
1289                     ; 332 void TIM2_Cmd(FunctionalState NewState)
1289                     ; 333 {
1290                     .text:	section	.text,new
1291  0000               _TIM2_Cmd:
1295                     ; 335     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1297                     ; 338     if (NewState != DISABLE)
1299  0000 4d            	tnz	a
1300  0001 2705          	jreq	L125
1301                     ; 340         TIM2->CR1 |= (u8)TIM2_CR1_CEN;
1303  0003 72105300      	bset	21248,#0
1306  0007 81            	ret	
1307  0008               L125:
1308                     ; 344         TIM2->CR1 &= (u8)(~TIM2_CR1_CEN);
1310  0008 72115300      	bres	21248,#0
1311                     ; 346 }
1314  000c 81            	ret	
1393                     ; 362 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1393                     ; 363 {
1394                     .text:	section	.text,new
1395  0000               _TIM2_ITConfig:
1397  0000 89            	pushw	x
1398       00000000      OFST:	set	0
1401                     ; 365     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1403                     ; 366     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1405                     ; 368     if (NewState != DISABLE)
1407  0001 9f            	ld	a,xl
1408  0002 4d            	tnz	a
1409  0003 2706          	jreq	L365
1410                     ; 371         TIM2->IER |= (u8)TIM2_IT;
1412  0005 9e            	ld	a,xh
1413  0006 ca5301        	or	a,21249
1415  0009 2006          	jra	L565
1416  000b               L365:
1417                     ; 376         TIM2->IER &= (u8)(~TIM2_IT);
1419  000b 7b01          	ld	a,(OFST+1,sp)
1420  000d 43            	cpl	a
1421  000e c45301        	and	a,21249
1422  0011               L565:
1423  0011 c75301        	ld	21249,a
1424                     ; 378 }
1427  0014 85            	popw	x
1428  0015 81            	ret	
1464                     ; 387 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1464                     ; 388 {
1465                     .text:	section	.text,new
1466  0000               _TIM2_UpdateDisableConfig:
1470                     ; 390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1472                     ; 393     if (NewState != DISABLE)
1474  0000 4d            	tnz	a
1475  0001 2705          	jreq	L506
1476                     ; 395         TIM2->CR1 |= (u8)TIM2_CR1_UDIS;
1478  0003 72125300      	bset	21248,#1
1481  0007 81            	ret	
1482  0008               L506:
1483                     ; 399         TIM2->CR1 &= (u8)(~TIM2_CR1_UDIS);
1485  0008 72135300      	bres	21248,#1
1486                     ; 401 }
1489  000c 81            	ret	
1547                     ; 411 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1547                     ; 412 {
1548                     .text:	section	.text,new
1549  0000               _TIM2_UpdateRequestConfig:
1553                     ; 414     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1555                     ; 417     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1557  0000 4d            	tnz	a
1558  0001 2705          	jreq	L736
1559                     ; 419         TIM2->CR1 |= (u8)TIM2_CR1_URS;
1561  0003 72145300      	bset	21248,#2
1564  0007 81            	ret	
1565  0008               L736:
1566                     ; 423         TIM2->CR1 &= (u8)(~TIM2_CR1_URS);
1568  0008 72155300      	bres	21248,#2
1569                     ; 425 }
1572  000c 81            	ret	
1629                     ; 436 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1629                     ; 437 {
1630                     .text:	section	.text,new
1631  0000               _TIM2_SelectOnePulseMode:
1635                     ; 439     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1637                     ; 442     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1639  0000 4d            	tnz	a
1640  0001 2705          	jreq	L176
1641                     ; 444         TIM2->CR1 |= (u8)TIM2_CR1_OPM;
1643  0003 72165300      	bset	21248,#3
1646  0007 81            	ret	
1647  0008               L176:
1648                     ; 448         TIM2->CR1 &= (u8)(~TIM2_CR1_OPM);
1650  0008 72175300      	bres	21248,#3
1651                     ; 451 }
1654  000c 81            	ret	
1722                     ; 482 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1722                     ; 483                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1722                     ; 484 {
1723                     .text:	section	.text,new
1724  0000               _TIM2_PrescalerConfig:
1728                     ; 486     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1730                     ; 487     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1732                     ; 490     TIM2->PSCR = (u8)Prescaler;
1734  0000 9e            	ld	a,xh
1735  0001 c7530c        	ld	21260,a
1736                     ; 493     TIM2->EGR = (u8)TIM2_PSCReloadMode;
1738  0004 9f            	ld	a,xl
1739  0005 c75304        	ld	21252,a
1740                     ; 494 }
1743  0008 81            	ret	
1801                     ; 505 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1801                     ; 506 {
1802                     .text:	section	.text,new
1803  0000               _TIM2_ForcedOC1Config:
1805  0000 88            	push	a
1806       00000000      OFST:	set	0
1809                     ; 508     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1811                     ; 511     TIM2->CCMR1  =  (u8)((TIM2->CCMR1 & (u8)(~TIM2_CCMR_OCM))  | (u8)TIM2_ForcedAction);
1813  0001 c65305        	ld	a,21253
1814  0004 a48f          	and	a,#143
1815  0006 1a01          	or	a,(OFST+1,sp)
1816  0008 c75305        	ld	21253,a
1817                     ; 512 }
1820  000b 84            	pop	a
1821  000c 81            	ret	
1857                     ; 523 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1857                     ; 524 {
1858                     .text:	section	.text,new
1859  0000               _TIM2_ForcedOC2Config:
1861  0000 88            	push	a
1862       00000000      OFST:	set	0
1865                     ; 526     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1867                     ; 529     TIM2->CCMR2 = (u8)((TIM2->CCMR2 & (u8)(~TIM2_CCMR_OCM))  | (u8)TIM2_ForcedAction);
1869  0001 c65306        	ld	a,21254
1870  0004 a48f          	and	a,#143
1871  0006 1a01          	or	a,(OFST+1,sp)
1872  0008 c75306        	ld	21254,a
1873                     ; 530 }
1876  000b 84            	pop	a
1877  000c 81            	ret	
1913                     ; 541 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1913                     ; 542 {
1914                     .text:	section	.text,new
1915  0000               _TIM2_ForcedOC3Config:
1917  0000 88            	push	a
1918       00000000      OFST:	set	0
1921                     ; 544     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1923                     ; 547     TIM2->CCMR3  =  (u8)((TIM2->CCMR3 & (u8)(~TIM2_CCMR_OCM))  | (u8)TIM2_ForcedAction);
1925  0001 c65307        	ld	a,21255
1926  0004 a48f          	and	a,#143
1927  0006 1a01          	or	a,(OFST+1,sp)
1928  0008 c75307        	ld	21255,a
1929                     ; 548 }
1932  000b 84            	pop	a
1933  000c 81            	ret	
1969                     ; 557 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1969                     ; 558 {
1970                     .text:	section	.text,new
1971  0000               _TIM2_ARRPreloadConfig:
1975                     ; 560     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1977                     ; 563     if (NewState != DISABLE)
1979  0000 4d            	tnz	a
1980  0001 2705          	jreq	L7201
1981                     ; 565         TIM2->CR1 |= (u8)TIM2_CR1_ARPE;
1983  0003 721e5300      	bset	21248,#7
1986  0007 81            	ret	
1987  0008               L7201:
1988                     ; 569         TIM2->CR1 &= (u8)(~TIM2_CR1_ARPE);
1990  0008 721f5300      	bres	21248,#7
1991                     ; 571 }
1994  000c 81            	ret	
2030                     ; 580 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2030                     ; 581 {
2031                     .text:	section	.text,new
2032  0000               _TIM2_OC1PreloadConfig:
2036                     ; 583     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2038                     ; 586     if (NewState != DISABLE)
2040  0000 4d            	tnz	a
2041  0001 2705          	jreq	L1501
2042                     ; 588         TIM2->CCMR1 |= (u8)TIM2_CCMR_OCxPE;
2044  0003 72165305      	bset	21253,#3
2047  0007 81            	ret	
2048  0008               L1501:
2049                     ; 592         TIM2->CCMR1 &= (u8)(~TIM2_CCMR_OCxPE);
2051  0008 72175305      	bres	21253,#3
2052                     ; 594 }
2055  000c 81            	ret	
2091                     ; 603 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2091                     ; 604 {
2092                     .text:	section	.text,new
2093  0000               _TIM2_OC2PreloadConfig:
2097                     ; 606     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2099                     ; 609     if (NewState != DISABLE)
2101  0000 4d            	tnz	a
2102  0001 2705          	jreq	L3701
2103                     ; 611         TIM2->CCMR2 |= (u8)TIM2_CCMR_OCxPE;
2105  0003 72165306      	bset	21254,#3
2108  0007 81            	ret	
2109  0008               L3701:
2110                     ; 615         TIM2->CCMR2 &= (u8)(~TIM2_CCMR_OCxPE);
2112  0008 72175306      	bres	21254,#3
2113                     ; 617 }
2116  000c 81            	ret	
2152                     ; 626 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2152                     ; 627 {
2153                     .text:	section	.text,new
2154  0000               _TIM2_OC3PreloadConfig:
2158                     ; 629     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2160                     ; 632     if (NewState != DISABLE)
2162  0000 4d            	tnz	a
2163  0001 2705          	jreq	L5111
2164                     ; 634         TIM2->CCMR3 |= (u8)TIM2_CCMR_OCxPE;
2166  0003 72165307      	bset	21255,#3
2169  0007 81            	ret	
2170  0008               L5111:
2171                     ; 638         TIM2->CCMR3 &= (u8)(~TIM2_CCMR_OCxPE);
2173  0008 72175307      	bres	21255,#3
2174                     ; 640 }
2177  000c 81            	ret	
2250                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2250                     ; 654 {
2251                     .text:	section	.text,new
2252  0000               _TIM2_GenerateEvent:
2256                     ; 656     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2258                     ; 659     TIM2->EGR = (u8)TIM2_EventSource;
2260  0000 c75304        	ld	21252,a
2261                     ; 660 }
2264  0003 81            	ret	
2300                     ; 671 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2300                     ; 672 {
2301                     .text:	section	.text,new
2302  0000               _TIM2_OC1PolarityConfig:
2306                     ; 674     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2308                     ; 677     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2310  0000 4d            	tnz	a
2311  0001 2705          	jreq	L1711
2312                     ; 679         TIM2->CCER1 |= (u8)TIM2_CCER1_CC1P;
2314  0003 72125308      	bset	21256,#1
2317  0007 81            	ret	
2318  0008               L1711:
2319                     ; 683         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC1P);
2321  0008 72135308      	bres	21256,#1
2322                     ; 685 }
2325  000c 81            	ret	
2361                     ; 696 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2361                     ; 697 {
2362                     .text:	section	.text,new
2363  0000               _TIM2_OC2PolarityConfig:
2367                     ; 699     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2369                     ; 702     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2371  0000 4d            	tnz	a
2372  0001 2705          	jreq	L3121
2373                     ; 704         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2375  0003 721a5308      	bset	21256,#5
2378  0007 81            	ret	
2379  0008               L3121:
2380                     ; 708         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC2P);
2382  0008 721b5308      	bres	21256,#5
2383                     ; 710 }
2386  000c 81            	ret	
2422                     ; 721 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2422                     ; 722 {
2423                     .text:	section	.text,new
2424  0000               _TIM2_OC3PolarityConfig:
2428                     ; 724     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2430                     ; 727     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2432  0000 4d            	tnz	a
2433  0001 2705          	jreq	L5321
2434                     ; 729         TIM2->CCER2 |= (u8)TIM2_CCER2_CC3P;
2436  0003 72125309      	bset	21257,#1
2439  0007 81            	ret	
2440  0008               L5321:
2441                     ; 733         TIM2->CCER2 &= (u8)(~TIM2_CCER2_CC3P);
2443  0008 72135309      	bres	21257,#1
2444                     ; 735 }
2447  000c 81            	ret	
2492                     ; 749 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2492                     ; 750 {
2493                     .text:	section	.text,new
2494  0000               _TIM2_CCxCmd:
2496  0000 89            	pushw	x
2497       00000000      OFST:	set	0
2500                     ; 752     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2502                     ; 753     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2504                     ; 755     if (TIM2_Channel == TIM2_CHANNEL_1)
2506  0001 9e            	ld	a,xh
2507  0002 4d            	tnz	a
2508  0003 2610          	jrne	L3621
2509                     ; 758         if (NewState != DISABLE)
2511  0005 9f            	ld	a,xl
2512  0006 4d            	tnz	a
2513  0007 2706          	jreq	L5621
2514                     ; 760             TIM2->CCER1 |= (u8)TIM2_CCER1_CC1E;
2516  0009 72105308      	bset	21256,#0
2518  000d 2029          	jra	L1721
2519  000f               L5621:
2520                     ; 764             TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC1E);
2522  000f 72115308      	bres	21256,#0
2523  0013 2023          	jra	L1721
2524  0015               L3621:
2525                     ; 768     else if (TIM2_Channel == TIM2_CHANNEL_2)
2527  0015 7b01          	ld	a,(OFST+1,sp)
2528  0017 4a            	dec	a
2529  0018 2610          	jrne	L3721
2530                     ; 771         if (NewState != DISABLE)
2532  001a 7b02          	ld	a,(OFST+2,sp)
2533  001c 2706          	jreq	L5721
2534                     ; 773             TIM2->CCER1 |= (u8)TIM2_CCER1_CC2E;
2536  001e 72185308      	bset	21256,#4
2538  0022 2014          	jra	L1721
2539  0024               L5721:
2540                     ; 777             TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC2E);
2542  0024 72195308      	bres	21256,#4
2543  0028 200e          	jra	L1721
2544  002a               L3721:
2545                     ; 783         if (NewState != DISABLE)
2547  002a 7b02          	ld	a,(OFST+2,sp)
2548  002c 2706          	jreq	L3031
2549                     ; 785             TIM2->CCER2 |= (u8)TIM2_CCER2_CC3E;
2551  002e 72105309      	bset	21257,#0
2553  0032 2004          	jra	L1721
2554  0034               L3031:
2555                     ; 789             TIM2->CCER2 &= (u8)(~TIM2_CCER2_CC3E);
2557  0034 72115309      	bres	21257,#0
2558  0038               L1721:
2559                     ; 792 }
2562  0038 85            	popw	x
2563  0039 81            	ret	
2608                     ; 814 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2608                     ; 815 {
2609                     .text:	section	.text,new
2610  0000               _TIM2_SelectOCxM:
2612  0000 89            	pushw	x
2613       00000000      OFST:	set	0
2616                     ; 817     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2618                     ; 818     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2620                     ; 820     if (TIM2_Channel == TIM2_CHANNEL_1)
2622  0001 9e            	ld	a,xh
2623  0002 4d            	tnz	a
2624  0003 2610          	jrne	L1331
2625                     ; 823         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC1E);
2627  0005 72115308      	bres	21256,#0
2628                     ; 826         TIM2->CCMR1 = (u8)((TIM2->CCMR1 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
2630  0009 c65305        	ld	a,21253
2631  000c a48f          	and	a,#143
2632  000e 1a02          	or	a,(OFST+2,sp)
2633  0010 c75305        	ld	21253,a
2635  0013 2023          	jra	L3331
2636  0015               L1331:
2637                     ; 828     else if (TIM2_Channel == TIM2_CHANNEL_2)
2639  0015 7b01          	ld	a,(OFST+1,sp)
2640  0017 4a            	dec	a
2641  0018 2610          	jrne	L5331
2642                     ; 831         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC2E);
2644  001a 72195308      	bres	21256,#4
2645                     ; 834         TIM2->CCMR2 = (u8)((TIM2->CCMR2 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
2647  001e c65306        	ld	a,21254
2648  0021 a48f          	and	a,#143
2649  0023 1a02          	or	a,(OFST+2,sp)
2650  0025 c75306        	ld	21254,a
2652  0028 200e          	jra	L3331
2653  002a               L5331:
2654                     ; 839         TIM2->CCER2 &= (u8)(~TIM2_CCER2_CC3E);
2656  002a 72115309      	bres	21257,#0
2657                     ; 842         TIM2->CCMR3 = (u8)((TIM2->CCMR3 & (u8)(~TIM2_CCMR_OCM)) | (u8)TIM2_OCMode);
2659  002e c65307        	ld	a,21255
2660  0031 a48f          	and	a,#143
2661  0033 1a02          	or	a,(OFST+2,sp)
2662  0035 c75307        	ld	21255,a
2663  0038               L3331:
2664                     ; 844 }
2667  0038 85            	popw	x
2668  0039 81            	ret	
2702                     ; 853 void TIM2_SetCounter(u16 Counter)
2702                     ; 854 {
2703                     .text:	section	.text,new
2704  0000               _TIM2_SetCounter:
2708                     ; 856     TIM2->CNTRH = (u8)(Counter >> 8);
2710  0000 9e            	ld	a,xh
2711  0001 c7530a        	ld	21258,a
2712                     ; 857     TIM2->CNTRL = (u8)(Counter);
2714  0004 9f            	ld	a,xl
2715  0005 c7530b        	ld	21259,a
2716                     ; 859 }
2719  0008 81            	ret	
2753                     ; 868 void TIM2_SetAutoreload(u16 Autoreload)
2753                     ; 869 {
2754                     .text:	section	.text,new
2755  0000               _TIM2_SetAutoreload:
2759                     ; 872     TIM2->ARRH = (u8)(Autoreload >> 8);
2761  0000 9e            	ld	a,xh
2762  0001 c7530d        	ld	21261,a
2763                     ; 873     TIM2->ARRL = (u8)(Autoreload);
2765  0004 9f            	ld	a,xl
2766  0005 c7530e        	ld	21262,a
2767                     ; 875 }
2770  0008 81            	ret	
2804                     ; 884 void TIM2_SetCompare1(u16 Compare1)
2804                     ; 885 {
2805                     .text:	section	.text,new
2806  0000               _TIM2_SetCompare1:
2810                     ; 887     TIM2->CCR1H = (u8)(Compare1 >> 8);
2812  0000 9e            	ld	a,xh
2813  0001 c7530f        	ld	21263,a
2814                     ; 888     TIM2->CCR1L = (u8)(Compare1);
2816  0004 9f            	ld	a,xl
2817  0005 c75310        	ld	21264,a
2818                     ; 890 }
2821  0008 81            	ret	
2855                     ; 899 void TIM2_SetCompare2(u16 Compare2)
2855                     ; 900 {
2856                     .text:	section	.text,new
2857  0000               _TIM2_SetCompare2:
2861                     ; 902     TIM2->CCR2H = (u8)(Compare2 >> 8);
2863  0000 9e            	ld	a,xh
2864  0001 c75311        	ld	21265,a
2865                     ; 903     TIM2->CCR2L = (u8)(Compare2);
2867  0004 9f            	ld	a,xl
2868  0005 c75312        	ld	21266,a
2869                     ; 905 }
2872  0008 81            	ret	
2906                     ; 914 void TIM2_SetCompare3(u16 Compare3)
2906                     ; 915 {
2907                     .text:	section	.text,new
2908  0000               _TIM2_SetCompare3:
2912                     ; 917     TIM2->CCR3H = (u8)(Compare3 >> 8);
2914  0000 9e            	ld	a,xh
2915  0001 c75313        	ld	21267,a
2916                     ; 918     TIM2->CCR3L = (u8)(Compare3);
2918  0004 9f            	ld	a,xl
2919  0005 c75314        	ld	21268,a
2920                     ; 920 }
2923  0008 81            	ret	
2959                     ; 933 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2959                     ; 934 {
2960                     .text:	section	.text,new
2961  0000               _TIM2_SetIC1Prescaler:
2963  0000 88            	push	a
2964       00000000      OFST:	set	0
2967                     ; 936     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2969                     ; 939     TIM2->CCMR1 = (u8)((TIM2->CCMR1 & (u8)(~TIM2_CCMR_ICxPSC)) | (u8)TIM2_IC1Prescaler);
2971  0001 c65305        	ld	a,21253
2972  0004 a4f3          	and	a,#243
2973  0006 1a01          	or	a,(OFST+1,sp)
2974  0008 c75305        	ld	21253,a
2975                     ; 940 }
2978  000b 84            	pop	a
2979  000c 81            	ret	
3015                     ; 952 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3015                     ; 953 {
3016                     .text:	section	.text,new
3017  0000               _TIM2_SetIC2Prescaler:
3019  0000 88            	push	a
3020       00000000      OFST:	set	0
3023                     ; 955     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3025                     ; 958     TIM2->CCMR2 = (u8)((TIM2->CCMR2 & (u8)(~TIM2_CCMR_ICxPSC)) | (u8)TIM2_IC2Prescaler);
3027  0001 c65306        	ld	a,21254
3028  0004 a4f3          	and	a,#243
3029  0006 1a01          	or	a,(OFST+1,sp)
3030  0008 c75306        	ld	21254,a
3031                     ; 959 }
3034  000b 84            	pop	a
3035  000c 81            	ret	
3071                     ; 971 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3071                     ; 972 {
3072                     .text:	section	.text,new
3073  0000               _TIM2_SetIC3Prescaler:
3075  0000 88            	push	a
3076       00000000      OFST:	set	0
3079                     ; 975     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3081                     ; 977     TIM2->CCMR3 = (u8)((TIM2->CCMR3 & (u8)(~TIM2_CCMR_ICxPSC)) | (u8)TIM2_IC3Prescaler);
3083  0001 c65307        	ld	a,21255
3084  0004 a4f3          	and	a,#243
3085  0006 1a01          	or	a,(OFST+1,sp)
3086  0008 c75307        	ld	21255,a
3087                     ; 978 }
3090  000b 84            	pop	a
3091  000c 81            	ret	
3143                     ; 986 u16 TIM2_GetCapture1(void)
3143                     ; 987 {
3144                     .text:	section	.text,new
3145  0000               _TIM2_GetCapture1:
3147  0000 5204          	subw	sp,#4
3148       00000004      OFST:	set	4
3151                     ; 989     u16 tmpccr1 = 0;
3153                     ; 990     u8 tmpccr1l=0, tmpccr1h=0;
3157                     ; 992     tmpccr1h = TIM2->CCR1H;
3159  0002 c6530f        	ld	a,21263
3160  0005 6b02          	ld	(OFST-2,sp),a
3161                     ; 993     tmpccr1l = TIM2->CCR1L;
3163  0007 c65310        	ld	a,21264
3164  000a 6b01          	ld	(OFST-3,sp),a
3165                     ; 995     tmpccr1 = (u16)(tmpccr1l);
3167  000c 5f            	clrw	x
3168  000d 97            	ld	xl,a
3169  000e 1f03          	ldw	(OFST-1,sp),x
3170                     ; 996     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
3172  0010 7b02          	ld	a,(OFST-2,sp)
3173  0012 97            	ld	xl,a
3174  0013 7b04          	ld	a,(OFST+0,sp)
3175  0015 01            	rrwa	x,a
3176  0016 1a03          	or	a,(OFST-1,sp)
3177  0018 01            	rrwa	x,a
3178                     ; 998     return (u16)tmpccr1;
3182  0019 5b04          	addw	sp,#4
3183  001b 81            	ret	
3235                     ; 1007 u16 TIM2_GetCapture2(void)
3235                     ; 1008 {
3236                     .text:	section	.text,new
3237  0000               _TIM2_GetCapture2:
3239  0000 5204          	subw	sp,#4
3240       00000004      OFST:	set	4
3243                     ; 1010     u16 tmpccr2 = 0;
3245                     ; 1011     u8 tmpccr2l=0, tmpccr2h=0;
3249                     ; 1013     tmpccr2h = TIM2->CCR2H;
3251  0002 c65311        	ld	a,21265
3252  0005 6b02          	ld	(OFST-2,sp),a
3253                     ; 1014     tmpccr2l = TIM2->CCR2L;
3255  0007 c65312        	ld	a,21266
3256  000a 6b01          	ld	(OFST-3,sp),a
3257                     ; 1016     tmpccr2 = (u16)(tmpccr2l);
3259  000c 5f            	clrw	x
3260  000d 97            	ld	xl,a
3261  000e 1f03          	ldw	(OFST-1,sp),x
3262                     ; 1017     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
3264  0010 7b02          	ld	a,(OFST-2,sp)
3265  0012 97            	ld	xl,a
3266  0013 7b04          	ld	a,(OFST+0,sp)
3267  0015 01            	rrwa	x,a
3268  0016 1a03          	or	a,(OFST-1,sp)
3269  0018 01            	rrwa	x,a
3270                     ; 1019     return (u16)tmpccr2;
3274  0019 5b04          	addw	sp,#4
3275  001b 81            	ret	
3327                     ; 1028 u16 TIM2_GetCapture3(void)
3327                     ; 1029 {
3328                     .text:	section	.text,new
3329  0000               _TIM2_GetCapture3:
3331  0000 5204          	subw	sp,#4
3332       00000004      OFST:	set	4
3335                     ; 1031     u16 tmpccr3 = 0;
3337                     ; 1032     u8 tmpccr3l=0, tmpccr3h=0;
3341                     ; 1034     tmpccr3h = TIM2->CCR3H;
3343  0002 c65313        	ld	a,21267
3344  0005 6b02          	ld	(OFST-2,sp),a
3345                     ; 1035     tmpccr3l = TIM2->CCR3L;
3347  0007 c65314        	ld	a,21268
3348  000a 6b01          	ld	(OFST-3,sp),a
3349                     ; 1037     tmpccr3 = (u16)(tmpccr3l);
3351  000c 5f            	clrw	x
3352  000d 97            	ld	xl,a
3353  000e 1f03          	ldw	(OFST-1,sp),x
3354                     ; 1038     tmpccr3 |= (u16)((u16)tmpccr3h << 8);
3356  0010 7b02          	ld	a,(OFST-2,sp)
3357  0012 97            	ld	xl,a
3358  0013 7b04          	ld	a,(OFST+0,sp)
3359  0015 01            	rrwa	x,a
3360  0016 1a03          	or	a,(OFST-1,sp)
3361  0018 01            	rrwa	x,a
3362                     ; 1040     return (u16)tmpccr3;
3366  0019 5b04          	addw	sp,#4
3367  001b 81            	ret	
3390                     ; 1049 u16 TIM2_GetCounter(void)
3390                     ; 1050 {
3391                     .text:	section	.text,new
3392  0000               _TIM2_GetCounter:
3394  0000 89            	pushw	x
3395       00000002      OFST:	set	2
3398                     ; 1052     return (u16)(((u16)TIM2->CNTRH << 8) | (u16)(TIM2->CNTRL));
3400  0001 c6530b        	ld	a,21259
3401  0004 5f            	clrw	x
3402  0005 97            	ld	xl,a
3403  0006 1f01          	ldw	(OFST-1,sp),x
3404  0008 c6530a        	ld	a,21258
3405  000b 97            	ld	xl,a
3406  000c 7b02          	ld	a,(OFST+0,sp)
3407  000e 01            	rrwa	x,a
3408  000f 1a01          	or	a,(OFST-1,sp)
3409  0011 01            	rrwa	x,a
3412  0012 5b02          	addw	sp,#2
3413  0014 81            	ret	
3437                     ; 1062 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3437                     ; 1063 {
3438                     .text:	section	.text,new
3439  0000               _TIM2_GetPrescaler:
3443                     ; 1065     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3445  0000 c6530c        	ld	a,21260
3448  0003 81            	ret	
3587                     ; 1082 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3587                     ; 1083 {
3588                     .text:	section	.text,new
3589  0000               _TIM2_GetFlagStatus:
3591  0000 5204          	subw	sp,#4
3592       00000004      OFST:	set	4
3595                     ; 1084     volatile FlagStatus bitstatus = RESET;
3597  0002 0f04          	clr	(OFST+0,sp)
3598                     ; 1088     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3600                     ; 1090     tim2_flag_l = (u8)(TIM2_FLAG);
3602  0004 9f            	ld	a,xl
3603  0005 6b02          	ld	(OFST-2,sp),a
3604                     ; 1091     tim2_flag_h = (u8)(TIM2_FLAG >> 8);
3606  0007 9e            	ld	a,xh
3607  0008 6b03          	ld	(OFST-1,sp),a
3608                     ; 1093     if (((TIM2->SR1 & tim2_flag_l) | (TIM2->SR2 & tim2_flag_h)) != (u8)RESET )
3610  000a c65303        	ld	a,21251
3611  000d 1403          	and	a,(OFST-1,sp)
3612  000f 6b01          	ld	(OFST-3,sp),a
3613  0011 c65302        	ld	a,21250
3614  0014 1402          	and	a,(OFST-2,sp)
3615  0016 1a01          	or	a,(OFST-3,sp)
3616  0018 2706          	jreq	L7271
3617                     ; 1095         bitstatus = SET;
3619  001a a601          	ld	a,#1
3620  001c 6b04          	ld	(OFST+0,sp),a
3622  001e 2002          	jra	L1371
3623  0020               L7271:
3624                     ; 1099         bitstatus = RESET;
3626  0020 6b04          	ld	(OFST+0,sp),a
3627  0022               L1371:
3628                     ; 1101     return (FlagStatus)bitstatus;
3630  0022 7b04          	ld	a,(OFST+0,sp)
3633  0024 5b04          	addw	sp,#4
3634  0026 81            	ret	
3669                     ; 1118 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3669                     ; 1119 {
3670                     .text:	section	.text,new
3671  0000               _TIM2_ClearFlag:
3673  0000 89            	pushw	x
3674       00000000      OFST:	set	0
3677                     ; 1121     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3679                     ; 1124     TIM2->SR1 = (u8)(~((u8)(TIM2_FLAG)));
3681  0001 9f            	ld	a,xl
3682  0002 43            	cpl	a
3683  0003 c75302        	ld	21250,a
3684                     ; 1125     TIM2->SR2 = (u8)(~((u8)(TIM2_FLAG >> 8)));
3686  0006 7b01          	ld	a,(OFST+1,sp)
3687  0008 43            	cpl	a
3688  0009 c75303        	ld	21251,a
3689                     ; 1126 }
3692  000c 85            	popw	x
3693  000d 81            	ret	
3757                     ; 1140 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3757                     ; 1141 {
3758                     .text:	section	.text,new
3759  0000               _TIM2_GetITStatus:
3761  0000 88            	push	a
3762  0001 5203          	subw	sp,#3
3763       00000003      OFST:	set	3
3766                     ; 1142     volatile ITStatus bitstatus = RESET;
3768  0003 0f03          	clr	(OFST+0,sp)
3769                     ; 1143     vu8 TIM2_itStatus = 0, TIM2_itEnable = 0;
3771  0005 0f01          	clr	(OFST-2,sp)
3774  0007 0f02          	clr	(OFST-1,sp)
3775                     ; 1146     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3777                     ; 1148     TIM2_itStatus = (u8)(TIM2->SR1 & TIM2_IT);
3779  0009 c45302        	and	a,21250
3780  000c 6b01          	ld	(OFST-2,sp),a
3781                     ; 1150     TIM2_itEnable = (u8)(TIM2->IER & TIM2_IT);
3783  000e c65301        	ld	a,21249
3784  0011 1404          	and	a,(OFST+1,sp)
3785  0013 6b02          	ld	(OFST-1,sp),a
3786                     ; 1152     if ((TIM2_itStatus != (u8)RESET ) && (TIM2_itEnable != (u8)RESET ))
3788  0015 0d01          	tnz	(OFST-2,sp)
3789  0017 270a          	jreq	L3002
3791  0019 0d02          	tnz	(OFST-1,sp)
3792  001b 2706          	jreq	L3002
3793                     ; 1154         bitstatus = SET;
3795  001d a601          	ld	a,#1
3796  001f 6b03          	ld	(OFST+0,sp),a
3798  0021 2002          	jra	L5002
3799  0023               L3002:
3800                     ; 1158         bitstatus = RESET;
3802  0023 0f03          	clr	(OFST+0,sp)
3803  0025               L5002:
3804                     ; 1160     return (ITStatus)(bitstatus);
3806  0025 7b03          	ld	a,(OFST+0,sp)
3809  0027 5b04          	addw	sp,#4
3810  0029 81            	ret	
3846                     ; 1174 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3846                     ; 1175 {
3847                     .text:	section	.text,new
3848  0000               _TIM2_ClearITPendingBit:
3852                     ; 1177     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3854                     ; 1180     TIM2->SR1 = (u8)(~TIM2_IT);
3856  0000 43            	cpl	a
3857  0001 c75302        	ld	21250,a
3858                     ; 1181 }
3861  0004 81            	ret	
3913                     ; 1200 static void TI1_Config(u8 TIM2_ICPolarity,
3913                     ; 1201                        u8 TIM2_ICSelection,
3913                     ; 1202                        u8 TIM2_ICFilter)
3913                     ; 1203 {
3914                     .text:	section	.text,new
3915  0000               L3_TI1_Config:
3917  0000 89            	pushw	x
3918  0001 88            	push	a
3919       00000001      OFST:	set	1
3922                     ; 1205     TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC1E);
3924  0002 72115308      	bres	21256,#0
3925                     ; 1208     TIM2->CCMR1  = (u8)((TIM2->CCMR1 & (u8)(~( TIM2_CCMR_CCxS     |        TIM2_CCMR_ICxF    ))) | (u8)(( (TIM2_ICSelection)) | ((u8)( TIM2_ICFilter << 4))));
3927  0006 7b06          	ld	a,(OFST+5,sp)
3928  0008 97            	ld	xl,a
3929  0009 a610          	ld	a,#16
3930  000b 42            	mul	x,a
3931  000c 9f            	ld	a,xl
3932  000d 1a03          	or	a,(OFST+2,sp)
3933  000f 6b01          	ld	(OFST+0,sp),a
3934  0011 c65305        	ld	a,21253
3935  0014 a40c          	and	a,#12
3936  0016 1a01          	or	a,(OFST+0,sp)
3937  0018 c75305        	ld	21253,a
3938                     ; 1211     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3940  001b 7b02          	ld	a,(OFST+1,sp)
3941  001d 2706          	jreq	L3502
3942                     ; 1213         TIM2->CCER1 |= TIM2_CCER1_CC1P;
3944  001f 72125308      	bset	21256,#1
3946  0023 2004          	jra	L5502
3947  0025               L3502:
3948                     ; 1217         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC1P);
3950  0025 72135308      	bres	21256,#1
3951  0029               L5502:
3952                     ; 1220     TIM2->CCER1 |= TIM2_CCER1_CC1E;
3954  0029 72105308      	bset	21256,#0
3955                     ; 1221 }
3958  002d 5b03          	addw	sp,#3
3959  002f 81            	ret	
4011                     ; 1240 static void TI2_Config(u8 TIM2_ICPolarity,
4011                     ; 1241                        u8 TIM2_ICSelection,
4011                     ; 1242                        u8 TIM2_ICFilter)
4011                     ; 1243 {
4012                     .text:	section	.text,new
4013  0000               L5_TI2_Config:
4015  0000 89            	pushw	x
4016  0001 88            	push	a
4017       00000001      OFST:	set	1
4020                     ; 1245     TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC2E);
4022  0002 72195308      	bres	21256,#4
4023                     ; 1248     TIM2->CCMR2 = (u8)((TIM2->CCMR2 & (u8)(~( TIM2_CCMR_CCxS     |        TIM2_CCMR_ICxF    ))) | (u8)(( (TIM2_ICSelection)) | ((u8)( TIM2_ICFilter << 4))));
4025  0006 7b06          	ld	a,(OFST+5,sp)
4026  0008 97            	ld	xl,a
4027  0009 a610          	ld	a,#16
4028  000b 42            	mul	x,a
4029  000c 9f            	ld	a,xl
4030  000d 1a03          	or	a,(OFST+2,sp)
4031  000f 6b01          	ld	(OFST+0,sp),a
4032  0011 c65306        	ld	a,21254
4033  0014 a40c          	and	a,#12
4034  0016 1a01          	or	a,(OFST+0,sp)
4035  0018 c75306        	ld	21254,a
4036                     ; 1252     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4038  001b 7b02          	ld	a,(OFST+1,sp)
4039  001d 2706          	jreq	L5012
4040                     ; 1254         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4042  001f 721a5308      	bset	21256,#5
4044  0023 2004          	jra	L7012
4045  0025               L5012:
4046                     ; 1258         TIM2->CCER1 &= (u8)(~TIM2_CCER1_CC2P);
4048  0025 721b5308      	bres	21256,#5
4049  0029               L7012:
4050                     ; 1262     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4052  0029 72185308      	bset	21256,#4
4053                     ; 1264 }
4056  002d 5b03          	addw	sp,#3
4057  002f 81            	ret	
4109                     ; 1280 static void TI3_Config(u8 TIM2_ICPolarity, u8 TIM2_ICSelection,
4109                     ; 1281                        u8 TIM2_ICFilter)
4109                     ; 1282 {
4110                     .text:	section	.text,new
4111  0000               L7_TI3_Config:
4113  0000 89            	pushw	x
4114  0001 88            	push	a
4115       00000001      OFST:	set	1
4118                     ; 1284     TIM2->CCER2 &=  (u8)(~TIM2_CCER2_CC3E);
4120  0002 72115309      	bres	21257,#0
4121                     ; 1287     TIM2->CCMR3 = (u8)((TIM2->CCMR3 & (u8)(~( TIM2_CCMR_CCxS     |        TIM2_CCMR_ICxF    ))) | (u8)(( (TIM2_ICSelection)) | ((u8)( TIM2_ICFilter << 4))));
4123  0006 7b06          	ld	a,(OFST+5,sp)
4124  0008 97            	ld	xl,a
4125  0009 a610          	ld	a,#16
4126  000b 42            	mul	x,a
4127  000c 9f            	ld	a,xl
4128  000d 1a03          	or	a,(OFST+2,sp)
4129  000f 6b01          	ld	(OFST+0,sp),a
4130  0011 c65307        	ld	a,21255
4131  0014 a40c          	and	a,#12
4132  0016 1a01          	or	a,(OFST+0,sp)
4133  0018 c75307        	ld	21255,a
4134                     ; 1291     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4136  001b 7b02          	ld	a,(OFST+1,sp)
4137  001d 2706          	jreq	L7312
4138                     ; 1293         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4140  001f 72125309      	bset	21257,#1
4142  0023 2004          	jra	L1412
4143  0025               L7312:
4144                     ; 1297         TIM2->CCER2 &= (u8)(~TIM2_CCER2_CC3P);
4146  0025 72135309      	bres	21257,#1
4147  0029               L1412:
4148                     ; 1300     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4150  0029 72105309      	bset	21257,#0
4151                     ; 1301 }
4154  002d 5b03          	addw	sp,#3
4155  002f 81            	ret	
4168                     	xdef	_TIM2_ClearITPendingBit
4169                     	xdef	_TIM2_GetITStatus
4170                     	xdef	_TIM2_ClearFlag
4171                     	xdef	_TIM2_GetFlagStatus
4172                     	xdef	_TIM2_GetPrescaler
4173                     	xdef	_TIM2_GetCounter
4174                     	xdef	_TIM2_GetCapture3
4175                     	xdef	_TIM2_GetCapture2
4176                     	xdef	_TIM2_GetCapture1
4177                     	xdef	_TIM2_SetIC3Prescaler
4178                     	xdef	_TIM2_SetIC2Prescaler
4179                     	xdef	_TIM2_SetIC1Prescaler
4180                     	xdef	_TIM2_SetCompare3
4181                     	xdef	_TIM2_SetCompare2
4182                     	xdef	_TIM2_SetCompare1
4183                     	xdef	_TIM2_SetAutoreload
4184                     	xdef	_TIM2_SetCounter
4185                     	xdef	_TIM2_SelectOCxM
4186                     	xdef	_TIM2_CCxCmd
4187                     	xdef	_TIM2_OC3PolarityConfig
4188                     	xdef	_TIM2_OC2PolarityConfig
4189                     	xdef	_TIM2_OC1PolarityConfig
4190                     	xdef	_TIM2_GenerateEvent
4191                     	xdef	_TIM2_OC3PreloadConfig
4192                     	xdef	_TIM2_OC2PreloadConfig
4193                     	xdef	_TIM2_OC1PreloadConfig
4194                     	xdef	_TIM2_ARRPreloadConfig
4195                     	xdef	_TIM2_ForcedOC3Config
4196                     	xdef	_TIM2_ForcedOC2Config
4197                     	xdef	_TIM2_ForcedOC1Config
4198                     	xdef	_TIM2_PrescalerConfig
4199                     	xdef	_TIM2_SelectOnePulseMode
4200                     	xdef	_TIM2_UpdateRequestConfig
4201                     	xdef	_TIM2_UpdateDisableConfig
4202                     	xdef	_TIM2_ITConfig
4203                     	xdef	_TIM2_Cmd
4204                     	xdef	_TIM2_PWMIConfig
4205                     	xdef	_TIM2_ICInit
4206                     	xdef	_TIM2_OC3Init
4207                     	xdef	_TIM2_OC2Init
4208                     	xdef	_TIM2_OC1Init
4209                     	xdef	_TIM2_TimeBaseInit
4210                     	xdef	_TIM2_DeInit
4229                     	end
