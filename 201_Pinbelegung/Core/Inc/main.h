/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32u5xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SPI1_CS4_Pin GPIO_PIN_5
#define SPI1_CS4_GPIO_Port GPIOF
#define SPI1_CS3_Pin GPIO_PIN_13
#define SPI1_CS3_GPIO_Port GPIOB
#define SW2_Pin GPIO_PIN_12
#define SW2_GPIO_Port GPIOD
#define SW1_Pin GPIO_PIN_13
#define SW1_GPIO_Port GPIOD
#define LD3_red_Pin GPIO_PIN_2
#define LD3_red_GPIO_Port GPIOG
#define LD_B1_Pin GPIO_PIN_5
#define LD_B1_GPIO_Port GPIOG
#define LD_G2_Pin GPIO_PIN_6
#define LD_G2_GPIO_Port GPIOG
#define LD_G1_Pin GPIO_PIN_7
#define LD_G1_GPIO_Port GPIOG
#define LD_R1_Pin GPIO_PIN_8
#define LD_R1_GPIO_Port GPIOG
#define LD1_green_Pin GPIO_PIN_7
#define LD1_green_GPIO_Port GPIOC
#define USART1_REn_Pin GPIO_PIN_11
#define USART1_REn_GPIO_Port GPIOA
#define SPI1_CS5_Pin GPIO_PIN_11
#define SPI1_CS5_GPIO_Port GPIOC
#define SD_CD_Pin GPIO_PIN_6
#define SD_CD_GPIO_Port GPIOD
#define LD2_blue_Pin GPIO_PIN_7
#define LD2_blue_GPIO_Port GPIOB
#define SPI1_CS1_Pin GPIO_PIN_8
#define SPI1_CS1_GPIO_Port GPIOB
#define SPI1_CS2_Pin GPIO_PIN_9
#define SPI1_CS2_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
