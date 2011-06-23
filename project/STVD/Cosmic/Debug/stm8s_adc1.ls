   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 46 void ADC1_DeInit(void)
  33                     ; 47 {
  35                     .text:	section	.text,new
  36  0000               _ADC1_DeInit:
  40                     ; 48     ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  42  0000 725f5400      	clr	21504
  43                     ; 49     ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  45  0004 725f5401      	clr	21505
  46                     ; 50     ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  48  0008 725f5402      	clr	21506
  49                     ; 51     ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  51  000c 725f5403      	clr	21507
  52                     ; 52     ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  54  0010 725f5406      	clr	21510
  55                     ; 53     ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  57  0014 725f5407      	clr	21511
  58                     ; 54     ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  60  0018 35ff5408      	mov	21512,#255
  61                     ; 55     ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  63  001c 35035409      	mov	21513,#3
  64                     ; 56     ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  66  0020 725f540a      	clr	21514
  67                     ; 57     ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  69  0024 725f540b      	clr	21515
  70                     ; 58     ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  72  0028 725f540e      	clr	21518
  73                     ; 59     ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  75  002c 725f540f      	clr	21519
  76                     ; 60 }
  79  0030 81            	ret	
 515                     ; 83 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 515                     ; 84 {
 516                     .text:	section	.text,new
 517  0000               _ADC1_Init:
 519  0000 89            	pushw	x
 520       00000000      OFST:	set	0
 523                     ; 87     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 525                     ; 88     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 527                     ; 89     assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 529                     ; 90     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 531                     ; 91     assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 533                     ; 92     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 535                     ; 93     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 537                     ; 94     assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 539                     ; 99     ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 541  0001 7b08          	ld	a,(OFST+8,sp)
 542  0003 88            	push	a
 543  0004 7b02          	ld	a,(OFST+2,sp)
 544  0006 95            	ld	xh,a
 545  0007 cd0000        	call	_ADC1_ConversionConfig
 547  000a 84            	pop	a
 548                     ; 101     ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 550  000b 7b05          	ld	a,(OFST+5,sp)
 551  000d cd0000        	call	_ADC1_PrescalerConfig
 553                     ; 106     ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 555  0010 7b07          	ld	a,(OFST+7,sp)
 556  0012 97            	ld	xl,a
 557  0013 7b06          	ld	a,(OFST+6,sp)
 558  0015 95            	ld	xh,a
 559  0016 cd0000        	call	_ADC1_ExternalTriggerConfig
 561                     ; 111     ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 563  0019 7b0a          	ld	a,(OFST+10,sp)
 564  001b 97            	ld	xl,a
 565  001c 7b09          	ld	a,(OFST+9,sp)
 566  001e 95            	ld	xh,a
 567  001f cd0000        	call	_ADC1_SchmittTriggerConfig
 569                     ; 114     ADC1->CR1 |= ADC1_CR1_ADON;
 571  0022 72105401      	bset	21505,#0
 572                     ; 116 }
 575  0026 85            	popw	x
 576  0027 81            	ret	
 611                     ; 124 void ADC1_Cmd(FunctionalState NewState)
 611                     ; 125 {
 612                     .text:	section	.text,new
 613  0000               _ADC1_Cmd:
 617                     ; 128     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 619                     ; 130     if (NewState != DISABLE)
 621  0000 4d            	tnz	a
 622  0001 2705          	jreq	L752
 623                     ; 132         ADC1->CR1 |= ADC1_CR1_ADON;
 625  0003 72105401      	bset	21505,#0
 628  0007 81            	ret	
 629  0008               L752:
 630                     ; 136         ADC1->CR1 &= (u8)(~ADC1_CR1_ADON);
 632  0008 72115401      	bres	21505,#0
 633                     ; 139 }
 636  000c 81            	ret	
 671                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 671                     ; 147 {
 672                     .text:	section	.text,new
 673  0000               _ADC1_ScanModeCmd:
 677                     ; 150     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 679                     ; 152     if (NewState != DISABLE)
 681  0000 4d            	tnz	a
 682  0001 2705          	jreq	L103
 683                     ; 154         ADC1->CR2 |= ADC1_CR2_SCAN;
 685  0003 72125402      	bset	21506,#1
 688  0007 81            	ret	
 689  0008               L103:
 690                     ; 158         ADC1->CR2 &= (u8)(~ADC1_CR2_SCAN);
 692  0008 72135402      	bres	21506,#1
 693                     ; 161 }
 696  000c 81            	ret	
 731                     ; 168 void ADC1_DataBufferCmd(FunctionalState NewState)
 731                     ; 169 {
 732                     .text:	section	.text,new
 733  0000               _ADC1_DataBufferCmd:
 737                     ; 172     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 739                     ; 174     if (NewState != DISABLE)
 741  0000 4d            	tnz	a
 742  0001 2705          	jreq	L323
 743                     ; 176         ADC1->CR3 |= ADC1_CR3_DBUF;
 745  0003 721e5403      	bset	21507,#7
 748  0007 81            	ret	
 749  0008               L323:
 750                     ; 180         ADC1->CR3 &= (u8)(~ADC1_CR3_DBUF);
 752  0008 721f5403      	bres	21507,#7
 753                     ; 183 }
 756  000c 81            	ret	
 905                     ; 194 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
 905                     ; 195 {
 906                     .text:	section	.text,new
 907  0000               _ADC1_ITConfig:
 909  0000 89            	pushw	x
 910       00000000      OFST:	set	0
 913                     ; 198     assert_param(IS_ADC1_IT_OK(ADC1_IT));
 915                     ; 199     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 917                     ; 201     if (NewState != DISABLE)
 919  0001 7b05          	ld	a,(OFST+5,sp)
 920  0003 2706          	jreq	L114
 921                     ; 204         ADC1->CSR |= (u8)ADC1_IT;
 923  0005 9f            	ld	a,xl
 924  0006 ca5400        	or	a,21504
 926  0009 2006          	jra	L314
 927  000b               L114:
 928                     ; 209         ADC1->CSR &= (u8)(~ADC1_IT);
 930  000b 7b02          	ld	a,(OFST+2,sp)
 931  000d 43            	cpl	a
 932  000e c45400        	and	a,21504
 933  0011               L314:
 934  0011 c75400        	ld	21504,a
 935                     ; 212 }
 938  0014 85            	popw	x
 939  0015 81            	ret	
 975                     ; 220 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
 975                     ; 221 {
 976                     .text:	section	.text,new
 977  0000               _ADC1_PrescalerConfig:
 979  0000 88            	push	a
 980       00000000      OFST:	set	0
 983                     ; 224     assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
 985                     ; 227     ADC1->CR1 &= (u8)(~ADC1_CR1_SPSEL);
 987  0001 c65401        	ld	a,21505
 988  0004 a48f          	and	a,#143
 989  0006 c75401        	ld	21505,a
 990                     ; 229     ADC1->CR1 |= (u8)(ADC1_Prescaler);
 992  0009 c65401        	ld	a,21505
 993  000c 1a01          	or	a,(OFST+1,sp)
 994  000e c75401        	ld	21505,a
 995                     ; 231 }
 998  0011 84            	pop	a
 999  0012 81            	ret	
1046                     ; 242 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1046                     ; 243 {
1047                     .text:	section	.text,new
1048  0000               _ADC1_SchmittTriggerConfig:
1050  0000 89            	pushw	x
1051       00000000      OFST:	set	0
1054                     ; 246     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1056                     ; 247     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1058                     ; 249     if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1060  0001 9e            	ld	a,xh
1061  0002 4c            	inc	a
1062  0003 261d          	jrne	L554
1063                     ; 251         if (NewState != DISABLE)
1065  0005 9f            	ld	a,xl
1066  0006 4d            	tnz	a
1067  0007 270a          	jreq	L754
1068                     ; 253             ADC1->TDRL &= (u8)0x0;
1070  0009 725f5407      	clr	21511
1071                     ; 254             ADC1->TDRH &= (u8)0x0;
1073  000d 725f5406      	clr	21510
1075  0011 2059          	jra	L364
1076  0013               L754:
1077                     ; 258             ADC1->TDRL |= (u8)0xFF;
1079  0013 c65407        	ld	a,21511
1080  0016 aaff          	or	a,#255
1081  0018 c75407        	ld	21511,a
1082                     ; 259             ADC1->TDRH |= (u8)0xFF;
1084  001b c65406        	ld	a,21510
1085  001e aaff          	or	a,#255
1086  0020 2047          	jp	LC001
1087  0022               L554:
1088                     ; 262     else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1090  0022 7b01          	ld	a,(OFST+1,sp)
1091  0024 a108          	cp	a,#8
1092  0026 0d02          	tnz	(OFST+2,sp)
1093  0028 2420          	jruge	L564
1094                     ; 264         if (NewState != DISABLE)
1096  002a 2711          	jreq	L764
1097                     ; 266             ADC1->TDRL &= (u8)(~(u8)((u8)0x01 << (u8)ADC1_SchmittTriggerChannel));
1099  002c ad40          	call	LC003
1100  002e 2704          	jreq	L43
1101  0030               L63:
1102  0030 48            	sll	a
1103  0031 5a            	decw	x
1104  0032 26fc          	jrne	L63
1105  0034               L43:
1106  0034 43            	cpl	a
1107  0035 c45407        	and	a,21511
1108  0038               LC002:
1109  0038 c75407        	ld	21511,a
1111  003b 202f          	jra	L364
1112  003d               L764:
1113                     ; 270             ADC1->TDRL |= (u8)((u8)0x01 << (u8)ADC1_SchmittTriggerChannel);
1115  003d ad2f          	call	LC003
1116  003f 2704          	jreq	L04
1117  0041               L24:
1118  0041 48            	sll	a
1119  0042 5a            	decw	x
1120  0043 26fc          	jrne	L24
1121  0045               L04:
1122  0045 ca5407        	or	a,21511
1123  0048 20ee          	jp	LC002
1124  004a               L564:
1125                     ; 275         if (NewState != DISABLE)
1127  004a 2710          	jreq	L574
1128                     ; 277             ADC1->TDRH &= (u8)(~(u8)((u8)0x01 << ((u8)ADC1_SchmittTriggerChannel - (u8)8)));
1130  004c a008          	sub	a,#8
1131  004e ad1e          	call	LC003
1132  0050 2704          	jreq	L44
1133  0052               L64:
1134  0052 48            	sll	a
1135  0053 5a            	decw	x
1136  0054 26fc          	jrne	L64
1137  0056               L44:
1138  0056 43            	cpl	a
1139  0057 c45406        	and	a,21510
1141  005a 200d          	jp	LC001
1142  005c               L574:
1143                     ; 281             ADC1->TDRH |= (u8)((u8)0x01 << ((u8)ADC1_SchmittTriggerChannel - (u8)8));
1145  005c a008          	sub	a,#8
1146  005e ad0e          	call	LC003
1147  0060 2704          	jreq	L05
1148  0062               L25:
1149  0062 48            	sll	a
1150  0063 5a            	decw	x
1151  0064 26fc          	jrne	L25
1152  0066               L05:
1153  0066 ca5406        	or	a,21510
1154  0069               LC001:
1155  0069 c75406        	ld	21510,a
1156  006c               L364:
1157                     ; 285 }
1160  006c 85            	popw	x
1161  006d 81            	ret	
1163  006e               LC003:
1164  006e 5f            	clrw	x
1165  006f 97            	ld	xl,a
1166  0070 a601          	ld	a,#1
1167  0072 5d            	tnzw	x
1168  0073 81            	ret	
1224                     ; 298 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1224                     ; 299 {
1225                     .text:	section	.text,new
1226  0000               _ADC1_ConversionConfig:
1228  0000 89            	pushw	x
1229       00000000      OFST:	set	0
1232                     ; 302     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1234                     ; 303     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1236                     ; 304     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1238                     ; 307     ADC1->CR2 &= (u8)(~ADC1_CR2_ALIGN);
1240  0001 72175402      	bres	21506,#3
1241                     ; 309     ADC1->CR2 |= (u8)(ADC1_Align);
1243  0005 c65402        	ld	a,21506
1244  0008 1a05          	or	a,(OFST+5,sp)
1245  000a c75402        	ld	21506,a
1246                     ; 311     if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1248  000d 9e            	ld	a,xh
1249  000e 4a            	dec	a
1250  000f 2606          	jrne	L725
1251                     ; 314         ADC1->CR1 |= ADC1_CR1_CONT;
1253  0011 72125401      	bset	21505,#1
1255  0015 2004          	jra	L135
1256  0017               L725:
1257                     ; 319         ADC1->CR1 &= (u8)(~ADC1_CR1_CONT);
1259  0017 72135401      	bres	21505,#1
1260  001b               L135:
1261                     ; 323     ADC1->CSR &= (u8)(~ADC1_CSR_CH);
1263  001b c65400        	ld	a,21504
1264  001e a4f0          	and	a,#240
1265  0020 c75400        	ld	21504,a
1266                     ; 325     ADC1->CSR |= (u8)(ADC1_Channel);
1268  0023 c65400        	ld	a,21504
1269  0026 1a02          	or	a,(OFST+2,sp)
1270  0028 c75400        	ld	21504,a
1271                     ; 327 }
1274  002b 85            	popw	x
1275  002c 81            	ret	
1321                     ; 340 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1321                     ; 341 {
1322                     .text:	section	.text,new
1323  0000               _ADC1_ExternalTriggerConfig:
1325  0000 89            	pushw	x
1326       00000000      OFST:	set	0
1329                     ; 344     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1331                     ; 345     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1333                     ; 348     ADC1->CR2 &= (u8)(~ADC1_CR2_EXTSEL);
1335  0001 c65402        	ld	a,21506
1336  0004 a4cf          	and	a,#207
1337  0006 c75402        	ld	21506,a
1338                     ; 350     if (NewState != DISABLE)
1340  0009 9f            	ld	a,xl
1341  000a 4d            	tnz	a
1342  000b 2706          	jreq	L555
1343                     ; 353         ADC1->CR2 |= (u8)(ADC1_CR2_EXTTRIG);
1345  000d 721c5402      	bset	21506,#6
1347  0011 2004          	jra	L755
1348  0013               L555:
1349                     ; 358         ADC1->CR2 &= (u8)(~ADC1_CR2_EXTTRIG);
1351  0013 721d5402      	bres	21506,#6
1352  0017               L755:
1353                     ; 362     ADC1->CR2 |= (u8)(ADC1_ExtTrigger);
1355  0017 c65402        	ld	a,21506
1356  001a 1a01          	or	a,(OFST+1,sp)
1357  001c c75402        	ld	21506,a
1358                     ; 364 }
1361  001f 85            	popw	x
1362  0020 81            	ret	
1386                     ; 377 void ADC1_StartConversion(void)
1386                     ; 378 {
1387                     .text:	section	.text,new
1388  0000               _ADC1_StartConversion:
1392                     ; 379     ADC1->CR1 |= ADC1_CR1_ADON;
1394  0000 72105401      	bset	21505,#0
1395                     ; 380 }
1398  0004 81            	ret	
1442                     ; 390 u16 ADC1_GetConversionValue(void)
1442                     ; 391 {
1443                     .text:	section	.text,new
1444  0000               _ADC1_GetConversionValue:
1446  0000 5205          	subw	sp,#5
1447       00000005      OFST:	set	5
1450                     ; 393     u16 temph = 0;
1452                     ; 394     u8 templ = 0;
1454                     ; 396     if (ADC1->CR2 & ADC1_CR2_ALIGN) /* Right alignment */
1456  0002 720754020e    	btjf	21506,#3,L316
1457                     ; 399         templ = ADC1->DRL;
1459  0007 c65405        	ld	a,21509
1460  000a 6b03          	ld	(OFST-2,sp),a
1461                     ; 401         temph = ADC1->DRH;
1463  000c c65404        	ld	a,21508
1464  000f 97            	ld	xl,a
1465                     ; 403         temph = (u16)(templ | (u16)(temph << (u8)8));
1467  0010 7b03          	ld	a,(OFST-2,sp)
1468  0012 02            	rlwa	x,a
1470  0013 201a          	jra	L516
1471  0015               L316:
1472                     ; 408         temph = ADC1->DRH;
1474  0015 c65404        	ld	a,21508
1475  0018 97            	ld	xl,a
1476                     ; 410         templ = ADC1->DRL;
1478  0019 c65405        	ld	a,21509
1479  001c 6b03          	ld	(OFST-2,sp),a
1480                     ; 412         temph = (u16)((u16)(templ << (u8)6) | (u16)(temph << (u8)8));
1482  001e 4f            	clr	a
1483  001f 02            	rlwa	x,a
1484  0020 1f01          	ldw	(OFST-4,sp),x
1485  0022 7b03          	ld	a,(OFST-2,sp)
1486  0024 97            	ld	xl,a
1487  0025 a640          	ld	a,#64
1488  0027 42            	mul	x,a
1489  0028 01            	rrwa	x,a
1490  0029 1a02          	or	a,(OFST-3,sp)
1491  002b 01            	rrwa	x,a
1492  002c 1a01          	or	a,(OFST-4,sp)
1493  002e 01            	rrwa	x,a
1494  002f               L516:
1495                     ; 415     return ((u16)temph);
1499  002f 5b05          	addw	sp,#5
1500  0031 81            	ret	
1546                     ; 427 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1546                     ; 428 {
1547                     .text:	section	.text,new
1548  0000               _ADC1_AWDChannelConfig:
1550  0000 89            	pushw	x
1551       00000000      OFST:	set	0
1554                     ; 430     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1556                     ; 431     assert_param(IS_ADC1_CHANNEL_OK(Channel));
1558                     ; 433     if (Channel < (u8)8)
1560  0001 9e            	ld	a,xh
1561  0002 a108          	cp	a,#8
1562  0004 2425          	jruge	L146
1563                     ; 435         if (NewState != DISABLE)
1565  0006 9f            	ld	a,xl
1566  0007 4d            	tnz	a
1567  0008 270e          	jreq	L346
1568                     ; 437             ADC1->AWCRL |= (u8)((u8)1 << Channel);
1570  000a 9e            	ld	a,xh
1571  000b ad48          	call	LC006
1572  000d 2704          	jreq	L66
1573  000f               L07:
1574  000f 48            	sll	a
1575  0010 5a            	decw	x
1576  0011 26fc          	jrne	L07
1577  0013               L66:
1578  0013 ca540f        	or	a,21519
1580  0016 200e          	jp	LC005
1581  0018               L346:
1582                     ; 441             ADC1->AWCRL &= (u8)(~((u8)1 << Channel));
1584  0018 7b01          	ld	a,(OFST+1,sp)
1585  001a ad39          	call	LC006
1586  001c 2704          	jreq	L27
1587  001e               L47:
1588  001e 48            	sll	a
1589  001f 5a            	decw	x
1590  0020 26fc          	jrne	L47
1591  0022               L27:
1592  0022 43            	cpl	a
1593  0023 c4540f        	and	a,21519
1594  0026               LC005:
1595  0026 c7540f        	ld	21519,a
1596  0029 2028          	jra	L746
1597  002b               L146:
1598                     ; 446         if (NewState != DISABLE)
1600  002b 7b02          	ld	a,(OFST+2,sp)
1601  002d 2711          	jreq	L156
1602                     ; 448             ADC1->AWCRH |= (u8)((u8)1 << (Channel - (u8)8));
1604  002f 7b01          	ld	a,(OFST+1,sp)
1605  0031 a008          	sub	a,#8
1606  0033 ad20          	call	LC006
1607  0035 2704          	jreq	L67
1608  0037               L001:
1609  0037 48            	sll	a
1610  0038 5a            	decw	x
1611  0039 26fc          	jrne	L001
1612  003b               L67:
1613  003b ca540e        	or	a,21518
1615  003e 2010          	jp	LC004
1616  0040               L156:
1617                     ; 452             ADC1->AWCRH &= (u8)(~((u8)1 << (Channel - (u8)8)));
1619  0040 7b01          	ld	a,(OFST+1,sp)
1620  0042 a008          	sub	a,#8
1621  0044 ad0f          	call	LC006
1622  0046 2704          	jreq	L201
1623  0048               L401:
1624  0048 48            	sll	a
1625  0049 5a            	decw	x
1626  004a 26fc          	jrne	L401
1627  004c               L201:
1628  004c 43            	cpl	a
1629  004d c4540e        	and	a,21518
1630  0050               LC004:
1631  0050 c7540e        	ld	21518,a
1632  0053               L746:
1633                     ; 455 }
1636  0053 85            	popw	x
1637  0054 81            	ret	
1639  0055               LC006:
1640  0055 5f            	clrw	x
1641  0056 97            	ld	xl,a
1642  0057 a601          	ld	a,#1
1643  0059 5d            	tnzw	x
1644  005a 81            	ret	
1678                     ; 463 void ADC1_SetHighThreshold(u16 Threshold)
1678                     ; 464 {
1679                     .text:	section	.text,new
1680  0000               _ADC1_SetHighThreshold:
1684                     ; 465     ADC1->HTRH = (u8)(Threshold >> (u8)8);
1686  0000 9e            	ld	a,xh
1687  0001 c75408        	ld	21512,a
1688                     ; 466     ADC1->HTRL = (u8)Threshold;
1690  0004 9f            	ld	a,xl
1691  0005 c75409        	ld	21513,a
1692                     ; 467 }
1695  0008 81            	ret	
1730                     ; 475 void ADC1_SetLowThreshold(u16 Threshold)
1730                     ; 476 {
1731                     .text:	section	.text,new
1732  0000               _ADC1_SetLowThreshold:
1736                     ; 477     ADC1->LTRL = (u8)Threshold;
1738  0000 9f            	ld	a,xl
1739  0001 c7540b        	ld	21515,a
1740                     ; 478     ADC1->LTRH = (u8)(Threshold >> (u8)8);
1742  0004 9e            	ld	a,xh
1743  0005 c7540a        	ld	21514,a
1744                     ; 479 }
1747  0008 81            	ret	
1800                     ; 488 u16 ADC1_GetBufferValue(u8 Buffer)
1800                     ; 489 {
1801                     .text:	section	.text,new
1802  0000               _ADC1_GetBufferValue:
1804  0000 88            	push	a
1805  0001 5205          	subw	sp,#5
1806       00000005      OFST:	set	5
1809                     ; 491     u16 temph = 0;
1811                     ; 492     u8 templ = 0;
1813                     ; 495     assert_param(IS_ADC1_BUFFER_OK(Buffer));
1815                     ; 497     if (ADC1->CR2 & ADC1_CR2_ALIGN) /* Right alignment */
1817  0003 7b06          	ld	a,(OFST+1,sp)
1818  0005 5f            	clrw	x
1819  0006 97            	ld	xl,a
1820  0007 58            	sllw	x
1821  0008 720754020e    	btjf	21506,#3,L737
1822                     ; 500         templ = *(u8*)(ADC1_BaseAddress + (Buffer << 1) + 1);
1824  000d d653e1        	ld	a,(21473,x)
1825  0010 6b03          	ld	(OFST-2,sp),a
1826                     ; 502         temph = *(u8*)(ADC1_BaseAddress + (Buffer << 1));
1828  0012 d653e0        	ld	a,(21472,x)
1829  0015 97            	ld	xl,a
1830                     ; 504         temph = (u16)(templ | (u16)(temph << (u8)8));
1832  0016 7b03          	ld	a,(OFST-2,sp)
1833  0018 02            	rlwa	x,a
1835  0019 2024          	jra	L147
1836  001b               L737:
1837                     ; 509         temph = *(u8*)(ADC1_BaseAddress + (Buffer << 1));
1839  001b d653e0        	ld	a,(21472,x)
1840  001e 5f            	clrw	x
1841  001f 97            	ld	xl,a
1842  0020 1f04          	ldw	(OFST-1,sp),x
1843                     ; 511         templ = *(u8*)(ADC1_BaseAddress + (Buffer << 1) + 1);
1845  0022 7b06          	ld	a,(OFST+1,sp)
1846  0024 5f            	clrw	x
1847  0025 97            	ld	xl,a
1848  0026 58            	sllw	x
1849  0027 d653e1        	ld	a,(21473,x)
1850  002a 6b03          	ld	(OFST-2,sp),a
1851                     ; 513         temph = (u16)((u16)(templ << (u8)6) | (u16)(temph << (u8)8));
1853  002c 1e04          	ldw	x,(OFST-1,sp)
1854  002e 4f            	clr	a
1855  002f 02            	rlwa	x,a
1856  0030 1f01          	ldw	(OFST-4,sp),x
1857  0032 7b03          	ld	a,(OFST-2,sp)
1858  0034 97            	ld	xl,a
1859  0035 a640          	ld	a,#64
1860  0037 42            	mul	x,a
1861  0038 01            	rrwa	x,a
1862  0039 1a02          	or	a,(OFST-3,sp)
1863  003b 01            	rrwa	x,a
1864  003c 1a01          	or	a,(OFST-4,sp)
1865  003e 01            	rrwa	x,a
1866  003f               L147:
1867                     ; 516     return ((u16)temph);
1871  003f 5b06          	addw	sp,#6
1872  0041 81            	ret	
1938                     ; 526 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
1938                     ; 527 {
1939                     .text:	section	.text,new
1940  0000               _ADC1_GetAWDChannelStatus:
1942  0000 88            	push	a
1943  0001 88            	push	a
1944       00000001      OFST:	set	1
1947                     ; 528     u8 status = 0;
1949  0002 0f01          	clr	(OFST+0,sp)
1950                     ; 531     assert_param(IS_ADC1_CHANNEL_OK(Channel));
1952                     ; 533     if (Channel < (u8)8)
1954  0004 a108          	cp	a,#8
1955  0006 2410          	jruge	L577
1956                     ; 535         status = (u8)(ADC1->AWSRL & ((u8)1 << Channel));
1958  0008 5f            	clrw	x
1959  0009 97            	ld	xl,a
1960  000a a601          	ld	a,#1
1961  000c 5d            	tnzw	x
1962  000d 2704          	jreq	L611
1963  000f               L021:
1964  000f 48            	sll	a
1965  0010 5a            	decw	x
1966  0011 26fc          	jrne	L021
1967  0013               L611:
1968  0013 c4540d        	and	a,21517
1970  0016 2012          	jra	L777
1971  0018               L577:
1972                     ; 539         status = (u8)(ADC1->AWSRH & ((u8)1 << (Channel - (u8)8)));
1974  0018 7b02          	ld	a,(OFST+1,sp)
1975  001a a008          	sub	a,#8
1976  001c 5f            	clrw	x
1977  001d 97            	ld	xl,a
1978  001e a601          	ld	a,#1
1979  0020 5d            	tnzw	x
1980  0021 2704          	jreq	L221
1981  0023               L421:
1982  0023 48            	sll	a
1983  0024 5a            	decw	x
1984  0025 26fc          	jrne	L421
1985  0027               L221:
1986  0027 c4540c        	and	a,21516
1987  002a               L777:
1988                     ; 542     return ((FlagStatus)status);
1992  002a 85            	popw	x
1993  002b 81            	ret	
2144                     ; 551 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2144                     ; 552 {
2145                     .text:	section	.text,new
2146  0000               _ADC1_GetFlagStatus:
2148  0000 88            	push	a
2149  0001 88            	push	a
2150       00000001      OFST:	set	1
2153                     ; 553     u8 flagstatus = 0;
2155                     ; 554     u8 temp = 0;
2157                     ; 557     assert_param(IS_ADC1_FLAG_OK(Flag));
2159                     ; 559     if ((Flag & 0x0F) == 0x01)
2161  0002 7b02          	ld	a,(OFST+1,sp)
2162  0004 a40f          	and	a,#15
2163  0006 4a            	dec	a
2164  0007 2607          	jrne	L5601
2165                     ; 562         flagstatus = (u8)(ADC1->CR3 & ADC1_CR3_OVR);
2167  0009 c65403        	ld	a,21507
2168  000c a440          	and	a,#64
2170  000e 2039          	jra	L7601
2171  0010               L5601:
2172                     ; 564     else if ((Flag & 0xF0) == 0x10)
2174  0010 7b02          	ld	a,(OFST+1,sp)
2175  0012 a4f0          	and	a,#240
2176  0014 a110          	cp	a,#16
2177  0016 262c          	jrne	L1701
2178                     ; 567         temp = (u8)(Flag & 0x0F);
2180  0018 7b02          	ld	a,(OFST+1,sp)
2181  001a a40f          	and	a,#15
2182  001c 6b01          	ld	(OFST+0,sp),a
2183                     ; 568         if (temp < 8)
2185  001e a108          	cp	a,#8
2186  0020 2410          	jruge	L3701
2187                     ; 570             flagstatus = (u8)(ADC1->AWSRL & (1 << temp));
2189  0022 5f            	clrw	x
2190  0023 97            	ld	xl,a
2191  0024 a601          	ld	a,#1
2192  0026 5d            	tnzw	x
2193  0027 2704          	jreq	L031
2194  0029               L231:
2195  0029 48            	sll	a
2196  002a 5a            	decw	x
2197  002b 26fc          	jrne	L231
2198  002d               L031:
2199  002d c4540d        	and	a,21517
2201  0030 2017          	jra	L7601
2202  0032               L3701:
2203                     ; 574             flagstatus = (u8)(ADC1->AWSRH & (1 << (temp - 8)));
2205  0032 a008          	sub	a,#8
2206  0034 5f            	clrw	x
2207  0035 97            	ld	xl,a
2208  0036 a601          	ld	a,#1
2209  0038 5d            	tnzw	x
2210  0039 2704          	jreq	L431
2211  003b               L631:
2212  003b 48            	sll	a
2213  003c 5a            	decw	x
2214  003d 26fc          	jrne	L631
2215  003f               L431:
2216  003f c4540c        	and	a,21516
2217  0042 2005          	jra	L7601
2218  0044               L1701:
2219                     ; 579         flagstatus = (u8)(ADC1->CSR & Flag);
2221  0044 c65400        	ld	a,21504
2222  0047 1402          	and	a,(OFST+1,sp)
2223  0049               L7601:
2224                     ; 581     return ((FlagStatus)flagstatus);
2228  0049 85            	popw	x
2229  004a 81            	ret	
2273                     ; 591 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2273                     ; 592 {
2274                     .text:	section	.text,new
2275  0000               _ADC1_ClearFlag:
2277  0000 88            	push	a
2278  0001 88            	push	a
2279       00000001      OFST:	set	1
2282                     ; 593     u8 temp = 0;
2284  0002 0f01          	clr	(OFST+0,sp)
2285                     ; 596     assert_param(IS_ADC1_FLAG_OK(Flag));
2287                     ; 598     if ((Flag & 0x0F) == 0x01)
2289  0004 a40f          	and	a,#15
2290  0006 4a            	dec	a
2291  0007 2606          	jrne	L3211
2292                     ; 601         ADC1->CR3 &= (u8)(~ADC1_CR3_OVR);
2294  0009 721d5403      	bres	21507,#6
2296  000d 2045          	jra	L5211
2297  000f               L3211:
2298                     ; 603     else if ((Flag & 0xF0) == 0x10)
2300  000f 7b02          	ld	a,(OFST+1,sp)
2301  0011 a4f0          	and	a,#240
2302  0013 a110          	cp	a,#16
2303  0015 2634          	jrne	L7211
2304                     ; 606         temp = (u8)(Flag & 0x0F);
2306  0017 7b02          	ld	a,(OFST+1,sp)
2307  0019 a40f          	and	a,#15
2308  001b 6b01          	ld	(OFST+0,sp),a
2309                     ; 607         if (temp < 8)
2311  001d a108          	cp	a,#8
2312  001f 2414          	jruge	L1311
2313                     ; 609             ADC1->AWSRL &= (u8)(~((u8)1 << temp));
2315  0021 5f            	clrw	x
2316  0022 97            	ld	xl,a
2317  0023 a601          	ld	a,#1
2318  0025 5d            	tnzw	x
2319  0026 2704          	jreq	L241
2320  0028               L441:
2321  0028 48            	sll	a
2322  0029 5a            	decw	x
2323  002a 26fc          	jrne	L441
2324  002c               L241:
2325  002c 43            	cpl	a
2326  002d c4540d        	and	a,21517
2327  0030 c7540d        	ld	21517,a
2329  0033 201f          	jra	L5211
2330  0035               L1311:
2331                     ; 613             ADC1->AWSRH &= (u8)(~((u8)1 << (temp - 8)));
2333  0035 a008          	sub	a,#8
2334  0037 5f            	clrw	x
2335  0038 97            	ld	xl,a
2336  0039 a601          	ld	a,#1
2337  003b 5d            	tnzw	x
2338  003c 2704          	jreq	L641
2339  003e               L051:
2340  003e 48            	sll	a
2341  003f 5a            	decw	x
2342  0040 26fc          	jrne	L051
2343  0042               L641:
2344  0042 43            	cpl	a
2345  0043 c4540c        	and	a,21516
2346  0046 c7540c        	ld	21516,a
2347  0049 2009          	jra	L5211
2348  004b               L7211:
2349                     ; 618         ADC1->CSR &= (u8) (~Flag);
2351  004b 7b02          	ld	a,(OFST+1,sp)
2352  004d 43            	cpl	a
2353  004e c45400        	and	a,21504
2354  0051 c75400        	ld	21504,a
2355  0054               L5211:
2356                     ; 620 }
2359  0054 85            	popw	x
2360  0055 81            	ret	
2415                     ; 640 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2415                     ; 641 {
2416                     .text:	section	.text,new
2417  0000               _ADC1_GetITStatus:
2419  0000 89            	pushw	x
2420  0001 88            	push	a
2421       00000001      OFST:	set	1
2424                     ; 642     ITStatus itstatus = RESET;
2426                     ; 643     u8 temp = 0;
2428                     ; 646     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2430                     ; 648     if ((ITPendingBit & 0xF0) == 0x10)
2432  0002 7b03          	ld	a,(OFST+2,sp)
2433  0004 a4f0          	and	a,#240
2434  0006 5f            	clrw	x
2435  0007 02            	rlwa	x,a
2436  0008 a30010        	cpw	x,#16
2437  000b 262c          	jrne	L5611
2438                     ; 651         temp = (u8)(ITPendingBit & 0x0F);
2440  000d 7b03          	ld	a,(OFST+2,sp)
2441  000f a40f          	and	a,#15
2442  0011 6b01          	ld	(OFST+0,sp),a
2443                     ; 652         if (temp < 8)
2445  0013 a108          	cp	a,#8
2446  0015 2410          	jruge	L7611
2447                     ; 654             itstatus = (u8)(ADC1->AWSRL & (u8)((u8)1 << temp));
2449  0017 5f            	clrw	x
2450  0018 97            	ld	xl,a
2451  0019 a601          	ld	a,#1
2452  001b 5d            	tnzw	x
2453  001c 2704          	jreq	L451
2454  001e               L651:
2455  001e 48            	sll	a
2456  001f 5a            	decw	x
2457  0020 26fc          	jrne	L651
2458  0022               L451:
2459  0022 c4540d        	and	a,21517
2461  0025 2017          	jra	L3711
2462  0027               L7611:
2463                     ; 658             itstatus = (u8)(ADC1->AWSRH & (u8)((u8)1 << (temp - 8)));
2465  0027 a008          	sub	a,#8
2466  0029 5f            	clrw	x
2467  002a 97            	ld	xl,a
2468  002b a601          	ld	a,#1
2469  002d 5d            	tnzw	x
2470  002e 2704          	jreq	L061
2471  0030               L261:
2472  0030 48            	sll	a
2473  0031 5a            	decw	x
2474  0032 26fc          	jrne	L261
2475  0034               L061:
2476  0034 c4540c        	and	a,21516
2477  0037 2005          	jra	L3711
2478  0039               L5611:
2479                     ; 663         itstatus = (u8)(ADC1->CSR & ITPendingBit);
2481  0039 c65400        	ld	a,21504
2482  003c 1403          	and	a,(OFST+2,sp)
2483  003e               L3711:
2484                     ; 665     return ((ITStatus)itstatus);
2488  003e 5b03          	addw	sp,#3
2489  0040 81            	ret	
2534                     ; 687 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
2534                     ; 688 {
2535                     .text:	section	.text,new
2536  0000               _ADC1_ClearITPendingBit:
2538  0000 89            	pushw	x
2539  0001 88            	push	a
2540       00000001      OFST:	set	1
2543                     ; 689     u8 temp = 0;
2545  0002 0f01          	clr	(OFST+0,sp)
2546                     ; 692     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2548                     ; 694     if ((ITPendingBit& 0xF0) == 0x10)
2550  0004 01            	rrwa	x,a
2551  0005 a4f0          	and	a,#240
2552  0007 5f            	clrw	x
2553  0008 02            	rlwa	x,a
2554  0009 a30010        	cpw	x,#16
2555  000c 2634          	jrne	L7121
2556                     ; 697         temp = (u8)(ITPendingBit & 0x0F);
2558  000e 7b03          	ld	a,(OFST+2,sp)
2559  0010 a40f          	and	a,#15
2560  0012 6b01          	ld	(OFST+0,sp),a
2561                     ; 698         if (temp < 8)
2563  0014 a108          	cp	a,#8
2564  0016 2414          	jruge	L1221
2565                     ; 700             ADC1->AWSRL &= (u8)(~((u8)1 << temp));
2567  0018 5f            	clrw	x
2568  0019 97            	ld	xl,a
2569  001a a601          	ld	a,#1
2570  001c 5d            	tnzw	x
2571  001d 2704          	jreq	L661
2572  001f               L071:
2573  001f 48            	sll	a
2574  0020 5a            	decw	x
2575  0021 26fc          	jrne	L071
2576  0023               L661:
2577  0023 43            	cpl	a
2578  0024 c4540d        	and	a,21517
2579  0027 c7540d        	ld	21517,a
2581  002a 201f          	jra	L5221
2582  002c               L1221:
2583                     ; 704             ADC1->AWSRH &= (u8)(~((u8)1 << (temp - 8)));
2585  002c a008          	sub	a,#8
2586  002e 5f            	clrw	x
2587  002f 97            	ld	xl,a
2588  0030 a601          	ld	a,#1
2589  0032 5d            	tnzw	x
2590  0033 2704          	jreq	L271
2591  0035               L471:
2592  0035 48            	sll	a
2593  0036 5a            	decw	x
2594  0037 26fc          	jrne	L471
2595  0039               L271:
2596  0039 43            	cpl	a
2597  003a c4540c        	and	a,21516
2598  003d c7540c        	ld	21516,a
2599  0040 2009          	jra	L5221
2600  0042               L7121:
2601                     ; 709         ADC1->CSR &= (u8) (~ITPendingBit);
2603  0042 7b03          	ld	a,(OFST+2,sp)
2604  0044 43            	cpl	a
2605  0045 c45400        	and	a,21504
2606  0048 c75400        	ld	21504,a
2607  004b               L5221:
2608                     ; 711 }
2611  004b 5b03          	addw	sp,#3
2612  004d 81            	ret	
2625                     	xdef	_ADC1_ClearITPendingBit
2626                     	xdef	_ADC1_GetITStatus
2627                     	xdef	_ADC1_ClearFlag
2628                     	xdef	_ADC1_GetFlagStatus
2629                     	xdef	_ADC1_GetAWDChannelStatus
2630                     	xdef	_ADC1_GetBufferValue
2631                     	xdef	_ADC1_SetLowThreshold
2632                     	xdef	_ADC1_SetHighThreshold
2633                     	xdef	_ADC1_GetConversionValue
2634                     	xdef	_ADC1_StartConversion
2635                     	xdef	_ADC1_AWDChannelConfig
2636                     	xdef	_ADC1_ExternalTriggerConfig
2637                     	xdef	_ADC1_ConversionConfig
2638                     	xdef	_ADC1_SchmittTriggerConfig
2639                     	xdef	_ADC1_PrescalerConfig
2640                     	xdef	_ADC1_ITConfig
2641                     	xdef	_ADC1_DataBufferCmd
2642                     	xdef	_ADC1_ScanModeCmd
2643                     	xdef	_ADC1_Cmd
2644                     	xdef	_ADC1_Init
2645                     	xdef	_ADC1_DeInit
2664                     	end
