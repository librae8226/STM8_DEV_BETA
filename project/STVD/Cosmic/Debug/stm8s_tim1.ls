   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 50 void TIM1_DeInit(void)
  33                     ; 51 {
  35                     .text:	section	.text,new
  36  0000               _TIM1_DeInit:
  40                     ; 52     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  42  0000 725f5250      	clr	21072
  43                     ; 53     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  45  0004 725f5251      	clr	21073
  46                     ; 54     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  48  0008 725f5252      	clr	21074
  49                     ; 55     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  51  000c 725f5253      	clr	21075
  52                     ; 56     TIM1->IER  = TIM1_IER_RESET_VALUE;
  54  0010 725f5254      	clr	21076
  55                     ; 57     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  57  0014 725f5256      	clr	21078
  58                     ; 59     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  60  0018 725f525c      	clr	21084
  61                     ; 60     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  63  001c 725f525d      	clr	21085
  64                     ; 62     TIM1->CCMR1 = 0x01;
  66  0020 35015258      	mov	21080,#1
  67                     ; 63     TIM1->CCMR2 = 0x01;
  69  0024 35015259      	mov	21081,#1
  70                     ; 64     TIM1->CCMR3 = 0x01;
  72  0028 3501525a      	mov	21082,#1
  73                     ; 65     TIM1->CCMR4 = 0x01;
  75  002c 3501525b      	mov	21083,#1
  76                     ; 67     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  78  0030 725f525c      	clr	21084
  79                     ; 68     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  81  0034 725f525d      	clr	21085
  82                     ; 69     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  84  0038 725f5258      	clr	21080
  85                     ; 70     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  87  003c 725f5259      	clr	21081
  88                     ; 71     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  90  0040 725f525a      	clr	21082
  91                     ; 72     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
  93  0044 725f525b      	clr	21083
  94                     ; 73     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
  96  0048 725f525e      	clr	21086
  97                     ; 74     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
  99  004c 725f525f      	clr	21087
 100                     ; 75     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 102  0050 725f5260      	clr	21088
 103                     ; 76     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 105  0054 725f5261      	clr	21089
 106                     ; 77     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 108  0058 35ff5262      	mov	21090,#255
 109                     ; 78     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 111  005c 35ff5263      	mov	21091,#255
 112                     ; 79     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 114  0060 725f5265      	clr	21093
 115                     ; 80     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 117  0064 725f5266      	clr	21094
 118                     ; 81     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 120  0068 725f5267      	clr	21095
 121                     ; 82     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 123  006c 725f5268      	clr	21096
 124                     ; 83     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 126  0070 725f5269      	clr	21097
 127                     ; 84     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 129  0074 725f526a      	clr	21098
 130                     ; 85     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 132  0078 725f526b      	clr	21099
 133                     ; 86     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 135  007c 725f526c      	clr	21100
 136                     ; 87     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 138  0080 725f526f      	clr	21103
 139                     ; 88     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 141  0084 35015257      	mov	21079,#1
 142                     ; 89     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 144  0088 725f526e      	clr	21102
 145                     ; 90     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 147  008c 725f526d      	clr	21101
 148                     ; 91     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 150  0090 725f5264      	clr	21092
 151                     ; 92     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 153  0094 725f5255      	clr	21077
 154                     ; 93 }
 157  0098 81            	ret	
 266                     ; 103 void TIM1_TimeBaseInit(u16 TIM1_Prescaler,
 266                     ; 104                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 266                     ; 105                        u16 TIM1_Period,
 266                     ; 106                        u8 TIM1_RepetitionCounter)
 266                     ; 107 {
 267                     .text:	section	.text,new
 268  0000               _TIM1_TimeBaseInit:
 270  0000 89            	pushw	x
 271       00000000      OFST:	set	0
 274                     ; 110     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 276                     ; 113     TIM1->ARRH = (u8)(TIM1_Period >> 8);
 278  0001 7b06          	ld	a,(OFST+6,sp)
 279  0003 c75262        	ld	21090,a
 280                     ; 114     TIM1->ARRL = (u8)(TIM1_Period);
 282  0006 7b07          	ld	a,(OFST+7,sp)
 283  0008 c75263        	ld	21091,a
 284                     ; 117     TIM1->PSCRH = (u8)(TIM1_Prescaler >> 8);
 286  000b 9e            	ld	a,xh
 287  000c c75260        	ld	21088,a
 288                     ; 118     TIM1->PSCRL = (u8)(TIM1_Prescaler);
 290  000f 9f            	ld	a,xl
 291  0010 c75261        	ld	21089,a
 292                     ; 121     TIM1->CR1 = (u8)(((TIM1->CR1) & (u8)(~(TIM1_CR1_CMS | TIM1_CR1_DIR))) | (u8)(TIM1_CounterMode));
 294  0013 c65250        	ld	a,21072
 295  0016 a48f          	and	a,#143
 296  0018 1a05          	or	a,(OFST+5,sp)
 297  001a c75250        	ld	21072,a
 298                     ; 124     TIM1->RCR = TIM1_RepetitionCounter;
 300  001d 7b08          	ld	a,(OFST+8,sp)
 301  001f c75264        	ld	21092,a
 302                     ; 126 }
 305  0022 85            	popw	x
 306  0023 81            	ret	
 591                     ; 140 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 591                     ; 141                   TIM1_OutputState_TypeDef TIM1_OutputState,
 591                     ; 142                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 591                     ; 143                   u16 TIM1_Pulse,
 591                     ; 144                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 591                     ; 145                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 591                     ; 146                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 591                     ; 147                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 591                     ; 148 {
 592                     .text:	section	.text,new
 593  0000               _TIM1_OC1Init:
 595  0000 89            	pushw	x
 596  0001 5203          	subw	sp,#3
 597       00000003      OFST:	set	3
 600                     ; 150     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 602                     ; 151     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 604                     ; 152     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 606                     ; 153     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 608                     ; 154     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 610                     ; 155     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 612                     ; 156     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 614                     ; 159     TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 616  0003 c6525c        	ld	a,21084
 617  0006 a4f0          	and	a,#240
 618  0008 c7525c        	ld	21084,a
 619                     ; 161     TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC1E  ) | (TIM1_OutputNState & TIM1_CCER1_CC1NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC1P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC1NP ));
 621  000b 7b0c          	ld	a,(OFST+9,sp)
 622  000d a408          	and	a,#8
 623  000f 6b03          	ld	(OFST+0,sp),a
 624  0011 7b0b          	ld	a,(OFST+8,sp)
 625  0013 a402          	and	a,#2
 626  0015 6b02          	ld	(OFST-1,sp),a
 627  0017 7b08          	ld	a,(OFST+5,sp)
 628  0019 a404          	and	a,#4
 629  001b 6b01          	ld	(OFST-2,sp),a
 630  001d 9f            	ld	a,xl
 631  001e a401          	and	a,#1
 632  0020 1a01          	or	a,(OFST-2,sp)
 633  0022 1a02          	or	a,(OFST-1,sp)
 634  0024 1a03          	or	a,(OFST+0,sp)
 635  0026 ca525c        	or	a,21084
 636  0029 c7525c        	ld	21084,a
 637                     ; 164     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 639  002c c65258        	ld	a,21080
 640  002f a48f          	and	a,#143
 641  0031 1a04          	or	a,(OFST+1,sp)
 642  0033 c75258        	ld	21080,a
 643                     ; 167     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 645  0036 c6526f        	ld	a,21103
 646  0039 a4fc          	and	a,#252
 647  003b c7526f        	ld	21103,a
 648                     ; 169     TIM1->OISR |= (u8)(( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | ( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 650  003e 7b0e          	ld	a,(OFST+11,sp)
 651  0040 a402          	and	a,#2
 652  0042 6b03          	ld	(OFST+0,sp),a
 653  0044 7b0d          	ld	a,(OFST+10,sp)
 654  0046 a401          	and	a,#1
 655  0048 1a03          	or	a,(OFST+0,sp)
 656  004a ca526f        	or	a,21103
 657  004d c7526f        	ld	21103,a
 658                     ; 172     TIM1->CCR1H = (u8)(TIM1_Pulse >> 8);
 660  0050 7b09          	ld	a,(OFST+6,sp)
 661  0052 c75265        	ld	21093,a
 662                     ; 173     TIM1->CCR1L = (u8)(TIM1_Pulse);
 664  0055 7b0a          	ld	a,(OFST+7,sp)
 665  0057 c75266        	ld	21094,a
 666                     ; 174 }
 669  005a 5b05          	addw	sp,#5
 670  005c 81            	ret	
 774                     ; 188 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 774                     ; 189                   TIM1_OutputState_TypeDef TIM1_OutputState,
 774                     ; 190                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 774                     ; 191                   u16 TIM1_Pulse,
 774                     ; 192                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 774                     ; 193                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 774                     ; 194                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 774                     ; 195                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 774                     ; 196 {
 775                     .text:	section	.text,new
 776  0000               _TIM1_OC2Init:
 778  0000 89            	pushw	x
 779  0001 5203          	subw	sp,#3
 780       00000003      OFST:	set	3
 783                     ; 200     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 785                     ; 201     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 787                     ; 202     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 789                     ; 203     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 791                     ; 204     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 793                     ; 205     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 795                     ; 206     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 797                     ; 209     TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 799  0003 c6525c        	ld	a,21084
 800  0006 a40f          	and	a,#15
 801  0008 c7525c        	ld	21084,a
 802                     ; 211     TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC2E  ) | (TIM1_OutputNState & TIM1_CCER1_CC2NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC2NP ));
 804  000b 7b0c          	ld	a,(OFST+9,sp)
 805  000d a480          	and	a,#128
 806  000f 6b03          	ld	(OFST+0,sp),a
 807  0011 7b0b          	ld	a,(OFST+8,sp)
 808  0013 a420          	and	a,#32
 809  0015 6b02          	ld	(OFST-1,sp),a
 810  0017 7b08          	ld	a,(OFST+5,sp)
 811  0019 a440          	and	a,#64
 812  001b 6b01          	ld	(OFST-2,sp),a
 813  001d 9f            	ld	a,xl
 814  001e a410          	and	a,#16
 815  0020 1a01          	or	a,(OFST-2,sp)
 816  0022 1a02          	or	a,(OFST-1,sp)
 817  0024 1a03          	or	a,(OFST+0,sp)
 818  0026 ca525c        	or	a,21084
 819  0029 c7525c        	ld	21084,a
 820                     ; 215     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 822  002c c65259        	ld	a,21081
 823  002f a48f          	and	a,#143
 824  0031 1a04          	or	a,(OFST+1,sp)
 825  0033 c75259        	ld	21081,a
 826                     ; 218     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 828  0036 c6526f        	ld	a,21103
 829  0039 a4f3          	and	a,#243
 830  003b c7526f        	ld	21103,a
 831                     ; 220     TIM1->OISR |= (u8)((TIM1_OISR_OIS2 & TIM1_OCIdleState) | (TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 833  003e 7b0e          	ld	a,(OFST+11,sp)
 834  0040 a408          	and	a,#8
 835  0042 6b03          	ld	(OFST+0,sp),a
 836  0044 7b0d          	ld	a,(OFST+10,sp)
 837  0046 a404          	and	a,#4
 838  0048 1a03          	or	a,(OFST+0,sp)
 839  004a ca526f        	or	a,21103
 840  004d c7526f        	ld	21103,a
 841                     ; 223     TIM1->CCR2H = (u8)(TIM1_Pulse >> 8);
 843  0050 7b09          	ld	a,(OFST+6,sp)
 844  0052 c75267        	ld	21095,a
 845                     ; 224     TIM1->CCR2L = (u8)(TIM1_Pulse);
 847  0055 7b0a          	ld	a,(OFST+7,sp)
 848  0057 c75268        	ld	21096,a
 849                     ; 226 }
 852  005a 5b05          	addw	sp,#5
 853  005c 81            	ret	
 957                     ; 240 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 957                     ; 241                   TIM1_OutputState_TypeDef TIM1_OutputState,
 957                     ; 242                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 957                     ; 243                   u16 TIM1_Pulse,
 957                     ; 244                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 957                     ; 245                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 957                     ; 246                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 957                     ; 247                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 957                     ; 248 {
 958                     .text:	section	.text,new
 959  0000               _TIM1_OC3Init:
 961  0000 89            	pushw	x
 962  0001 5203          	subw	sp,#3
 963       00000003      OFST:	set	3
 966                     ; 251     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 968                     ; 252     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 970                     ; 253     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 972                     ; 254     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 974                     ; 255     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 976                     ; 256     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 978                     ; 257     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 980                     ; 260     TIM1->CCER2 &= (u8)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 982  0003 c6525d        	ld	a,21085
 983  0006 a4f0          	and	a,#240
 984  0008 c7525d        	ld	21085,a
 985                     ; 262     TIM1->CCER2 |= (u8)((TIM1_OutputState  & TIM1_CCER2_CC3E   ) |                 (TIM1_OutputNState & TIM1_CCER2_CC3NE  ) | (TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | (TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  ));
 987  000b 7b0c          	ld	a,(OFST+9,sp)
 988  000d a408          	and	a,#8
 989  000f 6b03          	ld	(OFST+0,sp),a
 990  0011 7b0b          	ld	a,(OFST+8,sp)
 991  0013 a402          	and	a,#2
 992  0015 6b02          	ld	(OFST-1,sp),a
 993  0017 7b08          	ld	a,(OFST+5,sp)
 994  0019 a404          	and	a,#4
 995  001b 6b01          	ld	(OFST-2,sp),a
 996  001d 9f            	ld	a,xl
 997  001e a401          	and	a,#1
 998  0020 1a01          	or	a,(OFST-2,sp)
 999  0022 1a02          	or	a,(OFST-1,sp)
1000  0024 1a03          	or	a,(OFST+0,sp)
1001  0026 ca525d        	or	a,21085
1002  0029 c7525d        	ld	21085,a
1003                     ; 267     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
1005  002c c6525a        	ld	a,21082
1006  002f a48f          	and	a,#143
1007  0031 1a04          	or	a,(OFST+1,sp)
1008  0033 c7525a        	ld	21082,a
1009                     ; 270     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1011  0036 c6526f        	ld	a,21103
1012  0039 a4cf          	and	a,#207
1013  003b c7526f        	ld	21103,a
1014                     ; 272     TIM1->OISR |= (u8)((TIM1_OISR_OIS3 & TIM1_OCIdleState) | (TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1016  003e 7b0e          	ld	a,(OFST+11,sp)
1017  0040 a420          	and	a,#32
1018  0042 6b03          	ld	(OFST+0,sp),a
1019  0044 7b0d          	ld	a,(OFST+10,sp)
1020  0046 a410          	and	a,#16
1021  0048 1a03          	or	a,(OFST+0,sp)
1022  004a ca526f        	or	a,21103
1023  004d c7526f        	ld	21103,a
1024                     ; 275     TIM1->CCR3H = (u8)(TIM1_Pulse >> 8);
1026  0050 7b09          	ld	a,(OFST+6,sp)
1027  0052 c75269        	ld	21097,a
1028                     ; 276     TIM1->CCR3L = (u8)(TIM1_Pulse);
1030  0055 7b0a          	ld	a,(OFST+7,sp)
1031  0057 c7526a        	ld	21098,a
1032                     ; 278 }
1035  005a 5b05          	addw	sp,#5
1036  005c 81            	ret	
1110                     ; 289 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1110                     ; 290                   TIM1_OutputState_TypeDef TIM1_OutputState,
1110                     ; 291                   u16 TIM1_Pulse,
1110                     ; 292                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1110                     ; 293                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1110                     ; 294 {
1111                     .text:	section	.text,new
1112  0000               _TIM1_OC4Init:
1114  0000 89            	pushw	x
1115  0001 88            	push	a
1116       00000001      OFST:	set	1
1119                     ; 297     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1121                     ; 298     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1123                     ; 299     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1125                     ; 300     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1127                     ; 305     TIM1->CCER2 &= (u8)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1129  0002 c6525d        	ld	a,21085
1130  0005 a4cf          	and	a,#207
1131  0007 c7525d        	ld	21085,a
1132                     ; 307     TIM1->CCER2 |= (u8)((TIM1_OutputState & TIM1_CCER2_CC4E ) |  (TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1134  000a 7b08          	ld	a,(OFST+7,sp)
1135  000c a420          	and	a,#32
1136  000e 6b01          	ld	(OFST+0,sp),a
1137  0010 9f            	ld	a,xl
1138  0011 a410          	and	a,#16
1139  0013 1a01          	or	a,(OFST+0,sp)
1140  0015 ca525d        	or	a,21085
1141  0018 c7525d        	ld	21085,a
1142                     ; 310     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (TIM1_OCMode));
1144  001b c6525b        	ld	a,21083
1145  001e a48f          	and	a,#143
1146  0020 1a02          	or	a,(OFST+1,sp)
1147  0022 c7525b        	ld	21083,a
1148                     ; 313     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1150  0025 7b09          	ld	a,(OFST+8,sp)
1151  0027 270a          	jreq	L534
1152                     ; 315         TIM1->OISR |= (u8)(~TIM1_CCER2_CC4P);
1154  0029 c6526f        	ld	a,21103
1155  002c aadf          	or	a,#223
1156  002e c7526f        	ld	21103,a
1158  0031 2004          	jra	L734
1159  0033               L534:
1160                     ; 319         TIM1->OISR &= (u8)(~TIM1_OISR_OIS4);
1162  0033 721d526f      	bres	21103,#6
1163  0037               L734:
1164                     ; 323     TIM1->CCR4H = (u8)(TIM1_Pulse >> 8);
1166  0037 7b06          	ld	a,(OFST+5,sp)
1167  0039 c7526b        	ld	21099,a
1168                     ; 324     TIM1->CCR4L = (u8)(TIM1_Pulse);
1170  003c 7b07          	ld	a,(OFST+6,sp)
1171  003e c7526c        	ld	21100,a
1172                     ; 326 }
1175  0041 5b03          	addw	sp,#3
1176  0043 81            	ret	
1381                     ; 339 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1381                     ; 340                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1381                     ; 341                      u8 TIM1_DeadTime,
1381                     ; 342                      TIM1_BreakState_TypeDef TIM1_Break,
1381                     ; 343                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1381                     ; 344                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1381                     ; 345 {
1382                     .text:	section	.text,new
1383  0000               _TIM1_BDTRConfig:
1385  0000 89            	pushw	x
1386       00000000      OFST:	set	0
1389                     ; 349     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1391                     ; 350     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1393                     ; 351     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1395                     ; 352     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1397                     ; 353     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1399                     ; 356     TIM1->DTR = (u8)(TIM1_DeadTime);
1401  0001 7b05          	ld	a,(OFST+5,sp)
1402  0003 c7526e        	ld	21102,a
1403                     ; 360     TIM1->BKR  =  (u8)((u8)TIM1_OSSIState       | \
1403                     ; 361                        (u8)TIM1_LockLevel       | \
1403                     ; 362                        (u8)TIM1_Break           | \
1403                     ; 363                        (u8)TIM1_BreakPolarity   | \
1403                     ; 364                        (u8)TIM1_AutomaticOutput);
1405  0006 9f            	ld	a,xl
1406  0007 1a01          	or	a,(OFST+1,sp)
1407  0009 1a06          	or	a,(OFST+6,sp)
1408  000b 1a07          	or	a,(OFST+7,sp)
1409  000d 1a08          	or	a,(OFST+8,sp)
1410  000f c7526d        	ld	21101,a
1411                     ; 366 }
1414  0012 85            	popw	x
1415  0013 81            	ret	
1617                     ; 378 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1617                     ; 379                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1617                     ; 380                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1617                     ; 381                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1617                     ; 382                  u8 TIM1_ICFilter)
1617                     ; 383 {
1618                     .text:	section	.text,new
1619  0000               _TIM1_ICInit:
1621  0000 89            	pushw	x
1622       00000000      OFST:	set	0
1625                     ; 386     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1627                     ; 387     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1629                     ; 388     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1631                     ; 389     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1633                     ; 390     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1635                     ; 392     if (TIM1_Channel == TIM1_CHANNEL_1)
1637  0001 9e            	ld	a,xh
1638  0002 4d            	tnz	a
1639  0003 2614          	jrne	L766
1640                     ; 395         TI1_Config((u8)TIM1_ICPolarity,
1640                     ; 396                    (u8)TIM1_ICSelection,
1640                     ; 397                    (u8)TIM1_ICFilter);
1642  0005 7b07          	ld	a,(OFST+7,sp)
1643  0007 88            	push	a
1644  0008 7b06          	ld	a,(OFST+6,sp)
1645  000a 97            	ld	xl,a
1646  000b 7b03          	ld	a,(OFST+3,sp)
1647  000d 95            	ld	xh,a
1648  000e cd0000        	call	L3_TI1_Config
1650  0011 84            	pop	a
1651                     ; 399         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1653  0012 7b06          	ld	a,(OFST+6,sp)
1654  0014 cd0000        	call	_TIM1_SetIC1Prescaler
1657  0017 2044          	jra	L176
1658  0019               L766:
1659                     ; 401     else if (TIM1_Channel == TIM1_CHANNEL_2)
1661  0019 7b01          	ld	a,(OFST+1,sp)
1662  001b a101          	cp	a,#1
1663  001d 2614          	jrne	L376
1664                     ; 404         TI2_Config((u8)TIM1_ICPolarity,
1664                     ; 405                    (u8)TIM1_ICSelection,
1664                     ; 406                    (u8)TIM1_ICFilter);
1666  001f 7b07          	ld	a,(OFST+7,sp)
1667  0021 88            	push	a
1668  0022 7b06          	ld	a,(OFST+6,sp)
1669  0024 97            	ld	xl,a
1670  0025 7b03          	ld	a,(OFST+3,sp)
1671  0027 95            	ld	xh,a
1672  0028 cd0000        	call	L5_TI2_Config
1674  002b 84            	pop	a
1675                     ; 408         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1677  002c 7b06          	ld	a,(OFST+6,sp)
1678  002e cd0000        	call	_TIM1_SetIC2Prescaler
1681  0031 202a          	jra	L176
1682  0033               L376:
1683                     ; 410     else if (TIM1_Channel == TIM1_CHANNEL_3)
1685  0033 a102          	cp	a,#2
1686  0035 2614          	jrne	L776
1687                     ; 413         TI3_Config((u8)TIM1_ICPolarity,
1687                     ; 414                    (u8)TIM1_ICSelection,
1687                     ; 415                    (u8)TIM1_ICFilter);
1689  0037 7b07          	ld	a,(OFST+7,sp)
1690  0039 88            	push	a
1691  003a 7b06          	ld	a,(OFST+6,sp)
1692  003c 97            	ld	xl,a
1693  003d 7b03          	ld	a,(OFST+3,sp)
1694  003f 95            	ld	xh,a
1695  0040 cd0000        	call	L7_TI3_Config
1697  0043 84            	pop	a
1698                     ; 417         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1700  0044 7b06          	ld	a,(OFST+6,sp)
1701  0046 cd0000        	call	_TIM1_SetIC3Prescaler
1704  0049 2012          	jra	L176
1705  004b               L776:
1706                     ; 422         TI4_Config((u8)TIM1_ICPolarity,
1706                     ; 423                    (u8)TIM1_ICSelection,
1706                     ; 424                    (u8)TIM1_ICFilter);
1708  004b 7b07          	ld	a,(OFST+7,sp)
1709  004d 88            	push	a
1710  004e 7b06          	ld	a,(OFST+6,sp)
1711  0050 97            	ld	xl,a
1712  0051 7b03          	ld	a,(OFST+3,sp)
1713  0053 95            	ld	xh,a
1714  0054 cd0000        	call	L11_TI4_Config
1716  0057 84            	pop	a
1717                     ; 426         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1719  0058 7b06          	ld	a,(OFST+6,sp)
1720  005a cd0000        	call	_TIM1_SetIC4Prescaler
1722  005d               L176:
1723                     ; 429 }
1726  005d 85            	popw	x
1727  005e 81            	ret	
1823                     ; 440 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1823                     ; 441                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1823                     ; 442                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1823                     ; 443                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1823                     ; 444                      u8 TIM1_ICFilter)
1823                     ; 445 {
1824                     .text:	section	.text,new
1825  0000               _TIM1_PWMIConfig:
1827  0000 89            	pushw	x
1828  0001 89            	pushw	x
1829       00000002      OFST:	set	2
1832                     ; 446     u8 icpolarity = TIM1_ICPOLARITY_RISING;
1834                     ; 447     u8 icselection = TIM1_ICSELECTION_DIRECTTI;
1836                     ; 450     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1838                     ; 451     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1840                     ; 452     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1842                     ; 453     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1844                     ; 456     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1846  0002 7b04          	ld	a,(OFST+2,sp)
1847  0004 4a            	dec	a
1848  0005 2702          	jreq	L157
1849                     ; 458         icpolarity = TIM1_ICPOLARITY_FALLING;
1851  0007 a601          	ld	a,#1
1853  0009               L157:
1854                     ; 462         icpolarity = TIM1_ICPOLARITY_RISING;
1856  0009 6b01          	ld	(OFST-1,sp),a
1857                     ; 466     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1859  000b 7b07          	ld	a,(OFST+5,sp)
1860  000d 4a            	dec	a
1861  000e 2604          	jrne	L557
1862                     ; 468         icselection = TIM1_ICSELECTION_INDIRECTTI;
1864  0010 a602          	ld	a,#2
1866  0012 2002          	jra	L757
1867  0014               L557:
1868                     ; 472         icselection = TIM1_ICSELECTION_DIRECTTI;
1870  0014 a601          	ld	a,#1
1871  0016               L757:
1872  0016 6b02          	ld	(OFST+0,sp),a
1873                     ; 475     if (TIM1_Channel == TIM1_CHANNEL_1)
1875  0018 7b03          	ld	a,(OFST+1,sp)
1876  001a 2626          	jrne	L167
1877                     ; 478         TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
1877                     ; 479                    (u8)TIM1_ICFilter);
1879  001c 7b09          	ld	a,(OFST+7,sp)
1880  001e 88            	push	a
1881  001f 7b08          	ld	a,(OFST+6,sp)
1882  0021 97            	ld	xl,a
1883  0022 7b05          	ld	a,(OFST+3,sp)
1884  0024 95            	ld	xh,a
1885  0025 cd0000        	call	L3_TI1_Config
1887  0028 84            	pop	a
1888                     ; 482         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1890  0029 7b08          	ld	a,(OFST+6,sp)
1891  002b cd0000        	call	_TIM1_SetIC1Prescaler
1893                     ; 485         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1895  002e 7b09          	ld	a,(OFST+7,sp)
1896  0030 88            	push	a
1897  0031 7b03          	ld	a,(OFST+1,sp)
1898  0033 97            	ld	xl,a
1899  0034 7b02          	ld	a,(OFST+0,sp)
1900  0036 95            	ld	xh,a
1901  0037 cd0000        	call	L5_TI2_Config
1903  003a 84            	pop	a
1904                     ; 488         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1906  003b 7b08          	ld	a,(OFST+6,sp)
1907  003d cd0000        	call	_TIM1_SetIC2Prescaler
1910  0040 2024          	jra	L367
1911  0042               L167:
1912                     ; 493         TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
1912                     ; 494                    (u8)TIM1_ICFilter);
1914  0042 7b09          	ld	a,(OFST+7,sp)
1915  0044 88            	push	a
1916  0045 7b08          	ld	a,(OFST+6,sp)
1917  0047 97            	ld	xl,a
1918  0048 7b05          	ld	a,(OFST+3,sp)
1919  004a 95            	ld	xh,a
1920  004b cd0000        	call	L5_TI2_Config
1922  004e 84            	pop	a
1923                     ; 497         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1925  004f 7b08          	ld	a,(OFST+6,sp)
1926  0051 cd0000        	call	_TIM1_SetIC2Prescaler
1928                     ; 500         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1930  0054 7b09          	ld	a,(OFST+7,sp)
1931  0056 88            	push	a
1932  0057 7b03          	ld	a,(OFST+1,sp)
1933  0059 97            	ld	xl,a
1934  005a 7b02          	ld	a,(OFST+0,sp)
1935  005c 95            	ld	xh,a
1936  005d cd0000        	call	L3_TI1_Config
1938  0060 84            	pop	a
1939                     ; 503         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1941  0061 7b08          	ld	a,(OFST+6,sp)
1942  0063 cd0000        	call	_TIM1_SetIC1Prescaler
1944  0066               L367:
1945                     ; 505 }
1948  0066 5b04          	addw	sp,#4
1949  0068 81            	ret	
2004                     ; 514 void TIM1_Cmd(FunctionalState NewState)
2004                     ; 515 {
2005                     .text:	section	.text,new
2006  0000               _TIM1_Cmd:
2010                     ; 517     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2012                     ; 520     if (NewState != DISABLE)
2014  0000 4d            	tnz	a
2015  0001 2705          	jreq	L3101
2016                     ; 522         TIM1->CR1 |= TIM1_CR1_CEN;
2018  0003 72105250      	bset	21072,#0
2021  0007 81            	ret	
2022  0008               L3101:
2023                     ; 526         TIM1->CR1 &= (u8)(~TIM1_CR1_CEN);
2025  0008 72115250      	bres	21072,#0
2026                     ; 528 }
2029  000c 81            	ret	
2065                     ; 537 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2065                     ; 538 {
2066                     .text:	section	.text,new
2067  0000               _TIM1_CtrlPWMOutputs:
2071                     ; 540     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2073                     ; 544     if (NewState != DISABLE)
2075  0000 4d            	tnz	a
2076  0001 2705          	jreq	L5301
2077                     ; 546         TIM1->BKR |= TIM1_BKR_MOE;
2079  0003 721e526d      	bset	21101,#7
2082  0007 81            	ret	
2083  0008               L5301:
2084                     ; 550         TIM1->BKR &= (u8)(~TIM1_BKR_MOE);
2086  0008 721f526d      	bres	21101,#7
2087                     ; 552 }
2090  000c 81            	ret	
2197                     ; 572 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2197                     ; 573 {
2198                     .text:	section	.text,new
2199  0000               _TIM1_ITConfig:
2201  0000 89            	pushw	x
2202       00000000      OFST:	set	0
2205                     ; 575     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2207                     ; 576     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2209                     ; 578     if (NewState != DISABLE)
2211  0001 9f            	ld	a,xl
2212  0002 4d            	tnz	a
2213  0003 2706          	jreq	L7011
2214                     ; 581         TIM1->IER |= (u8)TIM1_IT;
2216  0005 9e            	ld	a,xh
2217  0006 ca5254        	or	a,21076
2219  0009 2006          	jra	L1111
2220  000b               L7011:
2221                     ; 586         TIM1->IER &= (u8)(~(u8)TIM1_IT);
2223  000b 7b01          	ld	a,(OFST+1,sp)
2224  000d 43            	cpl	a
2225  000e c45254        	and	a,21076
2226  0011               L1111:
2227  0011 c75254        	ld	21076,a
2228                     ; 588 }
2231  0014 85            	popw	x
2232  0015 81            	ret	
2256                     ; 597 void TIM1_InternalClockConfig(void)
2256                     ; 598 {
2257                     .text:	section	.text,new
2258  0000               _TIM1_InternalClockConfig:
2262                     ; 600     TIM1->SMCR &= (u8)(~TIM1_SMCR_SMS);
2264  0000 c65252        	ld	a,21074
2265  0003 a4f8          	and	a,#248
2266  0005 c75252        	ld	21074,a
2267                     ; 601 }
2270  0008 81            	ret	
2387                     ; 620 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2387                     ; 621                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2387                     ; 622                               u8 ExtTRGFilter)
2387                     ; 623 {
2388                     .text:	section	.text,new
2389  0000               _TIM1_ETRClockMode1Config:
2391  0000 89            	pushw	x
2392       00000000      OFST:	set	0
2395                     ; 625     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2397                     ; 626     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2399                     ; 629     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2401  0001 7b05          	ld	a,(OFST+5,sp)
2402  0003 88            	push	a
2403  0004 7b02          	ld	a,(OFST+2,sp)
2404  0006 95            	ld	xh,a
2405  0007 cd0000        	call	_TIM1_ETRConfig
2407  000a 84            	pop	a
2408                     ; 632     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~(TIM1_SMCR_SMS | TIM1_SMCR_TS ))) | (u8)(  TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2410  000b c65252        	ld	a,21074
2411  000e aa77          	or	a,#119
2412  0010 c75252        	ld	21074,a
2413                     ; 633 }
2416  0013 85            	popw	x
2417  0014 81            	ret	
2475                     ; 652 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2475                     ; 653                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2475                     ; 654                               u8 ExtTRGFilter)
2475                     ; 655 {
2476                     .text:	section	.text,new
2477  0000               _TIM1_ETRClockMode2Config:
2479  0000 89            	pushw	x
2480       00000000      OFST:	set	0
2483                     ; 657     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2485                     ; 658     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2487                     ; 661     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2489  0001 7b05          	ld	a,(OFST+5,sp)
2490  0003 88            	push	a
2491  0004 7b02          	ld	a,(OFST+2,sp)
2492  0006 95            	ld	xh,a
2493  0007 cd0000        	call	_TIM1_ETRConfig
2495  000a 721c5253      	bset	21075,#6
2496  000e 84            	pop	a
2497                     ; 664     TIM1->ETR |= TIM1_ETR_ECE;
2499                     ; 665 }
2502  000f 85            	popw	x
2503  0010 81            	ret	
2559                     ; 684 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2559                     ; 685                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2559                     ; 686                     u8 ExtTRGFilter)
2559                     ; 687 {
2560                     .text:	section	.text,new
2561  0000               _TIM1_ETRConfig:
2563  0000 89            	pushw	x
2564       00000000      OFST:	set	0
2567                     ; 689     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2569                     ; 691     TIM1->ETR |= (u8)((u8)TIM1_ExtTRGPrescaler |
2569                     ; 692                       (u8)TIM1_ExtTRGPolarity  |
2569                     ; 693                       (u8)ExtTRGFilter          );
2571  0001 9f            	ld	a,xl
2572  0002 1a01          	or	a,(OFST+1,sp)
2573  0004 1a05          	or	a,(OFST+5,sp)
2574  0006 ca5253        	or	a,21075
2575  0009 c75253        	ld	21075,a
2576                     ; 694 }
2579  000c 85            	popw	x
2580  000d 81            	ret	
2669                     ; 716 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2669                     ; 717                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2669                     ; 718                                  u8 ICFilter)
2669                     ; 719 {
2670                     .text:	section	.text,new
2671  0000               _TIM1_TIxExternalClockConfig:
2673  0000 89            	pushw	x
2674       00000000      OFST:	set	0
2677                     ; 721     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2679                     ; 722     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2681                     ; 723     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2683                     ; 726     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2685  0001 9e            	ld	a,xh
2686  0002 a160          	cp	a,#96
2687  0004 260e          	jrne	L1131
2688                     ; 728         TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
2690  0006 7b05          	ld	a,(OFST+5,sp)
2691  0008 88            	push	a
2692  0009 ae0001        	ldw	x,#1
2693  000c 7b03          	ld	a,(OFST+3,sp)
2694  000e 95            	ld	xh,a
2695  000f cd0000        	call	L5_TI2_Config
2698  0012 200c          	jra	L3131
2699  0014               L1131:
2700                     ; 732         TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
2702  0014 7b05          	ld	a,(OFST+5,sp)
2703  0016 88            	push	a
2704  0017 ae0001        	ldw	x,#1
2705  001a 7b03          	ld	a,(OFST+3,sp)
2706  001c 95            	ld	xh,a
2707  001d cd0000        	call	L3_TI1_Config
2709  0020               L3131:
2710  0020 84            	pop	a
2711                     ; 736     TIM1_SelectInputTrigger(TIM1_TIxExternalCLKSource);
2713  0021 7b01          	ld	a,(OFST+1,sp)
2714  0023 cd0000        	call	_TIM1_SelectInputTrigger
2716                     ; 739     TIM1->SMCR |= (u8)(TIM1_SLAVEMODE_EXTERNAL1);
2718  0026 c65252        	ld	a,21074
2719  0029 aa07          	or	a,#7
2720  002b c75252        	ld	21074,a
2721                     ; 740 }
2724  002e 85            	popw	x
2725  002f 81            	ret	
2810                     ; 752 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2810                     ; 753 {
2811                     .text:	section	.text,new
2812  0000               _TIM1_SelectInputTrigger:
2814  0000 88            	push	a
2815       00000000      OFST:	set	0
2818                     ; 755     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2820                     ; 758     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~TIM1_SMCR_TS)) | (u8)TIM1_InputTriggerSource);
2822  0001 c65252        	ld	a,21074
2823  0004 a48f          	and	a,#143
2824  0006 1a01          	or	a,(OFST+1,sp)
2825  0008 c75252        	ld	21074,a
2826                     ; 759 }
2829  000b 84            	pop	a
2830  000c 81            	ret	
2866                     ; 769 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2866                     ; 770 {
2867                     .text:	section	.text,new
2868  0000               _TIM1_UpdateDisableConfig:
2872                     ; 772     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2874                     ; 775     if (NewState != DISABLE)
2876  0000 4d            	tnz	a
2877  0001 2705          	jreq	L1731
2878                     ; 777         TIM1->CR1 |= TIM1_CR1_UDIS;
2880  0003 72125250      	bset	21072,#1
2883  0007 81            	ret	
2884  0008               L1731:
2885                     ; 781         TIM1->CR1 &= (u8)(~TIM1_CR1_UDIS);
2887  0008 72135250      	bres	21072,#1
2888                     ; 783 }
2891  000c 81            	ret	
2949                     ; 793 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2949                     ; 794 {
2950                     .text:	section	.text,new
2951  0000               _TIM1_UpdateRequestConfig:
2955                     ; 796     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2957                     ; 799     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2959  0000 4d            	tnz	a
2960  0001 2705          	jreq	L3241
2961                     ; 801         TIM1->CR1 |= TIM1_CR1_URS;
2963  0003 72145250      	bset	21072,#2
2966  0007 81            	ret	
2967  0008               L3241:
2968                     ; 805         TIM1->CR1 &= (u8)(~TIM1_CR1_URS);
2970  0008 72155250      	bres	21072,#2
2971                     ; 807 }
2974  000c 81            	ret	
3010                     ; 816 void TIM1_SelectHallSensor(FunctionalState NewState)
3010                     ; 817 {
3011                     .text:	section	.text,new
3012  0000               _TIM1_SelectHallSensor:
3016                     ; 819     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3018                     ; 822     if (NewState != DISABLE)
3020  0000 4d            	tnz	a
3021  0001 2705          	jreq	L5441
3022                     ; 824         TIM1->CR2 |= TIM1_CR2_TI1S;
3024  0003 721e5251      	bset	21073,#7
3027  0007 81            	ret	
3028  0008               L5441:
3029                     ; 828         TIM1->CR2 &= (u8)(~TIM1_CR2_TI1S);
3031  0008 721f5251      	bres	21073,#7
3032                     ; 830 }
3035  000c 81            	ret	
3092                     ; 841 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3092                     ; 842 {
3093                     .text:	section	.text,new
3094  0000               _TIM1_SelectOnePulseMode:
3098                     ; 844     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3100                     ; 847     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3102  0000 4d            	tnz	a
3103  0001 2705          	jreq	L7741
3104                     ; 849         TIM1->CR1 |= TIM1_CR1_OPM;
3106  0003 72165250      	bset	21072,#3
3109  0007 81            	ret	
3110  0008               L7741:
3111                     ; 853         TIM1->CR1 &= (u8)(~TIM1_CR1_OPM);
3113  0008 72175250      	bres	21072,#3
3114                     ; 856 }
3117  000c 81            	ret	
3215                     ; 872 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3215                     ; 873 {
3216                     .text:	section	.text,new
3217  0000               _TIM1_SelectOutputTrigger:
3219  0000 88            	push	a
3220       00000000      OFST:	set	0
3223                     ; 876     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3225                     ; 878     TIM1->CR2 = (u8)((TIM1->CR2 & (u8)(~TIM1_CR2_MMS    )) | (u8)  TIM1_TRGOSource);
3227  0001 c65251        	ld	a,21073
3228  0004 a48f          	and	a,#143
3229  0006 1a01          	or	a,(OFST+1,sp)
3230  0008 c75251        	ld	21073,a
3231                     ; 879 }
3234  000b 84            	pop	a
3235  000c 81            	ret	
3309                     ; 891 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3309                     ; 892 {
3310                     .text:	section	.text,new
3311  0000               _TIM1_SelectSlaveMode:
3313  0000 88            	push	a
3314       00000000      OFST:	set	0
3317                     ; 895     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3319                     ; 898     TIM1->SMCR = (u8)((TIM1->SMCR &  (u8)(~TIM1_SMCR_SMS)) |  (u8)TIM1_SlaveMode);
3321  0001 c65252        	ld	a,21074
3322  0004 a4f8          	and	a,#248
3323  0006 1a01          	or	a,(OFST+1,sp)
3324  0008 c75252        	ld	21074,a
3325                     ; 900 }
3328  000b 84            	pop	a
3329  000c 81            	ret	
3365                     ; 908 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3365                     ; 909 {
3366                     .text:	section	.text,new
3367  0000               _TIM1_SelectMasterSlaveMode:
3371                     ; 911     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3373                     ; 914     if (NewState != DISABLE)
3375  0000 4d            	tnz	a
3376  0001 2705          	jreq	L3161
3377                     ; 916         TIM1->SMCR |= TIM1_SMCR_MSM;
3379  0003 721e5252      	bset	21074,#7
3382  0007 81            	ret	
3383  0008               L3161:
3384                     ; 920         TIM1->SMCR &= (u8)(~TIM1_SMCR_MSM);
3386  0008 721f5252      	bres	21074,#7
3387                     ; 922 }
3390  000c 81            	ret	
3476                     ; 944 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3476                     ; 945                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3476                     ; 946                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3476                     ; 947 {
3477                     .text:	section	.text,new
3478  0000               _TIM1_EncoderInterfaceConfig:
3480  0000 89            	pushw	x
3481       00000000      OFST:	set	0
3484                     ; 951     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3486                     ; 952     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3488                     ; 953     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3490                     ; 956     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3492  0001 9f            	ld	a,xl
3493  0002 4d            	tnz	a
3494  0003 2706          	jreq	L7561
3495                     ; 958         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3497  0005 7212525c      	bset	21084,#1
3499  0009 2004          	jra	L1661
3500  000b               L7561:
3501                     ; 962         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
3503  000b 7213525c      	bres	21084,#1
3504  000f               L1661:
3505                     ; 965     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3507  000f 7b05          	ld	a,(OFST+5,sp)
3508  0011 2706          	jreq	L3661
3509                     ; 967         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3511  0013 721a525c      	bset	21084,#5
3513  0017 2004          	jra	L5661
3514  0019               L3661:
3515                     ; 971         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
3517  0019 721b525c      	bres	21084,#5
3518  001d               L5661:
3519                     ; 974     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(TIM1_SMCR_MSM | TIM1_SMCR_TS)) | (u8) TIM1_EncoderMode);
3521  001d c65252        	ld	a,21074
3522  0020 a4f0          	and	a,#240
3523  0022 1a01          	or	a,(OFST+1,sp)
3524  0024 c75252        	ld	21074,a
3525                     ; 977     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_CCxS))  | (u8) CCMR_TIxDirect_Set);
3527  0027 c65258        	ld	a,21080
3528  002a a4fc          	and	a,#252
3529  002c aa01          	or	a,#1
3530  002e c75258        	ld	21080,a
3531                     ; 978     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_CCxS)) | (u8) CCMR_TIxDirect_Set);
3533  0031 c65259        	ld	a,21081
3534  0034 a4fc          	and	a,#252
3535  0036 aa01          	or	a,#1
3536  0038 c75259        	ld	21081,a
3537                     ; 980 }
3540  003b 85            	popw	x
3541  003c 81            	ret	
3608                     ; 993 void TIM1_PrescalerConfig(u16 Prescaler,
3608                     ; 994                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3608                     ; 995 {
3609                     .text:	section	.text,new
3610  0000               _TIM1_PrescalerConfig:
3612  0000 89            	pushw	x
3613       00000000      OFST:	set	0
3616                     ; 997     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3618                     ; 1000     TIM1->PSCRH = (u8)(Prescaler >> 8);
3620  0001 9e            	ld	a,xh
3621  0002 c75260        	ld	21088,a
3622                     ; 1001     TIM1->PSCRL = (u8)(Prescaler);
3624  0005 9f            	ld	a,xl
3625  0006 c75261        	ld	21089,a
3626                     ; 1004     TIM1->EGR = (u8)TIM1_PSCReloadMode;
3628  0009 7b05          	ld	a,(OFST+5,sp)
3629  000b c75257        	ld	21079,a
3630                     ; 1006 }
3633  000e 85            	popw	x
3634  000f 81            	ret	
3670                     ; 1019 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3670                     ; 1020 {
3671                     .text:	section	.text,new
3672  0000               _TIM1_CounterModeConfig:
3674  0000 88            	push	a
3675       00000000      OFST:	set	0
3678                     ; 1022     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3680                     ; 1026     TIM1->CR1 = (u8)((TIM1->CR1 & (u8)((u8)(~TIM1_CR1_CMS) & (u8)(~TIM1_CR1_DIR))) | (u8)TIM1_CounterMode);
3682  0001 c65250        	ld	a,21072
3683  0004 a48f          	and	a,#143
3684  0006 1a01          	or	a,(OFST+1,sp)
3685  0008 c75250        	ld	21072,a
3686                     ; 1027 }
3689  000b 84            	pop	a
3690  000c 81            	ret	
3748                     ; 1038 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3748                     ; 1039 {
3749                     .text:	section	.text,new
3750  0000               _TIM1_ForcedOC1Config:
3752  0000 88            	push	a
3753       00000000      OFST:	set	0
3756                     ; 1041     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3758                     ; 1044     TIM1->CCMR1 =  (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
3760  0001 c65258        	ld	a,21080
3761  0004 a48f          	and	a,#143
3762  0006 1a01          	or	a,(OFST+1,sp)
3763  0008 c75258        	ld	21080,a
3764                     ; 1045 }
3767  000b 84            	pop	a
3768  000c 81            	ret	
3804                     ; 1056 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3804                     ; 1057 {
3805                     .text:	section	.text,new
3806  0000               _TIM1_ForcedOC2Config:
3808  0000 88            	push	a
3809       00000000      OFST:	set	0
3812                     ; 1059     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3814                     ; 1062     TIM1->CCMR2  =  (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
3816  0001 c65259        	ld	a,21081
3817  0004 a48f          	and	a,#143
3818  0006 1a01          	or	a,(OFST+1,sp)
3819  0008 c75259        	ld	21081,a
3820                     ; 1063 }
3823  000b 84            	pop	a
3824  000c 81            	ret	
3860                     ; 1075 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3860                     ; 1076 {
3861                     .text:	section	.text,new
3862  0000               _TIM1_ForcedOC3Config:
3864  0000 88            	push	a
3865       00000000      OFST:	set	0
3868                     ; 1078     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3870                     ; 1081     TIM1->CCMR3  =  (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
3872  0001 c6525a        	ld	a,21082
3873  0004 a48f          	and	a,#143
3874  0006 1a01          	or	a,(OFST+1,sp)
3875  0008 c7525a        	ld	21082,a
3876                     ; 1082 }
3879  000b 84            	pop	a
3880  000c 81            	ret	
3916                     ; 1094 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3916                     ; 1095 {
3917                     .text:	section	.text,new
3918  0000               _TIM1_ForcedOC4Config:
3920  0000 88            	push	a
3921       00000000      OFST:	set	0
3924                     ; 1097     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3926                     ; 1100     TIM1->CCMR4  =  (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
3928  0001 c6525b        	ld	a,21083
3929  0004 a48f          	and	a,#143
3930  0006 1a01          	or	a,(OFST+1,sp)
3931  0008 c7525b        	ld	21083,a
3932                     ; 1101 }
3935  000b 84            	pop	a
3936  000c 81            	ret	
3972                     ; 1110 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3972                     ; 1111 {
3973                     .text:	section	.text,new
3974  0000               _TIM1_ARRPreloadConfig:
3978                     ; 1113     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3980                     ; 1116     if (NewState != DISABLE)
3982  0000 4d            	tnz	a
3983  0001 2705          	jreq	L5502
3984                     ; 1118         TIM1->CR1 |= TIM1_CR1_ARPE;
3986  0003 721e5250      	bset	21072,#7
3989  0007 81            	ret	
3990  0008               L5502:
3991                     ; 1122         TIM1->CR1 &= (u8)(~TIM1_CR1_ARPE);
3993  0008 721f5250      	bres	21072,#7
3994                     ; 1124 }
3997  000c 81            	ret	
4032                     ; 1133 void TIM1_SelectCOM(FunctionalState NewState)
4032                     ; 1134 {
4033                     .text:	section	.text,new
4034  0000               _TIM1_SelectCOM:
4038                     ; 1136     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4040                     ; 1139     if (NewState != DISABLE)
4042  0000 4d            	tnz	a
4043  0001 2705          	jreq	L7702
4044                     ; 1141         TIM1->CR2 |= TIM1_CR2_COMS;
4046  0003 72145251      	bset	21073,#2
4049  0007 81            	ret	
4050  0008               L7702:
4051                     ; 1145         TIM1->CR2 &= (u8)(~TIM1_CR2_COMS);
4053  0008 72155251      	bres	21073,#2
4054                     ; 1147 }
4057  000c 81            	ret	
4093                     ; 1155 void TIM1_CCPreloadControl(FunctionalState NewState)
4093                     ; 1156 {
4094                     .text:	section	.text,new
4095  0000               _TIM1_CCPreloadControl:
4099                     ; 1158     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4101                     ; 1161     if (NewState != DISABLE)
4103  0000 4d            	tnz	a
4104  0001 2705          	jreq	L1212
4105                     ; 1163         TIM1->CR2 |= TIM1_CR2_CCPC;
4107  0003 72105251      	bset	21073,#0
4110  0007 81            	ret	
4111  0008               L1212:
4112                     ; 1167         TIM1->CR2 &= (u8)(~TIM1_CR2_CCPC);
4114  0008 72115251      	bres	21073,#0
4115                     ; 1169 }
4118  000c 81            	ret	
4154                     ; 1178 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4154                     ; 1179 {
4155                     .text:	section	.text,new
4156  0000               _TIM1_OC1PreloadConfig:
4160                     ; 1181     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4162                     ; 1184     if (NewState != DISABLE)
4164  0000 4d            	tnz	a
4165  0001 2705          	jreq	L3412
4166                     ; 1186         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4168  0003 72165258      	bset	21080,#3
4171  0007 81            	ret	
4172  0008               L3412:
4173                     ; 1190         TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxPE);
4175  0008 72175258      	bres	21080,#3
4176                     ; 1192 }
4179  000c 81            	ret	
4215                     ; 1201 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4215                     ; 1202 {
4216                     .text:	section	.text,new
4217  0000               _TIM1_OC2PreloadConfig:
4221                     ; 1204     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4223                     ; 1207     if (NewState != DISABLE)
4225  0000 4d            	tnz	a
4226  0001 2705          	jreq	L5612
4227                     ; 1209         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4229  0003 72165259      	bset	21081,#3
4232  0007 81            	ret	
4233  0008               L5612:
4234                     ; 1213         TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxPE);
4236  0008 72175259      	bres	21081,#3
4237                     ; 1215 }
4240  000c 81            	ret	
4276                     ; 1224 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4276                     ; 1225 {
4277                     .text:	section	.text,new
4278  0000               _TIM1_OC3PreloadConfig:
4282                     ; 1227     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4284                     ; 1230     if (NewState != DISABLE)
4286  0000 4d            	tnz	a
4287  0001 2705          	jreq	L7022
4288                     ; 1232         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4290  0003 7216525a      	bset	21082,#3
4293  0007 81            	ret	
4294  0008               L7022:
4295                     ; 1236         TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxPE);
4297  0008 7217525a      	bres	21082,#3
4298                     ; 1238 }
4301  000c 81            	ret	
4337                     ; 1248 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4337                     ; 1249 {
4338                     .text:	section	.text,new
4339  0000               _TIM1_OC4PreloadConfig:
4343                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4345                     ; 1254     if (NewState != DISABLE)
4347  0000 4d            	tnz	a
4348  0001 2705          	jreq	L1322
4349                     ; 1256         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4351  0003 7216525b      	bset	21083,#3
4354  0007 81            	ret	
4355  0008               L1322:
4356                     ; 1260         TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxPE);
4358  0008 7217525b      	bres	21083,#3
4359                     ; 1262 }
4362  000c 81            	ret	
4397                     ; 1270 void TIM1_OC1FastConfig(FunctionalState NewState)
4397                     ; 1271 {
4398                     .text:	section	.text,new
4399  0000               _TIM1_OC1FastConfig:
4403                     ; 1273     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4405                     ; 1276     if (NewState != DISABLE)
4407  0000 4d            	tnz	a
4408  0001 2705          	jreq	L3522
4409                     ; 1278         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4411  0003 72145258      	bset	21080,#2
4414  0007 81            	ret	
4415  0008               L3522:
4416                     ; 1282         TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxFE);
4418  0008 72155258      	bres	21080,#2
4419                     ; 1284 }
4422  000c 81            	ret	
4457                     ; 1294 void TIM1_OC2FastConfig(FunctionalState NewState)
4457                     ; 1295 {
4458                     .text:	section	.text,new
4459  0000               _TIM1_OC2FastConfig:
4463                     ; 1297     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4465                     ; 1300     if (NewState != DISABLE)
4467  0000 4d            	tnz	a
4468  0001 2705          	jreq	L5722
4469                     ; 1302         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4471  0003 72145259      	bset	21081,#2
4474  0007 81            	ret	
4475  0008               L5722:
4476                     ; 1306         TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxFE);
4478  0008 72155259      	bres	21081,#2
4479                     ; 1308 }
4482  000c 81            	ret	
4517                     ; 1317 void TIM1_OC3FastConfig(FunctionalState NewState)
4517                     ; 1318 {
4518                     .text:	section	.text,new
4519  0000               _TIM1_OC3FastConfig:
4523                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4525                     ; 1323     if (NewState != DISABLE)
4527  0000 4d            	tnz	a
4528  0001 2705          	jreq	L7132
4529                     ; 1325         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4531  0003 7214525a      	bset	21082,#2
4534  0007 81            	ret	
4535  0008               L7132:
4536                     ; 1329         TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxFE);
4538  0008 7215525a      	bres	21082,#2
4539                     ; 1331 }
4542  000c 81            	ret	
4577                     ; 1340 void TIM1_OC4FastConfig(FunctionalState NewState)
4577                     ; 1341 {
4578                     .text:	section	.text,new
4579  0000               _TIM1_OC4FastConfig:
4583                     ; 1343     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4585                     ; 1346     if (NewState != DISABLE)
4587  0000 4d            	tnz	a
4588  0001 2705          	jreq	L1432
4589                     ; 1348         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4591  0003 7214525b      	bset	21083,#2
4594  0007 81            	ret	
4595  0008               L1432:
4596                     ; 1352         TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxFE);
4598  0008 7215525b      	bres	21083,#2
4599                     ; 1354 }
4602  000c 81            	ret	
4707                     ; 1371 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4707                     ; 1372 {
4708                     .text:	section	.text,new
4709  0000               _TIM1_GenerateEvent:
4713                     ; 1374     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4715                     ; 1377     TIM1->EGR = (u8)TIM1_EventSource;
4717  0000 c75257        	ld	21079,a
4718                     ; 1378 }
4721  0003 81            	ret	
4757                     ; 1389 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4757                     ; 1390 {
4758                     .text:	section	.text,new
4759  0000               _TIM1_OC1PolarityConfig:
4763                     ; 1392     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4765                     ; 1395     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4767  0000 4d            	tnz	a
4768  0001 2705          	jreq	L5242
4769                     ; 1397         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4771  0003 7212525c      	bset	21084,#1
4774  0007 81            	ret	
4775  0008               L5242:
4776                     ; 1401         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
4778  0008 7213525c      	bres	21084,#1
4779                     ; 1403 }
4782  000c 81            	ret	
4818                     ; 1414 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4818                     ; 1415 {
4819                     .text:	section	.text,new
4820  0000               _TIM1_OC1NPolarityConfig:
4824                     ; 1417     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4826                     ; 1420     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4828  0000 4d            	tnz	a
4829  0001 2705          	jreq	L7442
4830                     ; 1422         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4832  0003 7216525c      	bset	21084,#3
4835  0007 81            	ret	
4836  0008               L7442:
4837                     ; 1426         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NP);
4839  0008 7217525c      	bres	21084,#3
4840                     ; 1428 }
4843  000c 81            	ret	
4879                     ; 1439 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4879                     ; 1440 {
4880                     .text:	section	.text,new
4881  0000               _TIM1_OC2PolarityConfig:
4885                     ; 1442     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4887                     ; 1445     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4889  0000 4d            	tnz	a
4890  0001 2705          	jreq	L1742
4891                     ; 1447         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4893  0003 721a525c      	bset	21084,#5
4896  0007 81            	ret	
4897  0008               L1742:
4898                     ; 1451         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
4900  0008 721b525c      	bres	21084,#5
4901                     ; 1453 }
4904  000c 81            	ret	
4940                     ; 1463 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4940                     ; 1464 {
4941                     .text:	section	.text,new
4942  0000               _TIM1_OC2NPolarityConfig:
4946                     ; 1466     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4948                     ; 1469     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4950  0000 4d            	tnz	a
4951  0001 2705          	jreq	L3152
4952                     ; 1471         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4954  0003 721e525c      	bset	21084,#7
4957  0007 81            	ret	
4958  0008               L3152:
4959                     ; 1475         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NP);
4961  0008 721f525c      	bres	21084,#7
4962                     ; 1477 }
4965  000c 81            	ret	
5001                     ; 1488 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5001                     ; 1489 {
5002                     .text:	section	.text,new
5003  0000               _TIM1_OC3PolarityConfig:
5007                     ; 1491     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5009                     ; 1494     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5011  0000 4d            	tnz	a
5012  0001 2705          	jreq	L5352
5013                     ; 1496         TIM1->CCER2 |= TIM1_CCER2_CC3P;
5015  0003 7212525d      	bset	21085,#1
5018  0007 81            	ret	
5019  0008               L5352:
5020                     ; 1500         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
5022  0008 7213525d      	bres	21085,#1
5023                     ; 1502 }
5026  000c 81            	ret	
5062                     ; 1513 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5062                     ; 1514 {
5063                     .text:	section	.text,new
5064  0000               _TIM1_OC3NPolarityConfig:
5068                     ; 1516     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5070                     ; 1519     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5072  0000 4d            	tnz	a
5073  0001 2705          	jreq	L7552
5074                     ; 1521         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5076  0003 7216525d      	bset	21085,#3
5079  0007 81            	ret	
5080  0008               L7552:
5081                     ; 1525         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NP);
5083  0008 7217525d      	bres	21085,#3
5084                     ; 1527 }
5087  000c 81            	ret	
5123                     ; 1537 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5123                     ; 1538 {
5124                     .text:	section	.text,new
5125  0000               _TIM1_OC4PolarityConfig:
5129                     ; 1540     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5131                     ; 1543     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5133  0000 4d            	tnz	a
5134  0001 2705          	jreq	L1062
5135                     ; 1545         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5137  0003 721a525d      	bset	21085,#5
5140  0007 81            	ret	
5141  0008               L1062:
5142                     ; 1549         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
5144  0008 721b525d      	bres	21085,#5
5145                     ; 1551 }
5148  000c 81            	ret	
5193                     ; 1566 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5193                     ; 1567 {
5194                     .text:	section	.text,new
5195  0000               _TIM1_CCxCmd:
5197  0000 89            	pushw	x
5198       00000000      OFST:	set	0
5201                     ; 1569     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5203                     ; 1570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5205                     ; 1572     if (TIM1_Channel == TIM1_CHANNEL_1)
5207  0001 9e            	ld	a,xh
5208  0002 4d            	tnz	a
5209  0003 2610          	jrne	L7262
5210                     ; 1575         if (NewState != DISABLE)
5212  0005 9f            	ld	a,xl
5213  0006 4d            	tnz	a
5214  0007 2706          	jreq	L1362
5215                     ; 1577             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5217  0009 7210525c      	bset	21084,#0
5219  000d 203e          	jra	L5362
5220  000f               L1362:
5221                     ; 1581             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
5223  000f 7211525c      	bres	21084,#0
5224  0013 2038          	jra	L5362
5225  0015               L7262:
5226                     ; 1585     else if (TIM1_Channel == TIM1_CHANNEL_2)
5228  0015 7b01          	ld	a,(OFST+1,sp)
5229  0017 a101          	cp	a,#1
5230  0019 2610          	jrne	L7362
5231                     ; 1588         if (NewState != DISABLE)
5233  001b 7b02          	ld	a,(OFST+2,sp)
5234  001d 2706          	jreq	L1462
5235                     ; 1590             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5237  001f 7218525c      	bset	21084,#4
5239  0023 2028          	jra	L5362
5240  0025               L1462:
5241                     ; 1594             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
5243  0025 7219525c      	bres	21084,#4
5244  0029 2022          	jra	L5362
5245  002b               L7362:
5246                     ; 1597     else if (TIM1_Channel == TIM1_CHANNEL_3)
5248  002b a102          	cp	a,#2
5249  002d 2610          	jrne	L7462
5250                     ; 1600         if (NewState != DISABLE)
5252  002f 7b02          	ld	a,(OFST+2,sp)
5253  0031 2706          	jreq	L1562
5254                     ; 1602             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5256  0033 7210525d      	bset	21085,#0
5258  0037 2014          	jra	L5362
5259  0039               L1562:
5260                     ; 1606             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
5262  0039 7211525d      	bres	21085,#0
5263  003d 200e          	jra	L5362
5264  003f               L7462:
5265                     ; 1612         if (NewState != DISABLE)
5267  003f 7b02          	ld	a,(OFST+2,sp)
5268  0041 2706          	jreq	L7562
5269                     ; 1614             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5271  0043 7218525d      	bset	21085,#4
5273  0047 2004          	jra	L5362
5274  0049               L7562:
5275                     ; 1618             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
5277  0049 7219525d      	bres	21085,#4
5278  004d               L5362:
5279                     ; 1621 }
5282  004d 85            	popw	x
5283  004e 81            	ret	
5328                     ; 1634 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5328                     ; 1635 {
5329                     .text:	section	.text,new
5330  0000               _TIM1_CCxNCmd:
5332  0000 89            	pushw	x
5333       00000000      OFST:	set	0
5336                     ; 1637     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5338                     ; 1638     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5340                     ; 1640     if (TIM1_Channel == TIM1_CHANNEL_1)
5342  0001 9e            	ld	a,xh
5343  0002 4d            	tnz	a
5344  0003 2610          	jrne	L5072
5345                     ; 1643         if (NewState != DISABLE)
5347  0005 9f            	ld	a,xl
5348  0006 4d            	tnz	a
5349  0007 2706          	jreq	L7072
5350                     ; 1645             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5352  0009 7214525c      	bset	21084,#2
5354  000d 2029          	jra	L3172
5355  000f               L7072:
5356                     ; 1649             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NE);
5358  000f 7215525c      	bres	21084,#2
5359  0013 2023          	jra	L3172
5360  0015               L5072:
5361                     ; 1652     else if (TIM1_Channel == TIM1_CHANNEL_2)
5363  0015 7b01          	ld	a,(OFST+1,sp)
5364  0017 4a            	dec	a
5365  0018 2610          	jrne	L5172
5366                     ; 1655         if (NewState != DISABLE)
5368  001a 7b02          	ld	a,(OFST+2,sp)
5369  001c 2706          	jreq	L7172
5370                     ; 1657             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5372  001e 721c525c      	bset	21084,#6
5374  0022 2014          	jra	L3172
5375  0024               L7172:
5376                     ; 1661             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NE);
5378  0024 721d525c      	bres	21084,#6
5379  0028 200e          	jra	L3172
5380  002a               L5172:
5381                     ; 1667         if (NewState != DISABLE)
5383  002a 7b02          	ld	a,(OFST+2,sp)
5384  002c 2706          	jreq	L5272
5385                     ; 1669             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5387  002e 7214525d      	bset	21085,#2
5389  0032 2004          	jra	L3172
5390  0034               L5272:
5391                     ; 1673             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NE);
5393  0034 7215525d      	bres	21085,#2
5394  0038               L3172:
5395                     ; 1676 }
5398  0038 85            	popw	x
5399  0039 81            	ret	
5444                     ; 1700 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5444                     ; 1701 {
5445                     .text:	section	.text,new
5446  0000               _TIM1_SelectOCxM:
5448  0000 89            	pushw	x
5449       00000000      OFST:	set	0
5452                     ; 1703     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5454                     ; 1704     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5456                     ; 1706     if (TIM1_Channel == TIM1_CHANNEL_1)
5458  0001 9e            	ld	a,xh
5459  0002 4d            	tnz	a
5460  0003 2610          	jrne	L3572
5461                     ; 1709         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
5463  0005 7211525c      	bres	21084,#0
5464                     ; 1712         TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5466  0009 c65258        	ld	a,21080
5467  000c a48f          	and	a,#143
5468  000e 1a02          	or	a,(OFST+2,sp)
5469  0010 c75258        	ld	21080,a
5471  0013 2038          	jra	L5572
5472  0015               L3572:
5473                     ; 1714     else if (TIM1_Channel == TIM1_CHANNEL_2)
5475  0015 7b01          	ld	a,(OFST+1,sp)
5476  0017 a101          	cp	a,#1
5477  0019 2610          	jrne	L7572
5478                     ; 1717         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
5480  001b 7219525c      	bres	21084,#4
5481                     ; 1720         TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5483  001f c65259        	ld	a,21081
5484  0022 a48f          	and	a,#143
5485  0024 1a02          	or	a,(OFST+2,sp)
5486  0026 c75259        	ld	21081,a
5488  0029 2022          	jra	L5572
5489  002b               L7572:
5490                     ; 1722     else if (TIM1_Channel == TIM1_CHANNEL_3)
5492  002b a102          	cp	a,#2
5493  002d 2610          	jrne	L3672
5494                     ; 1725         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
5496  002f 7211525d      	bres	21085,#0
5497                     ; 1728         TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5499  0033 c6525a        	ld	a,21082
5500  0036 a48f          	and	a,#143
5501  0038 1a02          	or	a,(OFST+2,sp)
5502  003a c7525a        	ld	21082,a
5504  003d 200e          	jra	L5572
5505  003f               L3672:
5506                     ; 1733         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
5508  003f 7219525d      	bres	21085,#4
5509                     ; 1736         TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5511  0043 c6525b        	ld	a,21083
5512  0046 a48f          	and	a,#143
5513  0048 1a02          	or	a,(OFST+2,sp)
5514  004a c7525b        	ld	21083,a
5515  004d               L5572:
5516                     ; 1738 }
5519  004d 85            	popw	x
5520  004e 81            	ret	
5554                     ; 1747 void TIM1_SetCounter(u16 Counter)
5554                     ; 1748 {
5555                     .text:	section	.text,new
5556  0000               _TIM1_SetCounter:
5560                     ; 1750     TIM1->CNTRH = (u8)(Counter >> 8);
5562  0000 9e            	ld	a,xh
5563  0001 c7525e        	ld	21086,a
5564                     ; 1751     TIM1->CNTRL = (u8)(Counter);
5566  0004 9f            	ld	a,xl
5567  0005 c7525f        	ld	21087,a
5568                     ; 1753 }
5571  0008 81            	ret	
5605                     ; 1762 void TIM1_SetAutoreload(u16 Autoreload)
5605                     ; 1763 {
5606                     .text:	section	.text,new
5607  0000               _TIM1_SetAutoreload:
5611                     ; 1766     TIM1->ARRH = (u8)(Autoreload >> 8);
5613  0000 9e            	ld	a,xh
5614  0001 c75262        	ld	21090,a
5615                     ; 1767     TIM1->ARRL = (u8)(Autoreload);
5617  0004 9f            	ld	a,xl
5618  0005 c75263        	ld	21091,a
5619                     ; 1769 }
5622  0008 81            	ret	
5656                     ; 1778 void TIM1_SetCompare1(u16 Compare1)
5656                     ; 1779 {
5657                     .text:	section	.text,new
5658  0000               _TIM1_SetCompare1:
5662                     ; 1781     TIM1->CCR1H = (u8)(Compare1 >> 8);
5664  0000 9e            	ld	a,xh
5665  0001 c75265        	ld	21093,a
5666                     ; 1782     TIM1->CCR1L = (u8)(Compare1);
5668  0004 9f            	ld	a,xl
5669  0005 c75266        	ld	21094,a
5670                     ; 1784 }
5673  0008 81            	ret	
5707                     ; 1793 void TIM1_SetCompare2(u16 Compare2)
5707                     ; 1794 {
5708                     .text:	section	.text,new
5709  0000               _TIM1_SetCompare2:
5713                     ; 1796     TIM1->CCR2H = (u8)(Compare2 >> 8);
5715  0000 9e            	ld	a,xh
5716  0001 c75267        	ld	21095,a
5717                     ; 1797     TIM1->CCR2L = (u8)(Compare2);
5719  0004 9f            	ld	a,xl
5720  0005 c75268        	ld	21096,a
5721                     ; 1799 }
5724  0008 81            	ret	
5758                     ; 1808 void TIM1_SetCompare3(u16 Compare3)
5758                     ; 1809 {
5759                     .text:	section	.text,new
5760  0000               _TIM1_SetCompare3:
5764                     ; 1811     TIM1->CCR3H = (u8)(Compare3 >> 8);
5766  0000 9e            	ld	a,xh
5767  0001 c75269        	ld	21097,a
5768                     ; 1812     TIM1->CCR3L = (u8)(Compare3);
5770  0004 9f            	ld	a,xl
5771  0005 c7526a        	ld	21098,a
5772                     ; 1814 }
5775  0008 81            	ret	
5809                     ; 1823 void TIM1_SetCompare4(u16 Compare4)
5809                     ; 1824 {
5810                     .text:	section	.text,new
5811  0000               _TIM1_SetCompare4:
5815                     ; 1826     TIM1->CCR4H = (u8)(Compare4 >> 8);
5817  0000 9e            	ld	a,xh
5818  0001 c7526b        	ld	21099,a
5819                     ; 1827     TIM1->CCR4L = (u8)(Compare4);
5821  0004 9f            	ld	a,xl
5822  0005 c7526c        	ld	21100,a
5823                     ; 1828 }
5826  0008 81            	ret	
5862                     ; 1841 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5862                     ; 1842 {
5863                     .text:	section	.text,new
5864  0000               _TIM1_SetIC1Prescaler:
5866  0000 88            	push	a
5867       00000000      OFST:	set	0
5870                     ; 1844     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5872                     ; 1847     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC1Prescaler);
5874  0001 c65258        	ld	a,21080
5875  0004 a4f3          	and	a,#243
5876  0006 1a01          	or	a,(OFST+1,sp)
5877  0008 c75258        	ld	21080,a
5878                     ; 1849 }
5881  000b 84            	pop	a
5882  000c 81            	ret	
5918                     ; 1861 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5918                     ; 1862 {
5919                     .text:	section	.text,new
5920  0000               _TIM1_SetIC2Prescaler:
5922  0000 88            	push	a
5923       00000000      OFST:	set	0
5926                     ; 1865     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5928                     ; 1868     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC2Prescaler);
5930  0001 c65259        	ld	a,21081
5931  0004 a4f3          	and	a,#243
5932  0006 1a01          	or	a,(OFST+1,sp)
5933  0008 c75259        	ld	21081,a
5934                     ; 1869 }
5937  000b 84            	pop	a
5938  000c 81            	ret	
5974                     ; 1882 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
5974                     ; 1883 {
5975                     .text:	section	.text,new
5976  0000               _TIM1_SetIC3Prescaler:
5978  0000 88            	push	a
5979       00000000      OFST:	set	0
5982                     ; 1886     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
5984                     ; 1889     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC3Prescaler);
5986  0001 c6525a        	ld	a,21082
5987  0004 a4f3          	and	a,#243
5988  0006 1a01          	or	a,(OFST+1,sp)
5989  0008 c7525a        	ld	21082,a
5990                     ; 1890 }
5993  000b 84            	pop	a
5994  000c 81            	ret	
6030                     ; 1903 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6030                     ; 1904 {
6031                     .text:	section	.text,new
6032  0000               _TIM1_SetIC4Prescaler:
6034  0000 88            	push	a
6035       00000000      OFST:	set	0
6038                     ; 1907     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6040                     ; 1910     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC4Prescaler);
6042  0001 c6525b        	ld	a,21083
6043  0004 a4f3          	and	a,#243
6044  0006 1a01          	or	a,(OFST+1,sp)
6045  0008 c7525b        	ld	21083,a
6046                     ; 1911 }
6049  000b 84            	pop	a
6050  000c 81            	ret	
6102                     ; 1920 u16 TIM1_GetCapture1(void)
6102                     ; 1921 {
6103                     .text:	section	.text,new
6104  0000               _TIM1_GetCapture1:
6106  0000 5204          	subw	sp,#4
6107       00000004      OFST:	set	4
6110                     ; 1924     u16 tmpccr1 = 0;
6112                     ; 1925     u8 tmpccr1l=0, tmpccr1h=0;
6116                     ; 1927     tmpccr1h = TIM1->CCR1H;
6118  0002 c65265        	ld	a,21093
6119  0005 6b02          	ld	(OFST-2,sp),a
6120                     ; 1928     tmpccr1l = TIM1->CCR1L;
6122  0007 c65266        	ld	a,21094
6123  000a 6b01          	ld	(OFST-3,sp),a
6124                     ; 1930     tmpccr1 = (u16)(tmpccr1l);
6126  000c 5f            	clrw	x
6127  000d 97            	ld	xl,a
6128  000e 1f03          	ldw	(OFST-1,sp),x
6129                     ; 1931     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
6131  0010 7b02          	ld	a,(OFST-2,sp)
6132  0012 97            	ld	xl,a
6133  0013 7b04          	ld	a,(OFST+0,sp)
6134  0015 01            	rrwa	x,a
6135  0016 1a03          	or	a,(OFST-1,sp)
6136  0018 01            	rrwa	x,a
6137                     ; 1933     return (u16)tmpccr1;
6141  0019 5b04          	addw	sp,#4
6142  001b 81            	ret	
6194                     ; 1942 u16 TIM1_GetCapture2(void)
6194                     ; 1943 {
6195                     .text:	section	.text,new
6196  0000               _TIM1_GetCapture2:
6198  0000 5204          	subw	sp,#4
6199       00000004      OFST:	set	4
6202                     ; 1946     u16 tmpccr2 = 0;
6204                     ; 1947     u8 tmpccr2l=0, tmpccr2h=0;
6208                     ; 1949     tmpccr2h = TIM1->CCR2H;
6210  0002 c65267        	ld	a,21095
6211  0005 6b02          	ld	(OFST-2,sp),a
6212                     ; 1950     tmpccr2l = TIM1->CCR2L;
6214  0007 c65268        	ld	a,21096
6215  000a 6b01          	ld	(OFST-3,sp),a
6216                     ; 1952     tmpccr2 = (u16)(tmpccr2l);
6218  000c 5f            	clrw	x
6219  000d 97            	ld	xl,a
6220  000e 1f03          	ldw	(OFST-1,sp),x
6221                     ; 1953     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
6223  0010 7b02          	ld	a,(OFST-2,sp)
6224  0012 97            	ld	xl,a
6225  0013 7b04          	ld	a,(OFST+0,sp)
6226  0015 01            	rrwa	x,a
6227  0016 1a03          	or	a,(OFST-1,sp)
6228  0018 01            	rrwa	x,a
6229                     ; 1955     return (u16)tmpccr2;
6233  0019 5b04          	addw	sp,#4
6234  001b 81            	ret	
6286                     ; 1964 u16 TIM1_GetCapture3(void)
6286                     ; 1965 {
6287                     .text:	section	.text,new
6288  0000               _TIM1_GetCapture3:
6290  0000 5204          	subw	sp,#4
6291       00000004      OFST:	set	4
6294                     ; 1967     u16 tmpccr3 = 0;
6296                     ; 1968     u8 tmpccr3l=0, tmpccr3h=0;
6300                     ; 1970     tmpccr3h = TIM1->CCR3H;
6302  0002 c65269        	ld	a,21097
6303  0005 6b02          	ld	(OFST-2,sp),a
6304                     ; 1971     tmpccr3l = TIM1->CCR3L;
6306  0007 c6526a        	ld	a,21098
6307  000a 6b01          	ld	(OFST-3,sp),a
6308                     ; 1973     tmpccr3 = (u16)(tmpccr3l);
6310  000c 5f            	clrw	x
6311  000d 97            	ld	xl,a
6312  000e 1f03          	ldw	(OFST-1,sp),x
6313                     ; 1974     tmpccr3 |= (u16)((u16)tmpccr3h << 8);
6315  0010 7b02          	ld	a,(OFST-2,sp)
6316  0012 97            	ld	xl,a
6317  0013 7b04          	ld	a,(OFST+0,sp)
6318  0015 01            	rrwa	x,a
6319  0016 1a03          	or	a,(OFST-1,sp)
6320  0018 01            	rrwa	x,a
6321                     ; 1976     return (u16)tmpccr3;
6325  0019 5b04          	addw	sp,#4
6326  001b 81            	ret	
6378                     ; 1985 u16 TIM1_GetCapture4(void)
6378                     ; 1986 {
6379                     .text:	section	.text,new
6380  0000               _TIM1_GetCapture4:
6382  0000 5204          	subw	sp,#4
6383       00000004      OFST:	set	4
6386                     ; 1988     u16 tmpccr4 = 0;
6388                     ; 1989     u8 tmpccr4l=0, tmpccr4h=0;
6392                     ; 1991     tmpccr4h = TIM1->CCR4H;
6394  0002 c6526b        	ld	a,21099
6395  0005 6b02          	ld	(OFST-2,sp),a
6396                     ; 1992     tmpccr4l = TIM1->CCR4L;
6398  0007 c6526c        	ld	a,21100
6399  000a 6b01          	ld	(OFST-3,sp),a
6400                     ; 1994     tmpccr4 = (u16)(tmpccr4l);
6402  000c 5f            	clrw	x
6403  000d 97            	ld	xl,a
6404  000e 1f03          	ldw	(OFST-1,sp),x
6405                     ; 1995     tmpccr4 |= (u16)((u16)tmpccr4h << 8);
6407  0010 7b02          	ld	a,(OFST-2,sp)
6408  0012 97            	ld	xl,a
6409  0013 7b04          	ld	a,(OFST+0,sp)
6410  0015 01            	rrwa	x,a
6411  0016 1a03          	or	a,(OFST-1,sp)
6412  0018 01            	rrwa	x,a
6413                     ; 1997     return (u16)tmpccr4;
6417  0019 5b04          	addw	sp,#4
6418  001b 81            	ret	
6441                     ; 2007 u16 TIM1_GetCounter(void)
6441                     ; 2008 {
6442                     .text:	section	.text,new
6443  0000               _TIM1_GetCounter:
6445  0000 89            	pushw	x
6446       00000002      OFST:	set	2
6449                     ; 2010     return (u16)(((u16)TIM1->CNTRH << 8) | (u16)(TIM1->CNTRL));
6451  0001 c6525f        	ld	a,21087
6452  0004 5f            	clrw	x
6453  0005 97            	ld	xl,a
6454  0006 1f01          	ldw	(OFST-1,sp),x
6455  0008 c6525e        	ld	a,21086
6456  000b 97            	ld	xl,a
6457  000c 7b02          	ld	a,(OFST+0,sp)
6458  000e 01            	rrwa	x,a
6459  000f 1a01          	or	a,(OFST-1,sp)
6460  0011 01            	rrwa	x,a
6463  0012 5b02          	addw	sp,#2
6464  0014 81            	ret	
6487                     ; 2020 u16 TIM1_GetPrescaler(void)
6487                     ; 2021 {
6488                     .text:	section	.text,new
6489  0000               _TIM1_GetPrescaler:
6491  0000 89            	pushw	x
6492       00000002      OFST:	set	2
6495                     ; 2023     return (u16)(((u16)TIM1->PSCRH << 8) | (u16)(TIM1->PSCRL));
6497  0001 c65261        	ld	a,21089
6498  0004 5f            	clrw	x
6499  0005 97            	ld	xl,a
6500  0006 1f01          	ldw	(OFST-1,sp),x
6501  0008 c65260        	ld	a,21088
6502  000b 97            	ld	xl,a
6503  000c 7b02          	ld	a,(OFST+0,sp)
6504  000e 01            	rrwa	x,a
6505  000f 1a01          	or	a,(OFST-1,sp)
6506  0011 01            	rrwa	x,a
6509  0012 5b02          	addw	sp,#2
6510  0014 81            	ret	
6684                     ; 2045 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6684                     ; 2046 {
6685                     .text:	section	.text,new
6686  0000               _TIM1_GetFlagStatus:
6688  0000 5204          	subw	sp,#4
6689       00000004      OFST:	set	4
6692                     ; 2047     volatile FlagStatus bitstatus = RESET;
6694  0002 0f04          	clr	(OFST+0,sp)
6695                     ; 2051     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6697                     ; 2053     tim1_flag_l = (u8)(TIM1_FLAG);
6699  0004 9f            	ld	a,xl
6700  0005 6b02          	ld	(OFST-2,sp),a
6701                     ; 2054     tim1_flag_h = (u8)((u16)TIM1_FLAG >> 8);
6703  0007 9e            	ld	a,xh
6704  0008 6b03          	ld	(OFST-1,sp),a
6705                     ; 2056     if (((TIM1->SR1 & tim1_flag_l) | (TIM1->SR2 & tim1_flag_h)) != 0)
6707  000a c65256        	ld	a,21078
6708  000d 1403          	and	a,(OFST-1,sp)
6709  000f 6b01          	ld	(OFST-3,sp),a
6710  0011 c65255        	ld	a,21077
6711  0014 1402          	and	a,(OFST-2,sp)
6712  0016 1a01          	or	a,(OFST-3,sp)
6713  0018 2706          	jreq	L1543
6714                     ; 2058         bitstatus = SET;
6716  001a a601          	ld	a,#1
6717  001c 6b04          	ld	(OFST+0,sp),a
6719  001e 2002          	jra	L3543
6720  0020               L1543:
6721                     ; 2062         bitstatus = RESET;
6723  0020 6b04          	ld	(OFST+0,sp),a
6724  0022               L3543:
6725                     ; 2064     return (FlagStatus)(bitstatus);
6727  0022 7b04          	ld	a,(OFST+0,sp)
6730  0024 5b04          	addw	sp,#4
6731  0026 81            	ret	
6766                     ; 2086 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6766                     ; 2087 {
6767                     .text:	section	.text,new
6768  0000               _TIM1_ClearFlag:
6770  0000 89            	pushw	x
6771       00000000      OFST:	set	0
6774                     ; 2089     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6776                     ; 2092     TIM1->SR1 = (u8)(~(u8)(TIM1_FLAG));
6778  0001 9f            	ld	a,xl
6779  0002 43            	cpl	a
6780  0003 c75255        	ld	21077,a
6781                     ; 2093     TIM1->SR2 = (u8)((u8)(~((u8)((u16)TIM1_FLAG >> 8))) & (u8)0x1E);
6783  0006 7b01          	ld	a,(OFST+1,sp)
6784  0008 43            	cpl	a
6785  0009 a41e          	and	a,#30
6786  000b c75256        	ld	21078,a
6787                     ; 2094 }
6790  000e 85            	popw	x
6791  000f 81            	ret	
6855                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6855                     ; 2113 {
6856                     .text:	section	.text,new
6857  0000               _TIM1_GetITStatus:
6859  0000 88            	push	a
6860  0001 5203          	subw	sp,#3
6861       00000003      OFST:	set	3
6864                     ; 2114     volatile ITStatus bitstatus = RESET;
6866  0003 0f03          	clr	(OFST+0,sp)
6867                     ; 2115     vu8 TIM1_itStatus = 0, TIM1_itEnable = 0;
6869  0005 0f01          	clr	(OFST-2,sp)
6872  0007 0f02          	clr	(OFST-1,sp)
6873                     ; 2118     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6875                     ; 2120     TIM1_itStatus = (u8)(TIM1->SR1 & (u8)TIM1_IT);
6877  0009 c45255        	and	a,21077
6878  000c 6b01          	ld	(OFST-2,sp),a
6879                     ; 2122     TIM1_itEnable = (u8)(TIM1->IER & (u8)TIM1_IT);
6881  000e c65254        	ld	a,21076
6882  0011 1404          	and	a,(OFST+1,sp)
6883  0013 6b02          	ld	(OFST-1,sp),a
6884                     ; 2124     if ((TIM1_itStatus != (u8)RESET ) && (TIM1_itEnable != (u8)RESET ))
6886  0015 0d01          	tnz	(OFST-2,sp)
6887  0017 270a          	jreq	L5253
6889  0019 0d02          	tnz	(OFST-1,sp)
6890  001b 2706          	jreq	L5253
6891                     ; 2126         bitstatus = SET;
6893  001d a601          	ld	a,#1
6894  001f 6b03          	ld	(OFST+0,sp),a
6896  0021 2002          	jra	L7253
6897  0023               L5253:
6898                     ; 2130         bitstatus = RESET;
6900  0023 0f03          	clr	(OFST+0,sp)
6901  0025               L7253:
6902                     ; 2132     return (ITStatus)(bitstatus);
6904  0025 7b03          	ld	a,(OFST+0,sp)
6907  0027 5b04          	addw	sp,#4
6908  0029 81            	ret	
6944                     ; 2150 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
6944                     ; 2151 {
6945                     .text:	section	.text,new
6946  0000               _TIM1_ClearITPendingBit:
6950                     ; 2153     assert_param(IS_TIM1_IT_OK(TIM1_IT));
6952                     ; 2156     TIM1->SR1 = (u8)(~(u8)TIM1_IT);
6954  0000 43            	cpl	a
6955  0001 c75255        	ld	21077,a
6956                     ; 2157 }
6959  0004 81            	ret	
7011                     ; 2176 static void TI1_Config(u8 TIM1_ICPolarity,
7011                     ; 2177                        u8 TIM1_ICSelection,
7011                     ; 2178                        u8 TIM1_ICFilter)
7011                     ; 2179 {
7012                     .text:	section	.text,new
7013  0000               L3_TI1_Config:
7015  0000 89            	pushw	x
7016  0001 88            	push	a
7017       00000001      OFST:	set	1
7020                     ; 2182     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
7022  0002 7211525c      	bres	21084,#0
7023                     ; 2185     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7025  0006 7b06          	ld	a,(OFST+5,sp)
7026  0008 97            	ld	xl,a
7027  0009 a610          	ld	a,#16
7028  000b 42            	mul	x,a
7029  000c 9f            	ld	a,xl
7030  000d 1a03          	or	a,(OFST+2,sp)
7031  000f 6b01          	ld	(OFST+0,sp),a
7032  0011 c65258        	ld	a,21080
7033  0014 a40c          	and	a,#12
7034  0016 1a01          	or	a,(OFST+0,sp)
7035  0018 c75258        	ld	21080,a
7036                     ; 2190     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7038  001b 7b02          	ld	a,(OFST+1,sp)
7039  001d 2706          	jreq	L5753
7040                     ; 2192         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7042  001f 7212525c      	bset	21084,#1
7044  0023 2004          	jra	L7753
7045  0025               L5753:
7046                     ; 2196         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
7048  0025 7213525c      	bres	21084,#1
7049  0029               L7753:
7050                     ; 2200     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7052  0029 7210525c      	bset	21084,#0
7053                     ; 2201 }
7056  002d 5b03          	addw	sp,#3
7057  002f 81            	ret	
7109                     ; 2220 static void TI2_Config(u8 TIM1_ICPolarity,
7109                     ; 2221                        u8 TIM1_ICSelection,
7109                     ; 2222                        u8 TIM1_ICFilter)
7109                     ; 2223 {
7110                     .text:	section	.text,new
7111  0000               L5_TI2_Config:
7113  0000 89            	pushw	x
7114  0001 88            	push	a
7115       00000001      OFST:	set	1
7118                     ; 2225     TIM1->CCER1 &=  (u8)(~TIM1_CCER1_CC2E);
7120  0002 7219525c      	bres	21084,#4
7121                     ; 2228     TIM1->CCMR2  = (u8)((TIM1->CCMR2 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7123  0006 7b06          	ld	a,(OFST+5,sp)
7124  0008 97            	ld	xl,a
7125  0009 a610          	ld	a,#16
7126  000b 42            	mul	x,a
7127  000c 9f            	ld	a,xl
7128  000d 1a03          	or	a,(OFST+2,sp)
7129  000f 6b01          	ld	(OFST+0,sp),a
7130  0011 c65259        	ld	a,21081
7131  0014 a40c          	and	a,#12
7132  0016 1a01          	or	a,(OFST+0,sp)
7133  0018 c75259        	ld	21081,a
7134                     ; 2230     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7136  001b 7b02          	ld	a,(OFST+1,sp)
7137  001d 2706          	jreq	L7263
7138                     ; 2232         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7140  001f 721a525c      	bset	21084,#5
7142  0023 2004          	jra	L1363
7143  0025               L7263:
7144                     ; 2236         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
7146  0025 721b525c      	bres	21084,#5
7147  0029               L1363:
7148                     ; 2239     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7150  0029 7218525c      	bset	21084,#4
7151                     ; 2240 }
7154  002d 5b03          	addw	sp,#3
7155  002f 81            	ret	
7207                     ; 2258 static void TI3_Config(u8 TIM1_ICPolarity,
7207                     ; 2259                        u8 TIM1_ICSelection,
7207                     ; 2260                        u8 TIM1_ICFilter)
7207                     ; 2261 {
7208                     .text:	section	.text,new
7209  0000               L7_TI3_Config:
7211  0000 89            	pushw	x
7212  0001 88            	push	a
7213       00000001      OFST:	set	1
7216                     ; 2263     TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC3E);
7218  0002 7211525d      	bres	21085,#0
7219                     ; 2266     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7221  0006 7b06          	ld	a,(OFST+5,sp)
7222  0008 97            	ld	xl,a
7223  0009 a610          	ld	a,#16
7224  000b 42            	mul	x,a
7225  000c 9f            	ld	a,xl
7226  000d 1a03          	or	a,(OFST+2,sp)
7227  000f 6b01          	ld	(OFST+0,sp),a
7228  0011 c6525a        	ld	a,21082
7229  0014 a40c          	and	a,#12
7230  0016 1a01          	or	a,(OFST+0,sp)
7231  0018 c7525a        	ld	21082,a
7232                     ; 2269     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7234  001b 7b02          	ld	a,(OFST+1,sp)
7235  001d 2706          	jreq	L1663
7236                     ; 2271         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7238  001f 7212525d      	bset	21085,#1
7240  0023 2004          	jra	L3663
7241  0025               L1663:
7242                     ; 2275         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
7244  0025 7213525d      	bres	21085,#1
7245  0029               L3663:
7246                     ; 2278     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7248  0029 7210525d      	bset	21085,#0
7249                     ; 2279 }
7252  002d 5b03          	addw	sp,#3
7253  002f 81            	ret	
7305                     ; 2298 static void TI4_Config(u8 TIM1_ICPolarity,
7305                     ; 2299                        u8 TIM1_ICSelection,
7305                     ; 2300                        u8 TIM1_ICFilter)
7305                     ; 2301 {
7306                     .text:	section	.text,new
7307  0000               L11_TI4_Config:
7309  0000 89            	pushw	x
7310  0001 88            	push	a
7311       00000001      OFST:	set	1
7314                     ; 2304     TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC4E);
7316  0002 7219525d      	bres	21085,#4
7317                     ; 2307     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    )))  | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7319  0006 7b06          	ld	a,(OFST+5,sp)
7320  0008 97            	ld	xl,a
7321  0009 a610          	ld	a,#16
7322  000b 42            	mul	x,a
7323  000c 9f            	ld	a,xl
7324  000d 1a03          	or	a,(OFST+2,sp)
7325  000f 6b01          	ld	(OFST+0,sp),a
7326  0011 c6525b        	ld	a,21083
7327  0014 a40c          	and	a,#12
7328  0016 1a01          	or	a,(OFST+0,sp)
7329  0018 c7525b        	ld	21083,a
7330                     ; 2312     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7332  001b 7b02          	ld	a,(OFST+1,sp)
7333  001d 2706          	jreq	L3173
7334                     ; 2314         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7336  001f 721a525d      	bset	21085,#5
7338  0023 2004          	jra	L5173
7339  0025               L3173:
7340                     ; 2318         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
7342  0025 721b525d      	bres	21085,#5
7343  0029               L5173:
7344                     ; 2322     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7346  0029 7218525d      	bset	21085,#4
7347                     ; 2323 }
7350  002d 5b03          	addw	sp,#3
7351  002f 81            	ret	
7364                     	xdef	_TIM1_ClearITPendingBit
7365                     	xdef	_TIM1_GetITStatus
7366                     	xdef	_TIM1_ClearFlag
7367                     	xdef	_TIM1_GetFlagStatus
7368                     	xdef	_TIM1_GetPrescaler
7369                     	xdef	_TIM1_GetCounter
7370                     	xdef	_TIM1_GetCapture4
7371                     	xdef	_TIM1_GetCapture3
7372                     	xdef	_TIM1_GetCapture2
7373                     	xdef	_TIM1_GetCapture1
7374                     	xdef	_TIM1_SetIC4Prescaler
7375                     	xdef	_TIM1_SetIC3Prescaler
7376                     	xdef	_TIM1_SetIC2Prescaler
7377                     	xdef	_TIM1_SetIC1Prescaler
7378                     	xdef	_TIM1_SetCompare4
7379                     	xdef	_TIM1_SetCompare3
7380                     	xdef	_TIM1_SetCompare2
7381                     	xdef	_TIM1_SetCompare1
7382                     	xdef	_TIM1_SetAutoreload
7383                     	xdef	_TIM1_SetCounter
7384                     	xdef	_TIM1_SelectOCxM
7385                     	xdef	_TIM1_CCxNCmd
7386                     	xdef	_TIM1_CCxCmd
7387                     	xdef	_TIM1_OC4PolarityConfig
7388                     	xdef	_TIM1_OC3NPolarityConfig
7389                     	xdef	_TIM1_OC3PolarityConfig
7390                     	xdef	_TIM1_OC2NPolarityConfig
7391                     	xdef	_TIM1_OC2PolarityConfig
7392                     	xdef	_TIM1_OC1NPolarityConfig
7393                     	xdef	_TIM1_OC1PolarityConfig
7394                     	xdef	_TIM1_GenerateEvent
7395                     	xdef	_TIM1_OC4FastConfig
7396                     	xdef	_TIM1_OC3FastConfig
7397                     	xdef	_TIM1_OC2FastConfig
7398                     	xdef	_TIM1_OC1FastConfig
7399                     	xdef	_TIM1_OC4PreloadConfig
7400                     	xdef	_TIM1_OC3PreloadConfig
7401                     	xdef	_TIM1_OC2PreloadConfig
7402                     	xdef	_TIM1_OC1PreloadConfig
7403                     	xdef	_TIM1_CCPreloadControl
7404                     	xdef	_TIM1_SelectCOM
7405                     	xdef	_TIM1_ARRPreloadConfig
7406                     	xdef	_TIM1_ForcedOC4Config
7407                     	xdef	_TIM1_ForcedOC3Config
7408                     	xdef	_TIM1_ForcedOC2Config
7409                     	xdef	_TIM1_ForcedOC1Config
7410                     	xdef	_TIM1_CounterModeConfig
7411                     	xdef	_TIM1_PrescalerConfig
7412                     	xdef	_TIM1_EncoderInterfaceConfig
7413                     	xdef	_TIM1_SelectMasterSlaveMode
7414                     	xdef	_TIM1_SelectSlaveMode
7415                     	xdef	_TIM1_SelectOutputTrigger
7416                     	xdef	_TIM1_SelectOnePulseMode
7417                     	xdef	_TIM1_SelectHallSensor
7418                     	xdef	_TIM1_UpdateRequestConfig
7419                     	xdef	_TIM1_UpdateDisableConfig
7420                     	xdef	_TIM1_SelectInputTrigger
7421                     	xdef	_TIM1_TIxExternalClockConfig
7422                     	xdef	_TIM1_ETRConfig
7423                     	xdef	_TIM1_ETRClockMode2Config
7424                     	xdef	_TIM1_ETRClockMode1Config
7425                     	xdef	_TIM1_InternalClockConfig
7426                     	xdef	_TIM1_ITConfig
7427                     	xdef	_TIM1_CtrlPWMOutputs
7428                     	xdef	_TIM1_Cmd
7429                     	xdef	_TIM1_PWMIConfig
7430                     	xdef	_TIM1_ICInit
7431                     	xdef	_TIM1_BDTRConfig
7432                     	xdef	_TIM1_OC4Init
7433                     	xdef	_TIM1_OC3Init
7434                     	xdef	_TIM1_OC2Init
7435                     	xdef	_TIM1_OC1Init
7436                     	xdef	_TIM1_TimeBaseInit
7437                     	xdef	_TIM1_DeInit
7456                     	end
