################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Source/arm_cfft_f32.c \
../FFT/Source/arm_cfft_init_f32.c \
../FFT/Source/arm_common_tables.c \
../FFT/Source/arm_rfft_fast_f32.c 

OBJS += \
./FFT/Source/arm_cfft_f32.o \
./FFT/Source/arm_cfft_init_f32.o \
./FFT/Source/arm_common_tables.o \
./FFT/Source/arm_rfft_fast_f32.o 

C_DEPS += \
./FFT/Source/arm_cfft_f32.d \
./FFT/Source/arm_cfft_init_f32.d \
./FFT/Source/arm_common_tables.d \
./FFT/Source/arm_rfft_fast_f32.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Source/%.o FFT/Source/%.su FFT/Source/%.cyclo: ../FFT/Source/%.c FFT/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Source

clean-FFT-2f-Source:
	-$(RM) ./FFT/Source/arm_cfft_f32.cyclo ./FFT/Source/arm_cfft_f32.d ./FFT/Source/arm_cfft_f32.o ./FFT/Source/arm_cfft_f32.su ./FFT/Source/arm_cfft_init_f32.cyclo ./FFT/Source/arm_cfft_init_f32.d ./FFT/Source/arm_cfft_init_f32.o ./FFT/Source/arm_cfft_init_f32.su ./FFT/Source/arm_common_tables.cyclo ./FFT/Source/arm_common_tables.d ./FFT/Source/arm_common_tables.o ./FFT/Source/arm_common_tables.su ./FFT/Source/arm_rfft_fast_f32.cyclo ./FFT/Source/arm_rfft_fast_f32.d ./FFT/Source/arm_rfft_fast_f32.o ./FFT/Source/arm_rfft_fast_f32.su

.PHONY: clean-FFT-2f-Source

