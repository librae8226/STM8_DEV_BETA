/**
  ******************************************************************************
  * @file app/main.c
  * @brief This file contains the firmware main function.
  * @author Librae
  * @version v0.0.1
  * @date 12/31/2010
  
  * @file project\main.c
  * @brief This file contains the firmware main function.
  * @author STMicroelectronics - MCD Application Team
  * @version V1.1.1
  * @date 06/05/2009
  ******************************************************************************
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h2>
  * @image html logo.bmp
  ******************************************************************************
  */


/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include "stm8s.h"
#include "c_lib_retarget.h"

/* Private defines -----------------------------------------------------------*/
#define VERSION		"v0.0.1"

#define LED_PORT	(GPIOD)
#define LED_PIN		(GPIO_PIN_0)

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void Delay (u16 nCount);

/* Private functions ---------------------------------------------------------*/

void Delay(u16 nCount)
{
	/* Decrement nCount value */
	while (nCount != 0)
	{
		nCount--;
	}
}

void main(void)
{
	unsigned char i, j, k, Turn = 0x09;
	GPIO_Init( LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST );
	GPIO_WriteHigh( LED_PORT, LED_PIN );
	
	// High speed internal clock prescaler: 4
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
	
	UART2_DeInit();
	/* UART2 configuration */
	/* UART2 configured as follow:
		  - BaudRate = 9600 baud  
		  - Word Length = 8 Bits
		  - One Stop Bit
		  - No parity
		  - Receive and transmit enabled
		  - UART1 Clock disabled
	*/
	/* Configure UART2 */
	UART2_Init( (u32)9600, 
				UART2_WORDLENGTH_8D, 
				UART2_STOPBITS_1, 
				UART2_PARITY_NO, 
				UART2_SYNCMODE_CLOCK_DISABLE, 
				UART2_MODE_TXRX_ENABLE 
				);
	
    UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
	
	putchar(0x0C);	//clear screen
	printf( "\r\n" );
	printf("                       _\r\n" );
	printf("     _                / /\r\n" );
	printf("    | |	   ___  __ _ _| |_ __ _ _  __  __ _   _   _\r\n" );
	printf("    | |	  / _ \\/ _` |_   _/ _` | \\/ _)/ _` | / / / /\r\n" );
	printf("    | |_ _  __( (_| | | |  (_| | | | ( (_| | \\ \\ \\ \\\r\n" );
	printf("    |_ _ _\\___|\\__,_| | | \\__, / | |  \\__,_| /_/ /_/\r\n" );
	printf("                      /_/ \\_ _/\r\n" );
	printf( "\r\n" );
	printf( "STM8_DEV " ); printf( VERSION );
	printf( "\r\n" );
	
	/* Output a message on Hyperterminal using printf function */
	printf("\n\rUART2 Example: Retarget C library printf function to UART2\n\r");
	
    enableInterrupts();
	// Infinite loop
	while(1)
	{
		Turn = ~Turn;
		for( i = 0; i < 14; i++ )
		{
			while( --j )
			{
				do
				{
					if( k < (i << 1) )
					{
						GPIO_Write( LED_PORT, (~Turn & 0x0D) );
					}
					else
					{
						GPIO_Write( LED_PORT, (Turn & 0x0D) );
					}
				}
				while( ++k != 26 );
				k = 0;
			}
		}
		if( Turn == 0x09 )
		{
		//	printf("Breath out...\r\n");
		}
		else
		{
		//	printf("Breath in...");
		}
	}
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{
	/* User can add his own implementation to report the file name and line number,
	 ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
	
	/* Infinite loop */
	while(1)
	{}
}
#endif

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
