################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Source/InterpolationFunctions/InterpolationFunctions.c \
../FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.c \
../FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.c \
../FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.c \
../FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.c \
../FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.c \
../FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.c \
../FFT/Source/InterpolationFunctions/arm_linear_interp_f16.c \
../FFT/Source/InterpolationFunctions/arm_linear_interp_f32.c \
../FFT/Source/InterpolationFunctions/arm_linear_interp_q15.c \
../FFT/Source/InterpolationFunctions/arm_linear_interp_q31.c \
../FFT/Source/InterpolationFunctions/arm_linear_interp_q7.c \
../FFT/Source/InterpolationFunctions/arm_spline_interp_f32.c \
../FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.c 

OBJS += \
./FFT/Source/InterpolationFunctions/InterpolationFunctions.o \
./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.o \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.o \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.o \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.o \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.o \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.o \
./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.o \
./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.o \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.o \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.o \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.o \
./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.o \
./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.o 

C_DEPS += \
./FFT/Source/InterpolationFunctions/InterpolationFunctions.d \
./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.d \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.d \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.d \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.d \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.d \
./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.d \
./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.d \
./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.d \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.d \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.d \
./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.d \
./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.d \
./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Source/InterpolationFunctions/%.o FFT/Source/InterpolationFunctions/%.su FFT/Source/InterpolationFunctions/%.cyclo: ../FFT/Source/InterpolationFunctions/%.c FFT/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Source-2f-InterpolationFunctions

clean-FFT-2f-Source-2f-InterpolationFunctions:
	-$(RM) ./FFT/Source/InterpolationFunctions/InterpolationFunctions.cyclo ./FFT/Source/InterpolationFunctions/InterpolationFunctions.d ./FFT/Source/InterpolationFunctions/InterpolationFunctions.o ./FFT/Source/InterpolationFunctions/InterpolationFunctions.su ./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.cyclo ./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.d ./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.o ./FFT/Source/InterpolationFunctions/InterpolationFunctionsF16.su ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.cyclo ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.d ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.o ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f16.su ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.cyclo ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.d ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.o ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_f32.su ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.cyclo ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.d ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.o ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q15.su ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.cyclo ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.d ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.o ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q31.su ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.cyclo ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.d ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.o ./FFT/Source/InterpolationFunctions/arm_bilinear_interp_q7.su ./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.cyclo ./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.d ./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.o ./FFT/Source/InterpolationFunctions/arm_linear_interp_f16.su ./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.cyclo ./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.d ./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.o ./FFT/Source/InterpolationFunctions/arm_linear_interp_f32.su ./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.cyclo ./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.d ./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.o ./FFT/Source/InterpolationFunctions/arm_linear_interp_q15.su ./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.cyclo ./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.d ./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.o ./FFT/Source/InterpolationFunctions/arm_linear_interp_q31.su ./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.cyclo ./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.d ./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.o ./FFT/Source/InterpolationFunctions/arm_linear_interp_q7.su ./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.cyclo ./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.d ./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.o ./FFT/Source/InterpolationFunctions/arm_spline_interp_f32.su ./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.cyclo ./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.d ./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.o ./FFT/Source/InterpolationFunctions/arm_spline_interp_init_f32.su

.PHONY: clean-FFT-2f-Source-2f-InterpolationFunctions

