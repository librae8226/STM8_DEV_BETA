/**
  ******************************************************************************
  * @file app/c_lib_retarget.c
  * @brief This file retarget original C library.
  * @author Librae
  * @date 01/05/2011
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include "stm8s.h"
#include "c_lib_retarget.h"

/* Private defines -----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief Retargets the C library printf function to the USART.
  * @param[in] c Character to send
  * @retval char Character sent
  * @par Required preconditions:
  * - None
  */
PUTCHAR_PROTOTYPE
{
	/* Write a character to the UART1 */
	UART2_SendData8(c);
	/* Loop until the end of transmission */
	while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET)
	{}
	
	return c;
}


/*********************** (C) COPYRIGHT 2011 Leafgrass **************************/
