   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  44                     ; 46 void Delay(u16 nCount)
  44                     ; 47 {
  46                     .text:	section	.text,new
  47  0000               _Delay:
  49  0000 89            	pushw	x
  50       00000000      OFST:	set	0
  53  0001 2003          	jra	L13
  54  0003               L72:
  55                     ; 51 		nCount--;
  57  0003 5a            	decw	x
  58  0004 1f01          	ldw	(OFST+1,sp),x
  59  0006               L13:
  60                     ; 49 	while (nCount != 0)
  62  0006 1e01          	ldw	x,(OFST+1,sp)
  63  0008 26f9          	jrne	L72
  64                     ; 53 }
  67  000a 85            	popw	x
  68  000b 81            	ret	
 139                     ; 55 void main(void)
 139                     ; 56 {
 140                     .text:	section	.text,new
 141  0000               _main:
 143  0000 5204          	subw	sp,#4
 144       00000004      OFST:	set	4
 147                     ; 57 	unsigned char i, j, k, Turn = 0x09;
 149  0002 a609          	ld	a,#9
 150  0004 6b04          	ld	(OFST+0,sp),a
 151                     ; 58 	GPIO_Init( LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST );
 153  0006 4be0          	push	#224
 154  0008 4b01          	push	#1
 155  000a ae500f        	ldw	x,#20495
 156  000d cd0000        	call	_GPIO_Init
 158  0010 85            	popw	x
 159                     ; 59 	GPIO_WriteHigh( LED_PORT, LED_PIN );
 161  0011 4b01          	push	#1
 162  0013 ae500f        	ldw	x,#20495
 163  0016 cd0000        	call	_GPIO_WriteHigh
 165  0019 84            	pop	a
 166                     ; 62 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
 168  001a a610          	ld	a,#16
 169  001c cd0000        	call	_CLK_HSIPrescalerConfig
 171                     ; 64 	UART2_DeInit();
 173  001f cd0000        	call	_UART2_DeInit
 175                     ; 75 	UART2_Init( (u32)9600, 
 175                     ; 76 				UART2_WORDLENGTH_8D, 
 175                     ; 77 				UART2_STOPBITS_1, 
 175                     ; 78 				UART2_PARITY_NO, 
 175                     ; 79 				UART2_SYNCMODE_CLOCK_DISABLE, 
 175                     ; 80 				UART2_MODE_TXRX_ENABLE 
 175                     ; 81 				);
 177  0022 4b0c          	push	#12
 178  0024 4b80          	push	#128
 179  0026 4b00          	push	#0
 180  0028 4b00          	push	#0
 181  002a 4b00          	push	#0
 182  002c ae2580        	ldw	x,#9600
 183  002f 89            	pushw	x
 184  0030 5f            	clrw	x
 185  0031 89            	pushw	x
 186  0032 cd0000        	call	_UART2_Init
 188  0035 5b09          	addw	sp,#9
 189                     ; 83     UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
 191  0037 4b01          	push	#1
 192  0039 ae0205        	ldw	x,#517
 193  003c cd0000        	call	_UART2_ITConfig
 195  003f 84            	pop	a
 196                     ; 85 	putchar(0x0C);	//clear screen
 198  0040 a60c          	ld	a,#12
 199  0042 cd0000        	call	_putchar
 201                     ; 86 	printf( "\r\n" );
 203  0045 ae0184        	ldw	x,#L76
 204  0048 cd0000        	call	_printf
 206                     ; 87 	printf("                       _\r\n" );
 208  004b ae0169        	ldw	x,#L17
 209  004e cd0000        	call	_printf
 211                     ; 88 	printf("     _                / /\r\n" );
 213  0051 ae014d        	ldw	x,#L37
 214  0054 cd0000        	call	_printf
 216                     ; 89 	printf("    | |	   ___  __ _ _| |_ __ _ _  __  __ _   _   _\r\n" );
 218  0057 ae0117        	ldw	x,#L57
 219  005a cd0000        	call	_printf
 221                     ; 90 	printf("    | |	  / _ \\/ _` |_   _/ _` | \\/ _)/ _` | / / / /\r\n" );
 223  005d ae00e0        	ldw	x,#L77
 224  0060 cd0000        	call	_printf
 226                     ; 91 	printf("    | |_ _  __( (_| | | |  (_| | | | ( (_| | \\ \\ \\ \\\r\n" );
 228  0063 ae00a9        	ldw	x,#L101
 229  0066 cd0000        	call	_printf
 231                     ; 92 	printf("    |_ _ _\\___|\\__,_| | | \\__, / | |  \\__,_| /_/ /_/\r\n" );
 233  0069 ae0072        	ldw	x,#L301
 234  006c cd0000        	call	_printf
 236                     ; 93 	printf("                      /_/ \\_ _/\r\n" );
 238  006f ae0050        	ldw	x,#L501
 239  0072 ad57          	call	LC001
 241                     ; 95 	printf( "STM8_DEV " ); printf( VERSION );
 243  0074 ae0046        	ldw	x,#L701
 244  0077 cd0000        	call	_printf
 248  007a ae003f        	ldw	x,#L111
 249  007d ad4c          	call	LC001
 251                     ; 99 	printf("\n\rUART2 Example: Retarget C library printf function to UART2\n\r");
 253  007f ae0000        	ldw	x,#L311
 254  0082 cd0000        	call	_printf
 256                     ; 101     enableInterrupts();
 259  0085 9a            	rim	
 261  0086               L511:
 262                     ; 105 		Turn = ~Turn;
 264  0086 0304          	cpl	(OFST+0,sp)
 265                     ; 106 		for( i = 0; i < 14; i++ )
 267  0088 0f02          	clr	(OFST-2,sp)
 268  008a 202d          	jra	L131
 269  008c               L531:
 270                     ; 112 					if( k < (i << 1) )
 272  008c 7b02          	ld	a,(OFST-2,sp)
 273  008e 5f            	clrw	x
 274  008f 97            	ld	xl,a
 275  0090 58            	sllw	x
 276  0091 7b03          	ld	a,(OFST-1,sp)
 277  0093 905f          	clrw	y
 278  0095 9097          	ld	yl,a
 279  0097 90bf01        	ldw	c_y+1,y
 280  009a b301          	cpw	x,c_y+1
 281  009c 2d05          	jrsle	L341
 282                     ; 114 						GPIO_Write( LED_PORT, (~Turn & 0x0D) );
 284  009e 7b04          	ld	a,(OFST+0,sp)
 285  00a0 43            	cpl	a
 288  00a1 2002          	jra	L731
 289  00a3               L341:
 290                     ; 118 						GPIO_Write( LED_PORT, (Turn & 0x0D) );
 292  00a3 7b04          	ld	a,(OFST+0,sp)
 294  00a5               L731:
 295  00a5 a40d          	and	a,#13
 296  00a7 88            	push	a
 297  00a8 ae500f        	ldw	x,#20495
 298  00ab cd0000        	call	_GPIO_Write
 299  00ae 84            	pop	a
 300                     ; 121 				while( ++k != 26 );
 302  00af 0c03          	inc	(OFST-1,sp)
 303  00b1 7b03          	ld	a,(OFST-1,sp)
 304  00b3 a11a          	cp	a,#26
 305  00b5 26d5          	jrne	L531
 306                     ; 122 				k = 0;
 308  00b7 0f03          	clr	(OFST-1,sp)
 309  00b9               L131:
 310                     ; 108 			while( --j )
 312  00b9 0a01          	dec	(OFST-3,sp)
 313  00bb 26cf          	jrne	L531
 314                     ; 106 		for( i = 0; i < 14; i++ )
 316  00bd 0c02          	inc	(OFST-2,sp)
 319  00bf 7b02          	ld	a,(OFST-2,sp)
 320  00c1 a10e          	cp	a,#14
 321  00c3 25f4          	jrult	L131
 322                     ; 125 		if( Turn == 0x09 )
 324  00c5 7b04          	ld	a,(OFST+0,sp)
 325  00c7 a109          	cp	a,#9
 327  00c9 20bb          	jra	L511
 329  00cb               LC001:
 330  00cb cd0000        	call	_printf
 332                     ; 96 	printf( "\r\n" );
 334  00ce ae0184        	ldw	x,#L76
 335  00d1 cc0000        	jp	_printf
 347                     	xdef	_main
 348                     	xdef	_Delay
 349                     	xref	_UART2_ITConfig
 350                     	xref	_UART2_Init
 351                     	xref	_UART2_DeInit
 352                     	xref	_GPIO_WriteHigh
 353                     	xref	_GPIO_Write
 354                     	xref	_GPIO_Init
 355                     	xref	_CLK_HSIPrescalerConfig
 356                     	xref	_putchar
 357                     	xref	_printf
 358                     .const:	section	.text
 359  0000               L311:
 360  0000 0a0d55415254  	dc.b	10,13,85,65,82,84
 361  0006 32204578616d  	dc.b	"2 Example: Retarge"
 362  0018 742043206c69  	dc.b	"t C library printf"
 363  002a 2066756e6374  	dc.b	" function to UART2"
 364  003c 0a0d00        	dc.b	10,13,0
 365  003f               L111:
 366  003f 76302e302e31  	dc.b	"v0.0.1",0
 367  0046               L701:
 368  0046 53544d385f44  	dc.b	"STM8_DEV ",0
 369  0050               L501:
 370  0050 202020202020  	dc.b	"                  "
 371  0062 202020202f5f  	dc.b	"    /_/ \_ _/",13
 372  0070 0a00          	dc.b	10,0
 373  0072               L301:
 374  0072 202020207c5f  	dc.b	"    |_ _ _\___|\__"
 375  0084 2c5f7c207c20  	dc.b	",_| | | \__, / | |"
 376  0096 20205c5f5f2c  	dc.b	"  \__,_| /_/ /_/",13
 377  00a7 0a00          	dc.b	10,0
 378  00a9               L101:
 379  00a9 202020207c20  	dc.b	"    | |_ _  __( (_"
 380  00bb 7c207c207c20  	dc.b	"| | | |  (_| | | |"
 381  00cd 202820285f7c  	dc.b	" ( (_| | \ \ \ \",13
 382  00de 0a00          	dc.b	10,0
 383  00e0               L77:
 384  00e0 202020207c20  	dc.b	"    | |",9
 385  00e8 20202f205f20  	dc.b	"  / _ \/ _` |_   _"
 386  00fa 2f205f60207c  	dc.b	"/ _` | \/ _)/ _` |"
 387  010c 202f202f202f  	dc.b	" / / / /",13
 388  0115 0a00          	dc.b	10,0
 389  0117               L57:
 390  0117 202020207c20  	dc.b	"    | |",9
 391  011f 2020205f5f5f  	dc.b	"   ___  __ _ _| |_"
 392  0131 205f5f205f20  	dc.b	" __ _ _  __  __ _ "
 393  0143 20205f202020  	dc.b	"  _   _",13
 394  014b 0a00          	dc.b	10,0
 395  014d               L37:
 396  014d 20202020205f  	dc.b	"     _            "
 397  015f 202020202f20  	dc.b	"    / /",13
 398  0167 0a00          	dc.b	10,0
 399  0169               L17:
 400  0169 202020202020  	dc.b	"                  "
 401  017b 20202020205f  	dc.b	"     _",13
 402  0182 0a00          	dc.b	10,0
 403  0184               L76:
 404  0184 0d0a00        	dc.b	13,10,0
 405                     	xref.b	c_y
 425                     	end
