################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ButtonSwitch/ButtonSwitch.c 

OBJS += \
./Drivers/ButtonSwitch/ButtonSwitch.o 

C_DEPS += \
./Drivers/ButtonSwitch/ButtonSwitch.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ButtonSwitch/%.o Drivers/ButtonSwitch/%.su: ../Drivers/ButtonSwitch/%.c Drivers/ButtonSwitch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Controller" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/ButtonSwitch" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ButtonSwitch

clean-Drivers-2f-ButtonSwitch:
	-$(RM) ./Drivers/ButtonSwitch/ButtonSwitch.d ./Drivers/ButtonSwitch/ButtonSwitch.o ./Drivers/ButtonSwitch/ButtonSwitch.su

.PHONY: clean-Drivers-2f-ButtonSwitch

