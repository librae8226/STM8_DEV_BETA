   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 41 void TIM4_DeInit(void)
  33                     ; 42 {
  35                     .text:	section	.text,new
  36  0000               _TIM4_DeInit:
  40                     ; 43     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  42  0000 725f5340      	clr	21312
  43                     ; 44     TIM4->IER = TIM4_IER_RESET_VALUE;
  45  0004 725f5341      	clr	21313
  46                     ; 45     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  48  0008 725f5344      	clr	21316
  49                     ; 46     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  51  000c 725f5345      	clr	21317
  52                     ; 47     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  54  0010 35ff5346      	mov	21318,#255
  55                     ; 48     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  57  0014 725f5342      	clr	21314
  58                     ; 49 }
  61  0018 81            	ret	
 167                     ; 57 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, u8 TIM4_Period)
 167                     ; 58 {
 168                     .text:	section	.text,new
 169  0000               _TIM4_TimeBaseInit:
 173                     ; 60     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 175                     ; 62     TIM4->PSCR = (u8)(TIM4_Prescaler);
 177  0000 9e            	ld	a,xh
 178  0001 c75345        	ld	21317,a
 179                     ; 64     TIM4->ARR = (u8)(TIM4_Period);
 181  0004 9f            	ld	a,xl
 182  0005 c75346        	ld	21318,a
 183                     ; 65 }
 186  0008 81            	ret	
 241                     ; 75 void TIM4_Cmd(FunctionalState NewState)
 241                     ; 76 {
 242                     .text:	section	.text,new
 243  0000               _TIM4_Cmd:
 247                     ; 78     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 249                     ; 81     if (NewState != DISABLE)
 251  0000 4d            	tnz	a
 252  0001 2705          	jreq	L511
 253                     ; 83         TIM4->CR1 |= TIM4_CR1_CEN;
 255  0003 72105340      	bset	21312,#0
 258  0007 81            	ret	
 259  0008               L511:
 260                     ; 87         TIM4->CR1 &= (u8)(~TIM4_CR1_CEN);
 262  0008 72115340      	bres	21312,#0
 263                     ; 89 }
 266  000c 81            	ret	
 324                     ; 101 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 324                     ; 102 {
 325                     .text:	section	.text,new
 326  0000               _TIM4_ITConfig:
 328  0000 89            	pushw	x
 329       00000000      OFST:	set	0
 332                     ; 104     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 334                     ; 105     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 336                     ; 107     if (NewState != DISABLE)
 338  0001 9f            	ld	a,xl
 339  0002 4d            	tnz	a
 340  0003 2706          	jreq	L151
 341                     ; 110         TIM4->IER |= (u8)TIM4_IT;
 343  0005 9e            	ld	a,xh
 344  0006 ca5341        	or	a,21313
 346  0009 2006          	jra	L351
 347  000b               L151:
 348                     ; 115         TIM4->IER &= (u8)(~TIM4_IT);
 350  000b 7b01          	ld	a,(OFST+1,sp)
 351  000d 43            	cpl	a
 352  000e c45341        	and	a,21313
 353  0011               L351:
 354  0011 c75341        	ld	21313,a
 355                     ; 117 }
 358  0014 85            	popw	x
 359  0015 81            	ret	
 395                     ; 125 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 395                     ; 126 {
 396                     .text:	section	.text,new
 397  0000               _TIM4_UpdateDisableConfig:
 401                     ; 128     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 403                     ; 131     if (NewState != DISABLE)
 405  0000 4d            	tnz	a
 406  0001 2705          	jreq	L371
 407                     ; 133         TIM4->CR1 |= TIM4_CR1_UDIS;
 409  0003 72125340      	bset	21312,#1
 412  0007 81            	ret	
 413  0008               L371:
 414                     ; 137         TIM4->CR1 &= (u8)(~TIM4_CR1_UDIS);
 416  0008 72135340      	bres	21312,#1
 417                     ; 139 }
 420  000c 81            	ret	
 478                     ; 149 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 478                     ; 150 {
 479                     .text:	section	.text,new
 480  0000               _TIM4_UpdateRequestConfig:
 484                     ; 152     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 486                     ; 155     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 488  0000 4d            	tnz	a
 489  0001 2705          	jreq	L522
 490                     ; 157         TIM4->CR1 |= TIM4_CR1_URS;
 492  0003 72145340      	bset	21312,#2
 495  0007 81            	ret	
 496  0008               L522:
 497                     ; 161         TIM4->CR1 &= (u8)(~TIM4_CR1_URS);
 499  0008 72155340      	bres	21312,#2
 500                     ; 163 }
 503  000c 81            	ret	
 560                     ; 173 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 560                     ; 174 {
 561                     .text:	section	.text,new
 562  0000               _TIM4_SelectOnePulseMode:
 566                     ; 176     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 568                     ; 179     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 570  0000 4d            	tnz	a
 571  0001 2705          	jreq	L752
 572                     ; 181         TIM4->CR1 |= TIM4_CR1_OPM;
 574  0003 72165340      	bset	21312,#3
 577  0007 81            	ret	
 578  0008               L752:
 579                     ; 185         TIM4->CR1 &= (u8)(~TIM4_CR1_OPM);
 581  0008 72175340      	bres	21312,#3
 582                     ; 188 }
 585  000c 81            	ret	
 653                     ; 210 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 653                     ; 211 {
 654                     .text:	section	.text,new
 655  0000               _TIM4_PrescalerConfig:
 659                     ; 213     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 661                     ; 214     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 663                     ; 217     TIM4->PSCR = (u8)Prescaler;
 665  0000 9e            	ld	a,xh
 666  0001 c75345        	ld	21317,a
 667                     ; 220     TIM4->EGR = (u8)TIM4_PSCReloadMode;
 669  0004 9f            	ld	a,xl
 670  0005 c75343        	ld	21315,a
 671                     ; 221 }
 674  0008 81            	ret	
 710                     ; 229 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 710                     ; 230 {
 711                     .text:	section	.text,new
 712  0000               _TIM4_ARRPreloadConfig:
 716                     ; 232     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 718                     ; 235     if (NewState != DISABLE)
 720  0000 4d            	tnz	a
 721  0001 2705          	jreq	L333
 722                     ; 237         TIM4->CR1 |= TIM4_CR1_ARPE;
 724  0003 721e5340      	bset	21312,#7
 727  0007 81            	ret	
 728  0008               L333:
 729                     ; 241         TIM4->CR1 &= (u8)(~TIM4_CR1_ARPE);
 731  0008 721f5340      	bres	21312,#7
 732                     ; 243 }
 735  000c 81            	ret	
 784                     ; 252 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 784                     ; 253 {
 785                     .text:	section	.text,new
 786  0000               _TIM4_GenerateEvent:
 790                     ; 255     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 792                     ; 258     TIM4->EGR = (u8)(TIM4_EventSource);
 794  0000 c75343        	ld	21315,a
 795                     ; 259 }
 798  0003 81            	ret	
 832                     ; 268 void TIM4_SetCounter(u8 Counter)
 832                     ; 269 {
 833                     .text:	section	.text,new
 834  0000               _TIM4_SetCounter:
 838                     ; 271     TIM4->CNTR = (u8)(Counter);
 840  0000 c75344        	ld	21316,a
 841                     ; 272 }
 844  0003 81            	ret	
 878                     ; 281 void TIM4_SetAutoreload(u8 Autoreload)
 878                     ; 282 {
 879                     .text:	section	.text,new
 880  0000               _TIM4_SetAutoreload:
 884                     ; 284     TIM4->ARR = (u8)(Autoreload);
 886  0000 c75346        	ld	21318,a
 887                     ; 285 }
 890  0003 81            	ret	
 913                     ; 293 u8 TIM4_GetCounter(void)
 913                     ; 294 {
 914                     .text:	section	.text,new
 915  0000               _TIM4_GetCounter:
 919                     ; 296     return (u8)(TIM4->CNTR);
 921  0000 c65344        	ld	a,21316
 924  0003 81            	ret	
 948                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 948                     ; 306 {
 949                     .text:	section	.text,new
 950  0000               _TIM4_GetPrescaler:
 954                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
 956  0000 c65345        	ld	a,21317
 959  0003 81            	ret	
1028                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1028                     ; 319 {
1029                     .text:	section	.text,new
1030  0000               _TIM4_GetFlagStatus:
1034                     ; 321     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1036                     ; 323     if ((TIM4->SR1 & TIM4_FLAG) != RESET )
1038  0000 c45342        	and	a,21314
1039  0003 2702          	jreq	L374
1040                     ; 325         return (FlagStatus)(SET);
1042  0005 a601          	ld	a,#1
1045  0007               L374:
1046                     ; 329         return (FlagStatus)(RESET);
1050  0007 81            	ret	
1085                     ; 340 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1085                     ; 341 {
1086                     .text:	section	.text,new
1087  0000               _TIM4_ClearFlag:
1091                     ; 343     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1093                     ; 346     TIM4->SR1 = (u8)(~TIM4_FLAG);
1095  0000 43            	cpl	a
1096  0001 c75342        	ld	21314,a
1097                     ; 348 }
1100  0004 81            	ret	
1136                     ; 357 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1136                     ; 358 {
1137                     .text:	section	.text,new
1138  0000               _TIM4_GetITStatus:
1140  0000 88            	push	a
1141       00000000      OFST:	set	0
1144                     ; 360     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1146                     ; 362     if (((TIM4->SR1 & TIM4_IT) != RESET ) && ((TIM4->IER & TIM4_IT) != RESET ))
1148  0001 c45342        	and	a,21314
1149  0004 270c          	jreq	L335
1151  0006 c65341        	ld	a,21313
1152  0009 1501          	bcp	a,(OFST+1,sp)
1153  000b 2705          	jreq	L335
1154                     ; 364         return (ITStatus)(SET);
1156  000d a601          	ld	a,#1
1159  000f 5b01          	addw	sp,#1
1160  0011 81            	ret	
1161  0012               L335:
1162                     ; 368         return (ITStatus)(RESET);
1164  0012 4f            	clr	a
1167  0013 5b01          	addw	sp,#1
1168  0015 81            	ret	
1204                     ; 379 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1204                     ; 380 {
1205                     .text:	section	.text,new
1206  0000               _TIM4_ClearITPendingBit:
1210                     ; 382     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1212                     ; 385     TIM4->SR1 = (u8)(~TIM4_IT);
1214  0000 43            	cpl	a
1215  0001 c75342        	ld	21314,a
1216                     ; 386 }
1219  0004 81            	ret	
1232                     	xdef	_TIM4_ClearITPendingBit
1233                     	xdef	_TIM4_GetITStatus
1234                     	xdef	_TIM4_ClearFlag
1235                     	xdef	_TIM4_GetFlagStatus
1236                     	xdef	_TIM4_GetPrescaler
1237                     	xdef	_TIM4_GetCounter
1238                     	xdef	_TIM4_SetAutoreload
1239                     	xdef	_TIM4_SetCounter
1240                     	xdef	_TIM4_GenerateEvent
1241                     	xdef	_TIM4_ARRPreloadConfig
1242                     	xdef	_TIM4_PrescalerConfig
1243                     	xdef	_TIM4_SelectOnePulseMode
1244                     	xdef	_TIM4_UpdateRequestConfig
1245                     	xdef	_TIM4_UpdateDisableConfig
1246                     	xdef	_TIM4_ITConfig
1247                     	xdef	_TIM4_Cmd
1248                     	xdef	_TIM4_TimeBaseInit
1249                     	xdef	_TIM4_DeInit
1268                     	end
