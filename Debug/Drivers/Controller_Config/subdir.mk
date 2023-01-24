################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Controller_Config/Controller_Config.c 

OBJS += \
./Drivers/Controller_Config/Controller_Config.o 

C_DEPS += \
./Drivers/Controller_Config/Controller_Config.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Controller_Config/%.o Drivers/Controller_Config/%.su: ../Drivers/Controller_Config/%.c Drivers/Controller_Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I../Core/Inc -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0/Drivers/Joystick" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0/Drivers/Controller_Config" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Controller_Config

clean-Drivers-2f-Controller_Config:
	-$(RM) ./Drivers/Controller_Config/Controller_Config.d ./Drivers/Controller_Config/Controller_Config.o ./Drivers/Controller_Config/Controller_Config.su

.PHONY: clean-Drivers-2f-Controller_Config

