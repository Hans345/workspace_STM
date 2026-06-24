################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SD-Karte/FatFs/Src/ff.c \
../SD-Karte/FatFs/Src/ff_gen_drv.c \
../SD-Karte/FatFs/Src/user_diskio_spi.c 

OBJS += \
./SD-Karte/FatFs/Src/ff.o \
./SD-Karte/FatFs/Src/ff_gen_drv.o \
./SD-Karte/FatFs/Src/user_diskio_spi.o 

C_DEPS += \
./SD-Karte/FatFs/Src/ff.d \
./SD-Karte/FatFs/Src/ff_gen_drv.d \
./SD-Karte/FatFs/Src/user_diskio_spi.d 


# Each subdirectory must supply rules for building sources it contributes
SD-Karte/FatFs/Src/%.o SD-Karte/FatFs/Src/%.su SD-Karte/FatFs/Src/%.cyclo: ../SD-Karte/FatFs/Src/%.c SD-Karte/FatFs/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Funktionen" -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/SD-Karte/FatFs/Inc" -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Callbacks" -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SD-2d-Karte-2f-FatFs-2f-Src

clean-SD-2d-Karte-2f-FatFs-2f-Src:
	-$(RM) ./SD-Karte/FatFs/Src/ff.cyclo ./SD-Karte/FatFs/Src/ff.d ./SD-Karte/FatFs/Src/ff.o ./SD-Karte/FatFs/Src/ff.su ./SD-Karte/FatFs/Src/ff_gen_drv.cyclo ./SD-Karte/FatFs/Src/ff_gen_drv.d ./SD-Karte/FatFs/Src/ff_gen_drv.o ./SD-Karte/FatFs/Src/ff_gen_drv.su ./SD-Karte/FatFs/Src/user_diskio_spi.cyclo ./SD-Karte/FatFs/Src/user_diskio_spi.d ./SD-Karte/FatFs/Src/user_diskio_spi.o ./SD-Karte/FatFs/Src/user_diskio_spi.su

.PHONY: clean-SD-2d-Karte-2f-FatFs-2f-Src

