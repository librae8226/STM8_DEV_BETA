/****************************************Copyright (c)**************************************************
**                               Guangzhou ZHIYUAN electronics Co.,LTD.
**                                     
**                                 http://www.embedtools.com
**
**--------------File Info-------------------------------------------------------------------------------
** File Name:               os_cpu.h
** Last modified Date:      2007.12.12
** Last Version:            1.0
** Description:             Header file of the ported code  ��ֲ����ͷ�ļ�
** 
**------------------------------------------------------------------------------------------------------
** Created By:              Steven Zhou ���ܸ�
** Created date:            2007.12.12
** Version:                 1.0
** Descriptions:            The original version ��ʼ�汾
**
**--------------------------------------------------------------------------------------------------------
** Modified by:             
** Modified date:           
** Version:                 
** Description:             
**
*********************************************************************************************************/

#ifndef  __OS_CPU_H
#define  __OS_CPU_H

#ifdef   OS_CPU_GLOBALS
#define  OS_CPU_EXT
#else
#define  OS_CPU_EXT  extern
#endif

/*********************************************************************************************************
  Date types(Compiler specific)  �������ͣ��ͱ�������أ�                
*********************************************************************************************************/
typedef unsigned char   BOOLEAN;                                        /*  Boolean ��������            */
typedef unsigned char   INT8U;                                          /*  Unsigned  8 bit quantity    */                       
typedef signed   char   INT8S;                                          /*  Signed    8 bit quantity    */                         
typedef unsigned short  INT16U;                                         /*  Unsigned 16 bit quantity    */
typedef signed   short  INT16S;                                         /*  Signed   16 bit quantity    */
typedef unsigned long    INT32U;                                         /*  Unsigned 32 bit quantity    */
typedef signed   long    INT32S;                                         /*  Signed   32 bit quantity    */
typedef float           FP32;                                           /*  Single precision floating 
                                                                            point                       */
typedef double          FP64;                                           /*  Double precision floating 
                                                                            point                       */

typedef unsigned char    OS_STK;                                         /*  Each stack entry is 32-bit 
                                                                            wide  ��ջ��32λ���        */   
typedef unsigned char    OS_CPU_SR;                                      /*  Define size of CPU status 
                                                                            register (PSR = 32 bits)    */
typedef signed char	        int8;
typedef unsigned char		uint8;
typedef signed short		int16;
typedef unsigned short		uint16;
typedef	signed long		int32;
typedef unsigned long		uint32;


/*********************************************************************************************************
  Method of critical section management  �ٽ���������                
*********************************************************************************************************/
#define  OS_CRITICAL_METHOD  3


/*********************************************************************************************************
  Other definitions  ��������         
*********************************************************************************************************/
#define  OS_STK_GROWTH        1            
#define  OS_TASK_SW()         OSCtxSw()


/*********************************************************************************************************
  Prototypes(see OS_CPU_A.ASM)  ԭ����������OS_CPU_A.ASM��                
*********************************************************************************************************/
#if OS_CRITICAL_METHOD == 4
    void OS_ENTER_CRITICAL(void);
    void OS_EXIT_CRITICAL(void);     
#endif


 #if OS_CRITICAL_METHOD == 3
#define OS_ENTER_CRITICAL() cpu_sr=__get_interrupt_state()
#define OS_EXIT_CRITICAL()  __set_interrupt_state(cpu_sr)
#endif   
    
void OSCtxSw(void);
void OSIntCtxSw(void);
void OSStartHighRdy(void);

void OSPendSV(void);

OS_CPU_EXT INT32U OsEnterSum;                   

#endif

/*********************************************************************************************************
  END FILE 
*********************************************************************************************************/
