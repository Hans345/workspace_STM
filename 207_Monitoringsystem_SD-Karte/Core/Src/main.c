/* USER CODE BEGIN Header */
/**
 * @file main.c
 * @brief <b>Monitoringsystem für Medicoat</b>
 * @author Raphael Baumeler
 * @date 09.04.2026
 *
 * In diesem Skript kann die FFT mit dem NUCLEO Board berechnet werden und mit den
 * Oszilloskop Werten verglichen werden.
 *
 * Beschreibung Monitoringsystem
 * - Das Monitoringsystem wird über den blauen Button gestartet (SWV Output beachten)
 * - Das ADC Sampling erfolgt mit 100 kHz am PC0 bzw. J1 auf dem PCB
 * - Die Samplingfrequenz kann am PF3 gemessen werden
 * - Nach dem Sampling wird die FFT berechnet
 * - Anschliessend erfolgt die Datenübertragung via VCP (PA9 und PA10)
 *
 * Vergleich FFT Oszilloskop mit FFT STM32
 * - Spannungssignal am Anschluss J1 (0...2V) anschliessen und parallel mit Oszilloskop messen.
 * - ADC-Trigger am PF3 mit Oszilloskop messen.
 * - Trigger auf ADC-Trigger Signal setzen und Single Shot auswählen.
 * - Oszilloskop via Ethernet und uC via USB mit Laptop verbinden (IP-Konfiguration beachten).
 * - Matlab main.m aus dem Projektverzeichnis starten.
 * - Blauer Button am NUCLEO Board betätigen.
 * - FFT wird berechnet und das Zeitsignal wie die Amplitudenwerte der berechneten FFT werden zu
 *   Matlab übertragen und in einem Plot Fenster dargestellt.
 * - Nachdem main.m durchgelaufen ist das zweite Skript readwaveform_teledyne.m starten für
 *   den direkten Vergleich zwischen Teledyne und STM32 FFT
 *
 * @note Aufgrund der hohen Abtastfrequenz muss vor PC0 ein Buffer geschaltet werden, welcher den ADC Pin treibt!
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "comp.h"
#include "dac.h"
#include "fdcan.h"
#include "flash.h"
#include "gpdma.h"
#include "gtzc.h"
#include "icache.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "statemachine.h"
#include "user_diskio_spi.h"
#include "ff.h"
#include "ff_gen_drv.h"
#include "user_diskio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/**
 * @brief Quadrant Nummer DMA Übertragung
 */
int qNr = 1;
/**
 * @brief Anfangs State
 */
State_t curr_state = IDLE;
/**
 * @brief Anfangs Event
 */
Event_t curr_event = EVENT_NONE;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void SystemPower_Config(void);
static void MPU_Config(void);
/* USER CODE BEGIN PFP */
/**
 * @brief ADC Callback. Wenn der DMA die Daten übertragen hat wird diese Funktion aufgerufen.
 *
 * @param hadc Zeiger auf ADC Handle
 * @note Pro DMA Übertragung können maximal 2^14 = 16384 Werte übertragen werden. Wenn DMA gestartet
 * wird z.B. via HAL_ADC_Start_DMA(&hadc1, (uint32_t*) adc_val, N); muss beachtet werden, dass N <= 16384!
 * Wenn dem nicht so ist, müssen die DMA übertragungen auf mehrere Übertragungen aufgeteilt werden!
 * Beispiel:
 *	1. HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[0], (N/2));<br>
 *	Sobald 1. Übertragung abgeschlossen ist 2. Übertragung starten.<br>
 *	2. HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[N/2], (N/2));
 */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc);

/**
 * @brief Timer Callback. Der Timer 3 triggert den ADC und toggelt PF3.
 *
 * @param htim Zeiger auf Timer Handle
 * @note Dieser Callback Triggert den ADC für eine konstante Abtastfrequenz. Diese Frequenz kann über die PSC und ARR
 * Werte verändert werden. Er soll nur verwendet werden, wenn die Abtastfrequenz am Oszilloskop
 * überprüft werden soll, da damit die CPU bei hoher Triggerfrequenz stark ausgelastet wird.
 */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

/**
 * @brief GPIO Callback. Wenn der User B1 (blau) auf dem NUCLEO Board gedrückt wird, wird dieser Callback
 * aufgerufen.
 *
 * @param GPIO_Pin
 * @note In diesem Callback wird nacheinander das ADC Sampling gestartet und die FFT ausgeführt. Was genau passiert
 * kann mit der SWV Konsole überprüft werden.
 */
void HAL_GPIO_EXTI_Rising_Callback(uint16_t GPIO_Pin);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
  /* USER CODE END Init */

  /* Configure the System Power */
  SystemPower_Config();

  /* Configure the system clock */
  SystemClock_Config();
  /* GTZC initialisation */
  MX_GTZC_Init();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_GPDMA1_Init();
  MX_ICACHE_Init();
  MX_FLASH_Init();
  MX_ADC1_Init();
  MX_ADC4_Init();
  MX_COMP1_Init();
  MX_COMP2_Init();
  MX_DAC1_Init();
  MX_FDCAN1_Init();
  MX_TIM1_Init();
  MX_TIM8_Init();
  MX_USART3_UART_Init();
  MX_USART1_UART_Init();
  MX_TIM3_Init();
  MX_SPI3_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  // Monitoringsystem bereit zum ausführen
  // StateMachine(&curr_state, &curr_event);

  // Modifiziere SPI
  hspi3.Init.CLKPhase = SPI_PHASE_1EDGE; // Für SD-Karte SPI_PHASE_1EDGE
  if (HAL_SPI_Init(&hspi3) != HAL_OK)
  {
    Error_Handler();
  }

  // Inizialisiere SD-Karte
  if (USER_SPI_initialize(0) == 0)
  {
      _print_SWV("SD Init OK\r\n");
  }
  else
  {
	  _print_SWV("SD Init Fehler\r\n");
  }

  // Testdatei erzeugen
  char SDPath[4];

  FATFS sd_fs;
  FIL sd_fil;	// Dateihandle
  UINT sd_bw;	// Anzahl geschriebener Bytes

  FATFS_LinkDriver(&USER_Driver, SDPath);
  f_mount(&sd_fs, SDPath, 1);

  f_open(&sd_fil, "0:/test.csv", FA_CREATE_ALWAYS | FA_WRITE);
  f_write(&sd_fil, "7,8\r\n", 5, &sd_bw);
  f_close(&sd_fil);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1) {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
		// StateMachine(&curr_state, &curr_event);
	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.LSIDiv = RCC_LSI_DIV1;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMBOOST = RCC_PLLMBOOST_DIV1;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 20;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLLVCIRANGE_1;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_PCLK3;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief Power Configuration
  * @retval None
  */
static void SystemPower_Config(void)
{
  HAL_PWREx_EnableVddIO2();

  /*
   * Disable the internal Pull-Up in Dead Battery pins of UCPD peripheral
   */
  HAL_PWREx_DisableUCPDDeadBattery();

  /*
   * Switch to SMPS regulator instead of LDO
   */
  if (HAL_PWREx_ConfigSupply(PWR_SMPS_SUPPLY) != HAL_OK)
  {
    Error_Handler();
  }
/* USER CODE BEGIN PWR */
/* USER CODE END PWR */
}

/* USER CODE BEGIN 4 */

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc) {
	switch (qNr) {
	case 1:
		// Erster Viertel übertragen -> zweiter Viertel starten
		HAL_ADC_Stop_DMA(&hadc1);
		HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[(1 * N) / 4],
				(int) (N / 4));
		qNr = 2;
		break;
	case 2:
		// Zweiter Viertel übertragen -> dritter Viertel starten
		HAL_ADC_Stop_DMA(&hadc1);
		HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[(2 * N) / 4],
				(int) (N / 4));
		qNr = 3;
		break;
	case 3:
		// Dritter Viertel übertragen -> Letzer Viertel starten
		HAL_ADC_Stop_DMA(&hadc1);
		HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[(3 * N) / 4],
				(int) (N / 4));
		qNr = 4;
		break;
	case 4:
		// Buffer komplett gefüllt
		HAL_ADC_Stop_DMA(&hadc1);
		HAL_TIM_Base_Stop_IT(&htim3);
		// Set Pin Low
		// HAL_GPIO_WritePin(GPIOF, GPIO_PIN_3, 0);
		// Reset
		qNr = 1;
		// State Machine
		curr_event = EVENT_SAMPLING_DONE;
		break;
	}
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	// PF3 Toggeln
	HAL_GPIO_TogglePin(GPIOF, GPIO_PIN_3);
}

void HAL_GPIO_EXTI_Rising_Callback(uint16_t GPIO_Pin) {
	// Button Interrupt deaktivieren
	HAL_NVIC_DisableIRQ(EXTI13_IRQn);

	// ADC Trigger und DMA starten
	__HAL_TIM_SET_COUNTER(&htim3,0);
	HAL_TIM_Base_Start_IT(&htim3);
	HAL_ADC_Start_DMA(&hadc1, (uint32_t*) &adc_val[0], (int) (N / 4));

	// Set Pin High
	// HAL_GPIO_WritePin(GPIOF, GPIO_PIN_3, 1);
	HAL_GPIO_WritePin(LD1_green_GPIO_Port, LD1_green_Pin, 1);

	// State Machine
	curr_event = EVENT_BLUE_BUTTON;
}

/* USER CODE END 4 */

 /* MPU Configuration */

void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct = {0};
  MPU_Attributes_InitTypeDef MPU_AttributesInit = {0};

  /* Disables the MPU */
  HAL_MPU_Disable();

  /** Initializes and configures the Region 0 and the memory to be protected
  */
  MPU_InitStruct.Enable = MPU_REGION_ENABLE;
  MPU_InitStruct.Number = MPU_REGION_NUMBER0;
  MPU_InitStruct.BaseAddress = 0x08000000;
  MPU_InitStruct.LimitAddress = 0x083FFFFF;
  MPU_InitStruct.AttributesIndex = MPU_ATTRIBUTES_NUMBER0;
  MPU_InitStruct.AccessPermission = MPU_REGION_PRIV_RO;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_ENABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_NOT_SHAREABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /** Initializes and configures the Region 1 and the memory to be protected
  */
  MPU_InitStruct.Number = MPU_REGION_NUMBER1;
  MPU_InitStruct.BaseAddress = 0x20000000;
  MPU_InitStruct.LimitAddress = 0x2026FFFF;
  MPU_InitStruct.AttributesIndex = MPU_ATTRIBUTES_NUMBER1;
  MPU_InitStruct.AccessPermission = MPU_REGION_ALL_RW;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /** Initializes and configures the Attribute 0 and the memory to be protected
  */
  MPU_AttributesInit.Number = MPU_ATTRIBUTES_NUMBER0;
  MPU_AttributesInit.Attributes = INNER_OUTER(MPU_WRITE_THROUGH|MPU_TRANSIENT
                              |MPU_R_ALLOCATE);

  HAL_MPU_ConfigMemoryAttributes(&MPU_AttributesInit);

  /** Initializes and configures the Attribute 1 and the memory to be protected
  */
  MPU_AttributesInit.Number = MPU_ATTRIBUTES_NUMBER1;
  MPU_AttributesInit.Attributes = INNER_OUTER(MPU_NOT_CACHEABLE);

  HAL_MPU_ConfigMemoryAttributes(&MPU_AttributesInit);
  /* Enables the MPU */
  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);

}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
