   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  44                     ; 36 void Delayy(u16 nCount)
  44                     ; 37 {
  46                     .text:	section	.text,new
  47  0000               _Delayy:
  49  0000 89            	pushw	x
  50       00000000      OFST:	set	0
  53  0001 2003          	jra	L13
  54  0003               L72:
  55                     ; 41 		nCount--;
  57  0003 5a            	decw	x
  58  0004 1f01          	ldw	(OFST+1,sp),x
  59  0006               L13:
  60                     ; 39 	while (nCount != 0)
  62  0006 1e01          	ldw	x,(OFST+1,sp)
  63  0008 26f9          	jrne	L72
  64                     ; 43 }
  67  000a 85            	popw	x
  68  000b 81            	ret	
  92                     ; 56 @far @interrupt void NonHandledInterrupt(void)
  92                     ; 57 {
  94                     .text:	section	.text,new
  95  0000               f_NonHandledInterrupt:
 100                     ; 61 }
 103  0000 80            	iret	
 125                     ; 70 @far @interrupt void TRAP_IRQHandler(void)
 125                     ; 71 {
 126                     .text:	section	.text,new
 127  0000               f_TRAP_IRQHandler:
 132                     ; 75 }
 135  0000 80            	iret	
 157                     ; 101 @far @interrupt void TLI_IRQHandler(void)
 157                     ; 102 #else /* _RAISONANCE_ */
 157                     ; 103 void TLI_IRQHandler(void) interrupt 0
 157                     ; 104 #endif /* _COSMIC_ */
 157                     ; 105 {
 158                     .text:	section	.text,new
 159  0000               f_TLI_IRQHandler:
 164                     ; 109 }
 167  0000 80            	iret	
 189                     ; 119 @far @interrupt void AWU_IRQHandler(void)
 189                     ; 120 #else /* _RAISONANCE_ */
 189                     ; 121 void AWU_IRQHandler(void) interrupt 1
 189                     ; 122 #endif /* _COSMIC_ */
 189                     ; 123 {
 190                     .text:	section	.text,new
 191  0000               f_AWU_IRQHandler:
 196                     ; 127 }
 199  0000 80            	iret	
 221                     ; 137 @far @interrupt void CLK_IRQHandler(void)
 221                     ; 138 #else /* _RAISONANCE_ */
 221                     ; 139 void CLK_IRQHandler(void) interrupt 2
 221                     ; 140 #endif /* _COSMIC_ */
 221                     ; 141 {
 222                     .text:	section	.text,new
 223  0000               f_CLK_IRQHandler:
 228                     ; 145 }
 231  0000 80            	iret	
 254                     ; 155 @far @interrupt void EXTI_PORTA_IRQHandler(void)
 254                     ; 156 #else /* _RAISONANCE_ */
 254                     ; 157 void EXTI_PORTA_IRQHandler(void) interrupt 3
 254                     ; 158 #endif /* _COSMIC_ */
 254                     ; 159 {
 255                     .text:	section	.text,new
 256  0000               f_EXTI_PORTA_IRQHandler:
 261                     ; 163 }
 264  0000 80            	iret	
 287                     ; 173 @far @interrupt void EXTI_PORTB_IRQHandler(void)
 287                     ; 174 #else /* _RAISONANCE_ */
 287                     ; 175 void EXTI_PORTB_IRQHandler(void) interrupt 4
 287                     ; 176 #endif /* _COSMIC_ */
 287                     ; 177 {
 288                     .text:	section	.text,new
 289  0000               f_EXTI_PORTB_IRQHandler:
 294                     ; 181 }
 297  0000 80            	iret	
 320                     ; 191 @far @interrupt void EXTI_PORTC_IRQHandler(void)
 320                     ; 192 #else /* _RAISONANCE_ */
 320                     ; 193 void EXTI_PORTC_IRQHandler(void) interrupt 5
 320                     ; 194 #endif /* _COSMIC_ */
 320                     ; 195 {
 321                     .text:	section	.text,new
 322  0000               f_EXTI_PORTC_IRQHandler:
 327                     ; 199 }
 330  0000 80            	iret	
 353                     ; 209 @far @interrupt void EXTI_PORTD_IRQHandler(void)
 353                     ; 210 #else /* _RAISONANCE_ */
 353                     ; 211 void EXTI_PORTD_IRQHandler(void) interrupt 6
 353                     ; 212 #endif /* _COSMIC_ */
 353                     ; 213 {
 354                     .text:	section	.text,new
 355  0000               f_EXTI_PORTD_IRQHandler:
 360                     ; 217 }
 363  0000 80            	iret	
 386                     ; 227 @far @interrupt void EXTI_PORTE_IRQHandler(void)
 386                     ; 228 #else /* _RAISONANCE_ */
 386                     ; 229 void EXTI_PORTE_IRQHandler(void) interrupt 7
 386                     ; 230 #endif /* _COSMIC_ */
 386                     ; 231 {
 387                     .text:	section	.text,new
 388  0000               f_EXTI_PORTE_IRQHandler:
 393                     ; 235 }
 396  0000 80            	iret	
 418                     ; 302 @far @interrupt void SPI_IRQHandler(void)
 418                     ; 303 #else /* _RAISONANCE_ */
 418                     ; 304 void SPI_IRQHandler(void) interrupt 10
 418                     ; 305 #endif /* _COSMIC_ */
 418                     ; 306 {
 419                     .text:	section	.text,new
 420  0000               f_SPI_IRQHandler:
 425                     ; 310 }
 428  0000 80            	iret	
 451                     ; 320 @far @interrupt void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void)
 451                     ; 321 #else /* _RAISONANCE_ */
 451                     ; 322 void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) interrupt 11
 451                     ; 323 #endif /* _COSMIC_ */
 451                     ; 324 {
 452                     .text:	section	.text,new
 453  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 458                     ; 328 }
 461  0000 80            	iret	
 484                     ; 338 @far @interrupt void TIM1_CAP_COM_IRQHandler(void)
 484                     ; 339 #else /* _RAISONANCE_ */
 484                     ; 340 void TIM1_CAP_COM_IRQHandler(void) interrupt 12
 484                     ; 341 #endif /* _COSMIC_ */
 484                     ; 342 {
 485                     .text:	section	.text,new
 486  0000               f_TIM1_CAP_COM_IRQHandler:
 491                     ; 346 }
 494  0000 80            	iret	
 517                     ; 393 @far @interrupt void TIM2_UPD_OVF_BRK_IRQHandler(void)
 517                     ; 394 #else /* _RAISONANCE_ */
 517                     ; 395 void TIM2_UPD_OVF_BRK_IRQHandler(void) interrupt 13
 517                     ; 396 #endif /* _COSMIC_ */
 517                     ; 397 {
 518                     .text:	section	.text,new
 519  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 524                     ; 401 }
 527  0000 80            	iret	
 550                     ; 411 @far @interrupt void TIM2_CAP_COM_IRQHandler(void)
 550                     ; 412 #else /* _RAISONANCE_ */
 550                     ; 413 void TIM2_CAP_COM_IRQHandler(void) interrupt 14
 550                     ; 414 #endif /* _COSMIC_ */
 550                     ; 415 {
 551                     .text:	section	.text,new
 552  0000               f_TIM2_CAP_COM_IRQHandler:
 557                     ; 419 }
 560  0000 80            	iret	
 583                     ; 431 @far @interrupt void TIM3_UPD_OVF_BRK_IRQHandler(void)
 583                     ; 432 #else /* _RAISONANCE_ */
 583                     ; 433 void TIM3_UPD_OVF_BRK_IRQHandler(void) interrupt 15
 583                     ; 434 #endif /* _COSMIC_ */
 583                     ; 435 {
 584                     .text:	section	.text,new
 585  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 590                     ; 439 }
 593  0000 80            	iret	
 616                     ; 449 @far @interrupt void TIM3_CAP_COM_IRQHandler(void)
 616                     ; 450 #else /* _RAISONANCE_ */
 616                     ; 451 void TIM3_CAP_COM_IRQHandler(void) interrupt 16
 616                     ; 452 #endif /* _COSMIC_ */
 616                     ; 453 {
 617                     .text:	section	.text,new
 618  0000               f_TIM3_CAP_COM_IRQHandler:
 623                     ; 457 }
 626  0000 80            	iret	
 648                     ; 506 @far @interrupt void I2C_IRQHandler(void)
 648                     ; 507 #else /* _RAISONANCE_ */
 648                     ; 508 void I2C_IRQHandler(void) interrupt 19
 648                     ; 509 #endif /* _COSMIC_ */
 648                     ; 510 {
 649                     .text:	section	.text,new
 650  0000               f_I2C_IRQHandler:
 655                     ; 514 }
 658  0000 80            	iret	
 681                     ; 525 @far @interrupt void UART2_TX_IRQHandler(void)
 681                     ; 526 #else /* _RAISONANCE_ */
 681                     ; 527 void UART2_TX_IRQHandler(void) interrupt 20
 681                     ; 528 #endif /* _COSMIC_ */
 681                     ; 529 {
 682                     .text:	section	.text,new
 683  0000               f_UART2_TX_IRQHandler:
 688                     ; 533   }
 691  0000 80            	iret	
 716                     ; 543 @far @interrupt void UART2_RX_IRQHandler(void)
 716                     ; 544 #else /* _RAISONANCE_ */
 716                     ; 545 void UART2_RX_IRQHandler(void) interrupt 21
 716                     ; 546 #endif /* _COSMIC_ */
 716                     ; 547 {
 717                     .text:	section	.text,new
 718  0000               f_UART2_RX_IRQHandler:
 721  0000 3b0002        	push	c_x+2
 722  0003 be00          	ldw	x,c_x
 723  0005 89            	pushw	x
 724  0006 3b0002        	push	c_y+2
 725  0009 be00          	ldw	x,c_y
 726  000b 89            	pushw	x
 729                     ; 551 	printf( "%c", UART2_ReceiveData8() );
 731  000c cd0000        	call	_UART2_ReceiveData8
 733  000f 88            	push	a
 734  0010 ae0000        	ldw	x,#L572
 735  0013 cd0000        	call	_printf
 737  0016 84            	pop	a
 738                     ; 552 }
 741  0017 85            	popw	x
 742  0018 bf00          	ldw	c_y,x
 743  001a 320002        	pop	c_y+2
 744  001d 85            	popw	x
 745  001e bf00          	ldw	c_x,x
 746  0020 320002        	pop	c_x+2
 747  0023 80            	iret	
 769                     ; 623 @far @interrupt void ADC1_IRQHandler(void)
 769                     ; 624 #else /* _RAISONANCE_ */
 769                     ; 625 void ADC1_IRQHandler(void) interrupt 22
 769                     ; 626 #endif /* _COSMIC_ */
 769                     ; 627 {
 770                     .text:	section	.text,new
 771  0000               f_ADC1_IRQHandler:
 776                     ; 632     return;
 779  0000 80            	iret	
 802                     ; 664 @far @interrupt void TIM4_UPD_OVF_IRQHandler(void)
 802                     ; 665 #else /* _RAISONANCE_ */
 802                     ; 666 void TIM4_UPD_OVF_IRQHandler(void) interrupt 23
 802                     ; 667 #endif /* _COSMIC_ */
 802                     ; 668 {
 803                     .text:	section	.text,new
 804  0000               f_TIM4_UPD_OVF_IRQHandler:
 809                     ; 672 }
 812  0000 80            	iret	
 835                     ; 683 @far @interrupt void EEPROM_EEC_IRQHandler(void)
 835                     ; 684 #else /* _RAISONANCE_ */
 835                     ; 685 void EEPROM_EEC_IRQHandler(void) interrupt 24
 835                     ; 686 #endif /* _COSMIC_ */
 835                     ; 687 {
 836                     .text:	section	.text,new
 837  0000               f_EEPROM_EEC_IRQHandler:
 842                     ; 691 }
 845  0000 80            	iret	
 857                     	xdef	_Delayy
 858                     	xdef	f_EEPROM_EEC_IRQHandler
 859                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 860                     	xdef	f_ADC1_IRQHandler
 861                     	xdef	f_UART2_TX_IRQHandler
 862                     	xdef	f_UART2_RX_IRQHandler
 863                     	xdef	f_I2C_IRQHandler
 864                     	xdef	f_TIM3_CAP_COM_IRQHandler
 865                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 866                     	xdef	f_TIM2_CAP_COM_IRQHandler
 867                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 868                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 869                     	xdef	f_TIM1_CAP_COM_IRQHandler
 870                     	xdef	f_SPI_IRQHandler
 871                     	xdef	f_EXTI_PORTE_IRQHandler
 872                     	xdef	f_EXTI_PORTD_IRQHandler
 873                     	xdef	f_EXTI_PORTC_IRQHandler
 874                     	xdef	f_EXTI_PORTB_IRQHandler
 875                     	xdef	f_EXTI_PORTA_IRQHandler
 876                     	xdef	f_CLK_IRQHandler
 877                     	xdef	f_AWU_IRQHandler
 878                     	xdef	f_TLI_IRQHandler
 879                     	xdef	f_TRAP_IRQHandler
 880                     	xdef	f_NonHandledInterrupt
 881                     	xref	_UART2_ReceiveData8
 882                     	xref	_printf
 883                     .const:	section	.text
 884  0000               L572:
 885  0000 256300        	dc.b	"%c",0
 886                     	xref.b	c_x
 887                     	xref.b	c_y
 907                     	end
