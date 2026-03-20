################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Source/SVMFunctions/SVMFunctions.c \
../FFT/Source/SVMFunctions/SVMFunctionsF16.c \
../FFT/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../FFT/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./FFT/Source/SVMFunctions/SVMFunctions.o \
./FFT/Source/SVMFunctions/SVMFunctionsF16.o \
./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./FFT/Source/SVMFunctions/SVMFunctions.d \
./FFT/Source/SVMFunctions/SVMFunctionsF16.d \
./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Source/SVMFunctions/%.o FFT/Source/SVMFunctions/%.su FFT/Source/SVMFunctions/%.cyclo: ../FFT/Source/SVMFunctions/%.c FFT/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Source-2f-SVMFunctions

clean-FFT-2f-Source-2f-SVMFunctions:
	-$(RM) ./FFT/Source/SVMFunctions/SVMFunctions.cyclo ./FFT/Source/SVMFunctions/SVMFunctions.d ./FFT/Source/SVMFunctions/SVMFunctions.o ./FFT/Source/SVMFunctions/SVMFunctions.su ./FFT/Source/SVMFunctions/SVMFunctionsF16.cyclo ./FFT/Source/SVMFunctions/SVMFunctionsF16.d ./FFT/Source/SVMFunctions/SVMFunctionsF16.o ./FFT/Source/SVMFunctions/SVMFunctionsF16.su ./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.d ./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.o ./FFT/Source/SVMFunctions/arm_svm_linear_init_f16.su ./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.d ./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.o ./FFT/Source/SVMFunctions/arm_svm_linear_init_f32.su ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f16.su ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./FFT/Source/SVMFunctions/arm_svm_linear_predict_f32.su ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./FFT/Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./FFT/Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f16.su ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./FFT/Source/SVMFunctions/arm_svm_rbf_init_f32.su ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./FFT/Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./FFT/Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.cyclo ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.cyclo ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./FFT/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-FFT-2f-Source-2f-SVMFunctions

