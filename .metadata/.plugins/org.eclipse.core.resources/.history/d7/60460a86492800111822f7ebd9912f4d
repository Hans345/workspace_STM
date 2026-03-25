################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Source/BayesFunctions/BayesFunctions.c \
../FFT/Source/BayesFunctions/BayesFunctionsF16.c \
../FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c \
../FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c 

OBJS += \
./FFT/Source/BayesFunctions/BayesFunctions.o \
./FFT/Source/BayesFunctions/BayesFunctionsF16.o \
./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o \
./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o 

C_DEPS += \
./FFT/Source/BayesFunctions/BayesFunctions.d \
./FFT/Source/BayesFunctions/BayesFunctionsF16.d \
./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d \
./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Source/BayesFunctions/%.o FFT/Source/BayesFunctions/%.su FFT/Source/BayesFunctions/%.cyclo: ../FFT/Source/BayesFunctions/%.c FFT/Source/BayesFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Source-2f-BayesFunctions

clean-FFT-2f-Source-2f-BayesFunctions:
	-$(RM) ./FFT/Source/BayesFunctions/BayesFunctions.cyclo ./FFT/Source/BayesFunctions/BayesFunctions.d ./FFT/Source/BayesFunctions/BayesFunctions.o ./FFT/Source/BayesFunctions/BayesFunctions.su ./FFT/Source/BayesFunctions/BayesFunctionsF16.cyclo ./FFT/Source/BayesFunctions/BayesFunctionsF16.d ./FFT/Source/BayesFunctions/BayesFunctionsF16.o ./FFT/Source/BayesFunctions/BayesFunctionsF16.su ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.cyclo ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.su ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.cyclo ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o ./FFT/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.su

.PHONY: clean-FFT-2f-Source-2f-BayesFunctions

