################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Funktionen/Src/konsole.c 

OBJS += \
./Funktionen/Src/konsole.o 

C_DEPS += \
./Funktionen/Src/konsole.d 


# Each subdirectory must supply rules for building sources it contributes
Funktionen/Src/%.o Funktionen/Src/%.su Funktionen/Src/%.cyclo: ../Funktionen/Src/%.c Funktionen/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -DARM_MATH_CM33 -c -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Callbacks" -I../../Core/Inc -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/Include" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Drivers/CMSIS_DSP/PrivateInclude" -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/ST/ARM/DSP/Inc -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/SD-Karte/Inc" -I"C:/Users/raphael.baumeler/workspace_STM/207_Monitoringsystem_SD-Karte/STM32CubeIDE/Funktionen/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Funktionen-2f-Src

clean-Funktionen-2f-Src:
	-$(RM) ./Funktionen/Src/konsole.cyclo ./Funktionen/Src/konsole.d ./Funktionen/Src/konsole.o ./Funktionen/Src/konsole.su

.PHONY: clean-Funktionen-2f-Src

