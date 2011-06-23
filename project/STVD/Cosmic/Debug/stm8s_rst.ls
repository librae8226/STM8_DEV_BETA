   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
 107                     ; 45 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 107                     ; 46 {
 109                     .text:	section	.text,new
 110  0000               _RST_GetFlagStatus:
 114                     ; 48     assert_param(IS_RST_FLAG_OK(RST_Flag));
 116                     ; 52     return ((FlagStatus)((u8)RST->SR & (u8)RST_Flag));
 118  0000 c450b3        	and	a,20659
 121  0003 81            	ret	
 156                     ; 61 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 156                     ; 62 {
 157                     .text:	section	.text,new
 158  0000               _RST_ClearFlag:
 162                     ; 64     assert_param(IS_RST_FLAG_OK(RST_Flag));
 164                     ; 66     RST->SR = (u8)RST_Flag;
 166  0000 c750b3        	ld	20659,a
 167                     ; 67 }
 170  0003 81            	ret	
 183                     	xdef	_RST_ClearFlag
 184                     	xdef	_RST_GetFlagStatus
 203                     	end
