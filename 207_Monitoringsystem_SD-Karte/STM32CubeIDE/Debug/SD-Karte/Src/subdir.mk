################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SD-Karte/Src/diskio.c \
../SD-Karte/Src/ff.c \
../SD-Karte/Src/ff_gen_drv.c \
../SD-Karte/Src/user_diskio.c \
../SD-Karte/Src/user_diskio_spi.c 

OBJS += \
./SD-Karte/Src/diskio.o \
./SD-Karte/Src/ff.o \
./SD-Karte/Src/ff_gen_drv.o \
./SD-Karte/Src/user_diskio.o \
./SD-Karte/Src/user_diskio_spi.o 

C_DEPS += \
./SD-Karte/Src/diskio.d \
./SD-Karte/Src/ff.d \
./SD-Karte/Src/ff_gen_drv.d \
./SD-Karte/Src/user_diskio.d \
./SD-Karte/Src/user_diskio_spi.d 


# Each subdirectory must supply rules for building sources it contributes
SD-Karte/Src/%.o SD-Karte/Src/%.su SD-Karte/Src/%.cyclo: ../SD-Karte/Src/%.c SD-Karte/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Callbacks" -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/SD-Karte/Inc" -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Funktionen/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SD-2d-Karte-2f-Src

clean-SD-2d-Karte-2f-Src:
	-$(RM) ./SD-Karte/Src/diskio.cyclo ./SD-Karte/Src/diskio.d ./SD-Karte/Src/diskio.o ./SD-Karte/Src/diskio.su ./SD-Karte/Src/ff.cyclo ./SD-Karte/Src/ff.d ./SD-Karte/Src/ff.o ./SD-Karte/Src/ff.su ./SD-Karte/Src/ff_gen_drv.cyclo ./SD-Karte/Src/ff_gen_drv.d ./SD-Karte/Src/ff_gen_drv.o ./SD-Karte/Src/ff_gen_drv.su ./SD-Karte/Src/user_diskio.cyclo ./SD-Karte/Src/user_diskio.d ./SD-Karte/Src/user_diskio.o ./SD-Karte/Src/user_diskio.su ./SD-Karte/Src/user_diskio_spi.cyclo ./SD-Karte/Src/user_diskio_spi.d ./SD-Karte/Src/user_diskio_spi.o ./SD-Karte/Src/user_diskio_spi.su

.PHONY: clean-SD-2d-Karte-2f-Src

