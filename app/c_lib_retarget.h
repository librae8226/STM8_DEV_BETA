/**
  ******************************************************************************
  * @file app/c_lib_retarget.h
  * @brief This file retarget original C library.
  * @author Librae
  * @date 01/05/2011
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __C_LIB_RETARGET_H__
#define __C_LIB_RETARGET_H__

/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
#ifdef _RAISONANCE_ 
 #define PUTCHAR_PROTOTYPE int putchar (char c)
#else /* _COSMIC_ */
 #define PUTCHAR_PROTOTYPE char putchar (char c)
#endif /* _RAISONANCE_ */

#endif	/* __C_LIB_RETARGET_H__ */

/*********************** (C) COPYRIGHT 2011 Leafgrass **************************/
