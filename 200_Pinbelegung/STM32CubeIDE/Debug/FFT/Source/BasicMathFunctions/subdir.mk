################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FFT/Source/BasicMathFunctions/BasicMathFunctions.c \
../FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.c \
../FFT/Source/BasicMathFunctions/arm_abs_f16.c \
../FFT/Source/BasicMathFunctions/arm_abs_f32.c \
../FFT/Source/BasicMathFunctions/arm_abs_f64.c \
../FFT/Source/BasicMathFunctions/arm_abs_q15.c \
../FFT/Source/BasicMathFunctions/arm_abs_q31.c \
../FFT/Source/BasicMathFunctions/arm_abs_q7.c \
../FFT/Source/BasicMathFunctions/arm_add_f16.c \
../FFT/Source/BasicMathFunctions/arm_add_f32.c \
../FFT/Source/BasicMathFunctions/arm_add_f64.c \
../FFT/Source/BasicMathFunctions/arm_add_q15.c \
../FFT/Source/BasicMathFunctions/arm_add_q31.c \
../FFT/Source/BasicMathFunctions/arm_add_q7.c \
../FFT/Source/BasicMathFunctions/arm_and_u16.c \
../FFT/Source/BasicMathFunctions/arm_and_u32.c \
../FFT/Source/BasicMathFunctions/arm_and_u8.c \
../FFT/Source/BasicMathFunctions/arm_clip_f16.c \
../FFT/Source/BasicMathFunctions/arm_clip_f32.c \
../FFT/Source/BasicMathFunctions/arm_clip_q15.c \
../FFT/Source/BasicMathFunctions/arm_clip_q31.c \
../FFT/Source/BasicMathFunctions/arm_clip_q7.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_f16.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_f32.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_f64.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_q15.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_q31.c \
../FFT/Source/BasicMathFunctions/arm_dot_prod_q7.c \
../FFT/Source/BasicMathFunctions/arm_mult_f16.c \
../FFT/Source/BasicMathFunctions/arm_mult_f32.c \
../FFT/Source/BasicMathFunctions/arm_mult_f64.c \
../FFT/Source/BasicMathFunctions/arm_mult_q15.c \
../FFT/Source/BasicMathFunctions/arm_mult_q31.c \
../FFT/Source/BasicMathFunctions/arm_mult_q7.c \
../FFT/Source/BasicMathFunctions/arm_negate_f16.c \
../FFT/Source/BasicMathFunctions/arm_negate_f32.c \
../FFT/Source/BasicMathFunctions/arm_negate_f64.c \
../FFT/Source/BasicMathFunctions/arm_negate_q15.c \
../FFT/Source/BasicMathFunctions/arm_negate_q31.c \
../FFT/Source/BasicMathFunctions/arm_negate_q7.c \
../FFT/Source/BasicMathFunctions/arm_not_u16.c \
../FFT/Source/BasicMathFunctions/arm_not_u32.c \
../FFT/Source/BasicMathFunctions/arm_not_u8.c \
../FFT/Source/BasicMathFunctions/arm_offset_f16.c \
../FFT/Source/BasicMathFunctions/arm_offset_f32.c \
../FFT/Source/BasicMathFunctions/arm_offset_f64.c \
../FFT/Source/BasicMathFunctions/arm_offset_q15.c \
../FFT/Source/BasicMathFunctions/arm_offset_q31.c \
../FFT/Source/BasicMathFunctions/arm_offset_q7.c \
../FFT/Source/BasicMathFunctions/arm_or_u16.c \
../FFT/Source/BasicMathFunctions/arm_or_u32.c \
../FFT/Source/BasicMathFunctions/arm_or_u8.c \
../FFT/Source/BasicMathFunctions/arm_scale_f16.c \
../FFT/Source/BasicMathFunctions/arm_scale_f32.c \
../FFT/Source/BasicMathFunctions/arm_scale_f64.c \
../FFT/Source/BasicMathFunctions/arm_scale_q15.c \
../FFT/Source/BasicMathFunctions/arm_scale_q31.c \
../FFT/Source/BasicMathFunctions/arm_scale_q7.c \
../FFT/Source/BasicMathFunctions/arm_shift_q15.c \
../FFT/Source/BasicMathFunctions/arm_shift_q31.c \
../FFT/Source/BasicMathFunctions/arm_shift_q7.c \
../FFT/Source/BasicMathFunctions/arm_sub_f16.c \
../FFT/Source/BasicMathFunctions/arm_sub_f32.c \
../FFT/Source/BasicMathFunctions/arm_sub_f64.c \
../FFT/Source/BasicMathFunctions/arm_sub_q15.c \
../FFT/Source/BasicMathFunctions/arm_sub_q31.c \
../FFT/Source/BasicMathFunctions/arm_sub_q7.c \
../FFT/Source/BasicMathFunctions/arm_xor_u16.c \
../FFT/Source/BasicMathFunctions/arm_xor_u32.c \
../FFT/Source/BasicMathFunctions/arm_xor_u8.c 

OBJS += \
./FFT/Source/BasicMathFunctions/BasicMathFunctions.o \
./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.o \
./FFT/Source/BasicMathFunctions/arm_abs_f16.o \
./FFT/Source/BasicMathFunctions/arm_abs_f32.o \
./FFT/Source/BasicMathFunctions/arm_abs_f64.o \
./FFT/Source/BasicMathFunctions/arm_abs_q15.o \
./FFT/Source/BasicMathFunctions/arm_abs_q31.o \
./FFT/Source/BasicMathFunctions/arm_abs_q7.o \
./FFT/Source/BasicMathFunctions/arm_add_f16.o \
./FFT/Source/BasicMathFunctions/arm_add_f32.o \
./FFT/Source/BasicMathFunctions/arm_add_f64.o \
./FFT/Source/BasicMathFunctions/arm_add_q15.o \
./FFT/Source/BasicMathFunctions/arm_add_q31.o \
./FFT/Source/BasicMathFunctions/arm_add_q7.o \
./FFT/Source/BasicMathFunctions/arm_and_u16.o \
./FFT/Source/BasicMathFunctions/arm_and_u32.o \
./FFT/Source/BasicMathFunctions/arm_and_u8.o \
./FFT/Source/BasicMathFunctions/arm_clip_f16.o \
./FFT/Source/BasicMathFunctions/arm_clip_f32.o \
./FFT/Source/BasicMathFunctions/arm_clip_q15.o \
./FFT/Source/BasicMathFunctions/arm_clip_q31.o \
./FFT/Source/BasicMathFunctions/arm_clip_q7.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.o \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.o \
./FFT/Source/BasicMathFunctions/arm_mult_f16.o \
./FFT/Source/BasicMathFunctions/arm_mult_f32.o \
./FFT/Source/BasicMathFunctions/arm_mult_f64.o \
./FFT/Source/BasicMathFunctions/arm_mult_q15.o \
./FFT/Source/BasicMathFunctions/arm_mult_q31.o \
./FFT/Source/BasicMathFunctions/arm_mult_q7.o \
./FFT/Source/BasicMathFunctions/arm_negate_f16.o \
./FFT/Source/BasicMathFunctions/arm_negate_f32.o \
./FFT/Source/BasicMathFunctions/arm_negate_f64.o \
./FFT/Source/BasicMathFunctions/arm_negate_q15.o \
./FFT/Source/BasicMathFunctions/arm_negate_q31.o \
./FFT/Source/BasicMathFunctions/arm_negate_q7.o \
./FFT/Source/BasicMathFunctions/arm_not_u16.o \
./FFT/Source/BasicMathFunctions/arm_not_u32.o \
./FFT/Source/BasicMathFunctions/arm_not_u8.o \
./FFT/Source/BasicMathFunctions/arm_offset_f16.o \
./FFT/Source/BasicMathFunctions/arm_offset_f32.o \
./FFT/Source/BasicMathFunctions/arm_offset_f64.o \
./FFT/Source/BasicMathFunctions/arm_offset_q15.o \
./FFT/Source/BasicMathFunctions/arm_offset_q31.o \
./FFT/Source/BasicMathFunctions/arm_offset_q7.o \
./FFT/Source/BasicMathFunctions/arm_or_u16.o \
./FFT/Source/BasicMathFunctions/arm_or_u32.o \
./FFT/Source/BasicMathFunctions/arm_or_u8.o \
./FFT/Source/BasicMathFunctions/arm_scale_f16.o \
./FFT/Source/BasicMathFunctions/arm_scale_f32.o \
./FFT/Source/BasicMathFunctions/arm_scale_f64.o \
./FFT/Source/BasicMathFunctions/arm_scale_q15.o \
./FFT/Source/BasicMathFunctions/arm_scale_q31.o \
./FFT/Source/BasicMathFunctions/arm_scale_q7.o \
./FFT/Source/BasicMathFunctions/arm_shift_q15.o \
./FFT/Source/BasicMathFunctions/arm_shift_q31.o \
./FFT/Source/BasicMathFunctions/arm_shift_q7.o \
./FFT/Source/BasicMathFunctions/arm_sub_f16.o \
./FFT/Source/BasicMathFunctions/arm_sub_f32.o \
./FFT/Source/BasicMathFunctions/arm_sub_f64.o \
./FFT/Source/BasicMathFunctions/arm_sub_q15.o \
./FFT/Source/BasicMathFunctions/arm_sub_q31.o \
./FFT/Source/BasicMathFunctions/arm_sub_q7.o \
./FFT/Source/BasicMathFunctions/arm_xor_u16.o \
./FFT/Source/BasicMathFunctions/arm_xor_u32.o \
./FFT/Source/BasicMathFunctions/arm_xor_u8.o 

C_DEPS += \
./FFT/Source/BasicMathFunctions/BasicMathFunctions.d \
./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.d \
./FFT/Source/BasicMathFunctions/arm_abs_f16.d \
./FFT/Source/BasicMathFunctions/arm_abs_f32.d \
./FFT/Source/BasicMathFunctions/arm_abs_f64.d \
./FFT/Source/BasicMathFunctions/arm_abs_q15.d \
./FFT/Source/BasicMathFunctions/arm_abs_q31.d \
./FFT/Source/BasicMathFunctions/arm_abs_q7.d \
./FFT/Source/BasicMathFunctions/arm_add_f16.d \
./FFT/Source/BasicMathFunctions/arm_add_f32.d \
./FFT/Source/BasicMathFunctions/arm_add_f64.d \
./FFT/Source/BasicMathFunctions/arm_add_q15.d \
./FFT/Source/BasicMathFunctions/arm_add_q31.d \
./FFT/Source/BasicMathFunctions/arm_add_q7.d \
./FFT/Source/BasicMathFunctions/arm_and_u16.d \
./FFT/Source/BasicMathFunctions/arm_and_u32.d \
./FFT/Source/BasicMathFunctions/arm_and_u8.d \
./FFT/Source/BasicMathFunctions/arm_clip_f16.d \
./FFT/Source/BasicMathFunctions/arm_clip_f32.d \
./FFT/Source/BasicMathFunctions/arm_clip_q15.d \
./FFT/Source/BasicMathFunctions/arm_clip_q31.d \
./FFT/Source/BasicMathFunctions/arm_clip_q7.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.d \
./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.d \
./FFT/Source/BasicMathFunctions/arm_mult_f16.d \
./FFT/Source/BasicMathFunctions/arm_mult_f32.d \
./FFT/Source/BasicMathFunctions/arm_mult_f64.d \
./FFT/Source/BasicMathFunctions/arm_mult_q15.d \
./FFT/Source/BasicMathFunctions/arm_mult_q31.d \
./FFT/Source/BasicMathFunctions/arm_mult_q7.d \
./FFT/Source/BasicMathFunctions/arm_negate_f16.d \
./FFT/Source/BasicMathFunctions/arm_negate_f32.d \
./FFT/Source/BasicMathFunctions/arm_negate_f64.d \
./FFT/Source/BasicMathFunctions/arm_negate_q15.d \
./FFT/Source/BasicMathFunctions/arm_negate_q31.d \
./FFT/Source/BasicMathFunctions/arm_negate_q7.d \
./FFT/Source/BasicMathFunctions/arm_not_u16.d \
./FFT/Source/BasicMathFunctions/arm_not_u32.d \
./FFT/Source/BasicMathFunctions/arm_not_u8.d \
./FFT/Source/BasicMathFunctions/arm_offset_f16.d \
./FFT/Source/BasicMathFunctions/arm_offset_f32.d \
./FFT/Source/BasicMathFunctions/arm_offset_f64.d \
./FFT/Source/BasicMathFunctions/arm_offset_q15.d \
./FFT/Source/BasicMathFunctions/arm_offset_q31.d \
./FFT/Source/BasicMathFunctions/arm_offset_q7.d \
./FFT/Source/BasicMathFunctions/arm_or_u16.d \
./FFT/Source/BasicMathFunctions/arm_or_u32.d \
./FFT/Source/BasicMathFunctions/arm_or_u8.d \
./FFT/Source/BasicMathFunctions/arm_scale_f16.d \
./FFT/Source/BasicMathFunctions/arm_scale_f32.d \
./FFT/Source/BasicMathFunctions/arm_scale_f64.d \
./FFT/Source/BasicMathFunctions/arm_scale_q15.d \
./FFT/Source/BasicMathFunctions/arm_scale_q31.d \
./FFT/Source/BasicMathFunctions/arm_scale_q7.d \
./FFT/Source/BasicMathFunctions/arm_shift_q15.d \
./FFT/Source/BasicMathFunctions/arm_shift_q31.d \
./FFT/Source/BasicMathFunctions/arm_shift_q7.d \
./FFT/Source/BasicMathFunctions/arm_sub_f16.d \
./FFT/Source/BasicMathFunctions/arm_sub_f32.d \
./FFT/Source/BasicMathFunctions/arm_sub_f64.d \
./FFT/Source/BasicMathFunctions/arm_sub_q15.d \
./FFT/Source/BasicMathFunctions/arm_sub_q31.d \
./FFT/Source/BasicMathFunctions/arm_sub_q7.d \
./FFT/Source/BasicMathFunctions/arm_xor_u16.d \
./FFT/Source/BasicMathFunctions/arm_xor_u32.d \
./FFT/Source/BasicMathFunctions/arm_xor_u8.d 


# Each subdirectory must supply rules for building sources it contributes
FFT/Source/BasicMathFunctions/%.o FFT/Source/BasicMathFunctions/%.su FFT/Source/BasicMathFunctions/%.cyclo: ../FFT/Source/BasicMathFunctions/%.c FFT/Source/BasicMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5A5xx -c -I../../Core/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/Daten" -I"C:/Users/raphael.baumeler/workspace_STM/200_Pinbelegung/STM32CubeIDE/FFT/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FFT-2f-Source-2f-BasicMathFunctions

clean-FFT-2f-Source-2f-BasicMathFunctions:
	-$(RM) ./FFT/Source/BasicMathFunctions/BasicMathFunctions.cyclo ./FFT/Source/BasicMathFunctions/BasicMathFunctions.d ./FFT/Source/BasicMathFunctions/BasicMathFunctions.o ./FFT/Source/BasicMathFunctions/BasicMathFunctions.su ./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.cyclo ./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.d ./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.o ./FFT/Source/BasicMathFunctions/BasicMathFunctionsF16.su ./FFT/Source/BasicMathFunctions/arm_abs_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_f16.d ./FFT/Source/BasicMathFunctions/arm_abs_f16.o ./FFT/Source/BasicMathFunctions/arm_abs_f16.su ./FFT/Source/BasicMathFunctions/arm_abs_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_f32.d ./FFT/Source/BasicMathFunctions/arm_abs_f32.o ./FFT/Source/BasicMathFunctions/arm_abs_f32.su ./FFT/Source/BasicMathFunctions/arm_abs_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_f64.d ./FFT/Source/BasicMathFunctions/arm_abs_f64.o ./FFT/Source/BasicMathFunctions/arm_abs_f64.su ./FFT/Source/BasicMathFunctions/arm_abs_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_q15.d ./FFT/Source/BasicMathFunctions/arm_abs_q15.o ./FFT/Source/BasicMathFunctions/arm_abs_q15.su ./FFT/Source/BasicMathFunctions/arm_abs_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_q31.d ./FFT/Source/BasicMathFunctions/arm_abs_q31.o ./FFT/Source/BasicMathFunctions/arm_abs_q31.su ./FFT/Source/BasicMathFunctions/arm_abs_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_abs_q7.d ./FFT/Source/BasicMathFunctions/arm_abs_q7.o ./FFT/Source/BasicMathFunctions/arm_abs_q7.su ./FFT/Source/BasicMathFunctions/arm_add_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_add_f16.d ./FFT/Source/BasicMathFunctions/arm_add_f16.o ./FFT/Source/BasicMathFunctions/arm_add_f16.su ./FFT/Source/BasicMathFunctions/arm_add_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_add_f32.d ./FFT/Source/BasicMathFunctions/arm_add_f32.o ./FFT/Source/BasicMathFunctions/arm_add_f32.su ./FFT/Source/BasicMathFunctions/arm_add_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_add_f64.d ./FFT/Source/BasicMathFunctions/arm_add_f64.o ./FFT/Source/BasicMathFunctions/arm_add_f64.su ./FFT/Source/BasicMathFunctions/arm_add_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_add_q15.d ./FFT/Source/BasicMathFunctions/arm_add_q15.o ./FFT/Source/BasicMathFunctions/arm_add_q15.su ./FFT/Source/BasicMathFunctions/arm_add_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_add_q31.d ./FFT/Source/BasicMathFunctions/arm_add_q31.o ./FFT/Source/BasicMathFunctions/arm_add_q31.su ./FFT/Source/BasicMathFunctions/arm_add_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_add_q7.d ./FFT/Source/BasicMathFunctions/arm_add_q7.o ./FFT/Source/BasicMathFunctions/arm_add_q7.su ./FFT/Source/BasicMathFunctions/arm_and_u16.cyclo ./FFT/Source/BasicMathFunctions/arm_and_u16.d ./FFT/Source/BasicMathFunctions/arm_and_u16.o ./FFT/Source/BasicMathFunctions/arm_and_u16.su ./FFT/Source/BasicMathFunctions/arm_and_u32.cyclo ./FFT/Source/BasicMathFunctions/arm_and_u32.d ./FFT/Source/BasicMathFunctions/arm_and_u32.o ./FFT/Source/BasicMathFunctions/arm_and_u32.su ./FFT/Source/BasicMathFunctions/arm_and_u8.cyclo ./FFT/Source/BasicMathFunctions/arm_and_u8.d ./FFT/Source/BasicMathFunctions/arm_and_u8.o ./FFT/Source/BasicMathFunctions/arm_and_u8.su ./FFT/Source/BasicMathFunctions/arm_clip_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_clip_f16.d ./FFT/Source/BasicMathFunctions/arm_clip_f16.o ./FFT/Source/BasicMathFunctions/arm_clip_f16.su ./FFT/Source/BasicMathFunctions/arm_clip_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_clip_f32.d ./FFT/Source/BasicMathFunctions/arm_clip_f32.o ./FFT/Source/BasicMathFunctions/arm_clip_f32.su ./FFT/Source/BasicMathFunctions/arm_clip_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_clip_q15.d ./FFT/Source/BasicMathFunctions/arm_clip_q15.o ./FFT/Source/BasicMathFunctions/arm_clip_q15.su ./FFT/Source/BasicMathFunctions/arm_clip_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_clip_q31.d ./FFT/Source/BasicMathFunctions/arm_clip_q31.o ./FFT/Source/BasicMathFunctions/arm_clip_q31.su ./FFT/Source/BasicMathFunctions/arm_clip_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_clip_q7.d ./FFT/Source/BasicMathFunctions/arm_clip_q7.o ./FFT/Source/BasicMathFunctions/arm_clip_q7.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_f16.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_f32.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_f64.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_q15.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_q31.su ./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.d ./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.o ./FFT/Source/BasicMathFunctions/arm_dot_prod_q7.su ./FFT/Source/BasicMathFunctions/arm_mult_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_f16.d ./FFT/Source/BasicMathFunctions/arm_mult_f16.o ./FFT/Source/BasicMathFunctions/arm_mult_f16.su ./FFT/Source/BasicMathFunctions/arm_mult_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_f32.d ./FFT/Source/BasicMathFunctions/arm_mult_f32.o ./FFT/Source/BasicMathFunctions/arm_mult_f32.su ./FFT/Source/BasicMathFunctions/arm_mult_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_f64.d
	-$(RM) ./FFT/Source/BasicMathFunctions/arm_mult_f64.o ./FFT/Source/BasicMathFunctions/arm_mult_f64.su ./FFT/Source/BasicMathFunctions/arm_mult_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_q15.d ./FFT/Source/BasicMathFunctions/arm_mult_q15.o ./FFT/Source/BasicMathFunctions/arm_mult_q15.su ./FFT/Source/BasicMathFunctions/arm_mult_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_q31.d ./FFT/Source/BasicMathFunctions/arm_mult_q31.o ./FFT/Source/BasicMathFunctions/arm_mult_q31.su ./FFT/Source/BasicMathFunctions/arm_mult_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_mult_q7.d ./FFT/Source/BasicMathFunctions/arm_mult_q7.o ./FFT/Source/BasicMathFunctions/arm_mult_q7.su ./FFT/Source/BasicMathFunctions/arm_negate_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_f16.d ./FFT/Source/BasicMathFunctions/arm_negate_f16.o ./FFT/Source/BasicMathFunctions/arm_negate_f16.su ./FFT/Source/BasicMathFunctions/arm_negate_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_f32.d ./FFT/Source/BasicMathFunctions/arm_negate_f32.o ./FFT/Source/BasicMathFunctions/arm_negate_f32.su ./FFT/Source/BasicMathFunctions/arm_negate_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_f64.d ./FFT/Source/BasicMathFunctions/arm_negate_f64.o ./FFT/Source/BasicMathFunctions/arm_negate_f64.su ./FFT/Source/BasicMathFunctions/arm_negate_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_q15.d ./FFT/Source/BasicMathFunctions/arm_negate_q15.o ./FFT/Source/BasicMathFunctions/arm_negate_q15.su ./FFT/Source/BasicMathFunctions/arm_negate_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_q31.d ./FFT/Source/BasicMathFunctions/arm_negate_q31.o ./FFT/Source/BasicMathFunctions/arm_negate_q31.su ./FFT/Source/BasicMathFunctions/arm_negate_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_negate_q7.d ./FFT/Source/BasicMathFunctions/arm_negate_q7.o ./FFT/Source/BasicMathFunctions/arm_negate_q7.su ./FFT/Source/BasicMathFunctions/arm_not_u16.cyclo ./FFT/Source/BasicMathFunctions/arm_not_u16.d ./FFT/Source/BasicMathFunctions/arm_not_u16.o ./FFT/Source/BasicMathFunctions/arm_not_u16.su ./FFT/Source/BasicMathFunctions/arm_not_u32.cyclo ./FFT/Source/BasicMathFunctions/arm_not_u32.d ./FFT/Source/BasicMathFunctions/arm_not_u32.o ./FFT/Source/BasicMathFunctions/arm_not_u32.su ./FFT/Source/BasicMathFunctions/arm_not_u8.cyclo ./FFT/Source/BasicMathFunctions/arm_not_u8.d ./FFT/Source/BasicMathFunctions/arm_not_u8.o ./FFT/Source/BasicMathFunctions/arm_not_u8.su ./FFT/Source/BasicMathFunctions/arm_offset_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_f16.d ./FFT/Source/BasicMathFunctions/arm_offset_f16.o ./FFT/Source/BasicMathFunctions/arm_offset_f16.su ./FFT/Source/BasicMathFunctions/arm_offset_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_f32.d ./FFT/Source/BasicMathFunctions/arm_offset_f32.o ./FFT/Source/BasicMathFunctions/arm_offset_f32.su ./FFT/Source/BasicMathFunctions/arm_offset_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_f64.d ./FFT/Source/BasicMathFunctions/arm_offset_f64.o ./FFT/Source/BasicMathFunctions/arm_offset_f64.su ./FFT/Source/BasicMathFunctions/arm_offset_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_q15.d ./FFT/Source/BasicMathFunctions/arm_offset_q15.o ./FFT/Source/BasicMathFunctions/arm_offset_q15.su ./FFT/Source/BasicMathFunctions/arm_offset_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_q31.d ./FFT/Source/BasicMathFunctions/arm_offset_q31.o ./FFT/Source/BasicMathFunctions/arm_offset_q31.su ./FFT/Source/BasicMathFunctions/arm_offset_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_offset_q7.d ./FFT/Source/BasicMathFunctions/arm_offset_q7.o ./FFT/Source/BasicMathFunctions/arm_offset_q7.su ./FFT/Source/BasicMathFunctions/arm_or_u16.cyclo ./FFT/Source/BasicMathFunctions/arm_or_u16.d ./FFT/Source/BasicMathFunctions/arm_or_u16.o ./FFT/Source/BasicMathFunctions/arm_or_u16.su ./FFT/Source/BasicMathFunctions/arm_or_u32.cyclo ./FFT/Source/BasicMathFunctions/arm_or_u32.d ./FFT/Source/BasicMathFunctions/arm_or_u32.o ./FFT/Source/BasicMathFunctions/arm_or_u32.su ./FFT/Source/BasicMathFunctions/arm_or_u8.cyclo ./FFT/Source/BasicMathFunctions/arm_or_u8.d ./FFT/Source/BasicMathFunctions/arm_or_u8.o ./FFT/Source/BasicMathFunctions/arm_or_u8.su ./FFT/Source/BasicMathFunctions/arm_scale_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_f16.d ./FFT/Source/BasicMathFunctions/arm_scale_f16.o ./FFT/Source/BasicMathFunctions/arm_scale_f16.su ./FFT/Source/BasicMathFunctions/arm_scale_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_f32.d ./FFT/Source/BasicMathFunctions/arm_scale_f32.o ./FFT/Source/BasicMathFunctions/arm_scale_f32.su ./FFT/Source/BasicMathFunctions/arm_scale_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_f64.d ./FFT/Source/BasicMathFunctions/arm_scale_f64.o ./FFT/Source/BasicMathFunctions/arm_scale_f64.su ./FFT/Source/BasicMathFunctions/arm_scale_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_q15.d ./FFT/Source/BasicMathFunctions/arm_scale_q15.o ./FFT/Source/BasicMathFunctions/arm_scale_q15.su ./FFT/Source/BasicMathFunctions/arm_scale_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_q31.d ./FFT/Source/BasicMathFunctions/arm_scale_q31.o ./FFT/Source/BasicMathFunctions/arm_scale_q31.su ./FFT/Source/BasicMathFunctions/arm_scale_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_scale_q7.d ./FFT/Source/BasicMathFunctions/arm_scale_q7.o ./FFT/Source/BasicMathFunctions/arm_scale_q7.su ./FFT/Source/BasicMathFunctions/arm_shift_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_shift_q15.d ./FFT/Source/BasicMathFunctions/arm_shift_q15.o ./FFT/Source/BasicMathFunctions/arm_shift_q15.su ./FFT/Source/BasicMathFunctions/arm_shift_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_shift_q31.d ./FFT/Source/BasicMathFunctions/arm_shift_q31.o ./FFT/Source/BasicMathFunctions/arm_shift_q31.su ./FFT/Source/BasicMathFunctions/arm_shift_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_shift_q7.d ./FFT/Source/BasicMathFunctions/arm_shift_q7.o ./FFT/Source/BasicMathFunctions/arm_shift_q7.su
	-$(RM) ./FFT/Source/BasicMathFunctions/arm_sub_f16.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_f16.d ./FFT/Source/BasicMathFunctions/arm_sub_f16.o ./FFT/Source/BasicMathFunctions/arm_sub_f16.su ./FFT/Source/BasicMathFunctions/arm_sub_f32.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_f32.d ./FFT/Source/BasicMathFunctions/arm_sub_f32.o ./FFT/Source/BasicMathFunctions/arm_sub_f32.su ./FFT/Source/BasicMathFunctions/arm_sub_f64.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_f64.d ./FFT/Source/BasicMathFunctions/arm_sub_f64.o ./FFT/Source/BasicMathFunctions/arm_sub_f64.su ./FFT/Source/BasicMathFunctions/arm_sub_q15.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_q15.d ./FFT/Source/BasicMathFunctions/arm_sub_q15.o ./FFT/Source/BasicMathFunctions/arm_sub_q15.su ./FFT/Source/BasicMathFunctions/arm_sub_q31.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_q31.d ./FFT/Source/BasicMathFunctions/arm_sub_q31.o ./FFT/Source/BasicMathFunctions/arm_sub_q31.su ./FFT/Source/BasicMathFunctions/arm_sub_q7.cyclo ./FFT/Source/BasicMathFunctions/arm_sub_q7.d ./FFT/Source/BasicMathFunctions/arm_sub_q7.o ./FFT/Source/BasicMathFunctions/arm_sub_q7.su ./FFT/Source/BasicMathFunctions/arm_xor_u16.cyclo ./FFT/Source/BasicMathFunctions/arm_xor_u16.d ./FFT/Source/BasicMathFunctions/arm_xor_u16.o ./FFT/Source/BasicMathFunctions/arm_xor_u16.su ./FFT/Source/BasicMathFunctions/arm_xor_u32.cyclo ./FFT/Source/BasicMathFunctions/arm_xor_u32.d ./FFT/Source/BasicMathFunctions/arm_xor_u32.o ./FFT/Source/BasicMathFunctions/arm_xor_u32.su ./FFT/Source/BasicMathFunctions/arm_xor_u8.cyclo ./FFT/Source/BasicMathFunctions/arm_xor_u8.d ./FFT/Source/BasicMathFunctions/arm_xor_u8.o ./FFT/Source/BasicMathFunctions/arm_xor_u8.su

.PHONY: clean-FFT-2f-Source-2f-BasicMathFunctions

