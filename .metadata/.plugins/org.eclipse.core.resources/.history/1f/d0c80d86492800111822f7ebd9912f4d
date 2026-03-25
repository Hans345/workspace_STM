################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Src/arm_cfft_f32.c \
../FFT/Src/arm_cfft_init_f32.c \
../FFT/Src/arm_common_tables.c \
../FFT/Src/arm_mult_f32.c \
../FFT/Src/arm_rfft_fast_f32.c 

OBJS += \
./FFT/Src/arm_cfft_f32.o \
./FFT/Src/arm_cfft_init_f32.o \
./FFT/Src/arm_common_tables.o \
./FFT/Src/arm_mult_f32.o \
./FFT/Src/arm_rfft_fast_f32.o 

C_DEPS += \
./FFT/Src/arm_cfft_f32.d \
./FFT/Src/arm_cfft_init_f32.d \
./FFT/Src/arm_common_tables.d \
./FFT/Src/arm_mult_f32.d \
./FFT/Src/arm_rfft_fast_f32.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Src/%.o FFT/Src/%.su FFT/Src/%.cyclo: ../FFT/Src/%.c FFT/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Src

clean-FFT-2f-Src:
	-$(RM) ./FFT/Src/arm_cfft_f32.cyclo ./FFT/Src/arm_cfft_f32.d ./FFT/Src/arm_cfft_f32.o ./FFT/Src/arm_cfft_f32.su ./FFT/Src/arm_cfft_init_f32.cyclo ./FFT/Src/arm_cfft_init_f32.d ./FFT/Src/arm_cfft_init_f32.o ./FFT/Src/arm_cfft_init_f32.su ./FFT/Src/arm_common_tables.cyclo ./FFT/Src/arm_common_tables.d ./FFT/Src/arm_common_tables.o ./FFT/Src/arm_common_tables.su ./FFT/Src/arm_mult_f32.cyclo ./FFT/Src/arm_mult_f32.d ./FFT/Src/arm_mult_f32.o ./FFT/Src/arm_mult_f32.su ./FFT/Src/arm_rfft_fast_f32.cyclo ./FFT/Src/arm_rfft_fast_f32.d ./FFT/Src/arm_rfft_fast_f32.o ./FFT/Src/arm_rfft_fast_f32.su

.PHONY: clean-FFT-2f-Src

