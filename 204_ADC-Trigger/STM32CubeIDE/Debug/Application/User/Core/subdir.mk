################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/adc.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/comp.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/dac.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/fdcan.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/flash.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gpdma.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gpio.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gtzc.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/icache.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/main.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/spi.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/stm32u5xx_hal_msp.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/stm32u5xx_it.c \
../Application/User/Core/syscalls.c \
../Application/User/Core/sysmem.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/tim.c \
C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/usart.c 

OBJS += \
./Application/User/Core/adc.o \
./Application/User/Core/comp.o \
./Application/User/Core/dac.o \
./Application/User/Core/fdcan.o \
./Application/User/Core/flash.o \
./Application/User/Core/gpdma.o \
./Application/User/Core/gpio.o \
./Application/User/Core/gtzc.o \
./Application/User/Core/icache.o \
./Application/User/Core/main.o \
./Application/User/Core/spi.o \
./Application/User/Core/stm32u5xx_hal_msp.o \
./Application/User/Core/stm32u5xx_it.o \
./Application/User/Core/syscalls.o \
./Application/User/Core/sysmem.o \
./Application/User/Core/tim.o \
./Application/User/Core/usart.o 

C_DEPS += \
./Application/User/Core/adc.d \
./Application/User/Core/comp.d \
./Application/User/Core/dac.d \
./Application/User/Core/fdcan.d \
./Application/User/Core/flash.d \
./Application/User/Core/gpdma.d \
./Application/User/Core/gpio.d \
./Application/User/Core/gtzc.d \
./Application/User/Core/icache.d \
./Application/User/Core/main.d \
./Application/User/Core/spi.d \
./Application/User/Core/stm32u5xx_hal_msp.d \
./Application/User/Core/stm32u5xx_it.d \
./Application/User/Core/syscalls.d \
./Application/User/Core/sysmem.d \
./Application/User/Core/tim.d \
./Application/User/Core/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/adc.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/adc.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/comp.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/comp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/dac.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/dac.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/fdcan.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/fdcan.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/flash.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/flash.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/gpdma.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gpdma.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/gpio.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gpio.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/gtzc.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/gtzc.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/icache.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/icache.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/main.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/main.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/spi.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/spi.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32u5xx_hal_msp.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/stm32u5xx_hal_msp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32u5xx_it.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/stm32u5xx_it.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/%.o Application/User/Core/%.su Application/User/Core/%.cyclo: ../Application/User/Core/%.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/tim.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/tim.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/usart.o: C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/Core/Src/usart.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/204_ADC-Trigger/STM32CubeIDE/FFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core

clean-Application-2f-User-2f-Core:
	-$(RM) ./Application/User/Core/adc.cyclo ./Application/User/Core/adc.d ./Application/User/Core/adc.o ./Application/User/Core/adc.su ./Application/User/Core/comp.cyclo ./Application/User/Core/comp.d ./Application/User/Core/comp.o ./Application/User/Core/comp.su ./Application/User/Core/dac.cyclo ./Application/User/Core/dac.d ./Application/User/Core/dac.o ./Application/User/Core/dac.su ./Application/User/Core/fdcan.cyclo ./Application/User/Core/fdcan.d ./Application/User/Core/fdcan.o ./Application/User/Core/fdcan.su ./Application/User/Core/flash.cyclo ./Application/User/Core/flash.d ./Application/User/Core/flash.o ./Application/User/Core/flash.su ./Application/User/Core/gpdma.cyclo ./Application/User/Core/gpdma.d ./Application/User/Core/gpdma.o ./Application/User/Core/gpdma.su ./Application/User/Core/gpio.cyclo ./Application/User/Core/gpio.d ./Application/User/Core/gpio.o ./Application/User/Core/gpio.su ./Application/User/Core/gtzc.cyclo ./Application/User/Core/gtzc.d ./Application/User/Core/gtzc.o ./Application/User/Core/gtzc.su ./Application/User/Core/icache.cyclo ./Application/User/Core/icache.d ./Application/User/Core/icache.o ./Application/User/Core/icache.su ./Application/User/Core/main.cyclo ./Application/User/Core/main.d ./Application/User/Core/main.o ./Application/User/Core/main.su ./Application/User/Core/spi.cyclo ./Application/User/Core/spi.d ./Application/User/Core/spi.o ./Application/User/Core/spi.su ./Application/User/Core/stm32u5xx_hal_msp.cyclo ./Application/User/Core/stm32u5xx_hal_msp.d ./Application/User/Core/stm32u5xx_hal_msp.o ./Application/User/Core/stm32u5xx_hal_msp.su ./Application/User/Core/stm32u5xx_it.cyclo ./Application/User/Core/stm32u5xx_it.d ./Application/User/Core/stm32u5xx_it.o ./Application/User/Core/stm32u5xx_it.su ./Application/User/Core/syscalls.cyclo ./Application/User/Core/syscalls.d ./Application/User/Core/syscalls.o ./Application/User/Core/syscalls.su ./Application/User/Core/sysmem.cyclo ./Application/User/Core/sysmem.d ./Application/User/Core/sysmem.o ./Application/User/Core/sysmem.su ./Application/User/Core/tim.cyclo ./Application/User/Core/tim.d ./Application/User/Core/tim.o ./Application/User/Core/tim.su ./Application/User/Core/usart.cyclo ./Application/User/Core/usart.d ./Application/User/Core/usart.o ./Application/User/Core/usart.su

.PHONY: clean-Application-2f-User-2f-Core

