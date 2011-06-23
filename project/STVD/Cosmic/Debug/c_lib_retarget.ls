   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  46                     ; 26 PUTCHAR_PROTOTYPE
  46                     ; 27 {
  48                     .text:	section	.text,new
  49  0000               _putchar:
  51  0000 88            	push	a
  52       00000000      OFST:	set	0
  55                     ; 29 	UART2_SendData8(c);
  57  0001 cd0000        	call	_UART2_SendData8
  60  0004               L13:
  61                     ; 31 	while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET)
  63  0004 ae0080        	ldw	x,#128
  64  0007 cd0000        	call	_UART2_GetFlagStatus
  66  000a 4d            	tnz	a
  67  000b 27f7          	jreq	L13
  68                     ; 34 	return c;
  70  000d 7b01          	ld	a,(OFST+1,sp)
  73  000f 5b01          	addw	sp,#1
  74  0011 81            	ret	
  87                     	xref	_UART2_GetFlagStatus
  88                     	xref	_UART2_SendData8
  89                     	xdef	_putchar
 108                     	end
