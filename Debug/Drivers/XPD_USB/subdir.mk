################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/XPD_USB/xpd_usb.c \
../Drivers/XPD_USB/xpd_usb_otg.c 

OBJS += \
./Drivers/XPD_USB/xpd_usb.o \
./Drivers/XPD_USB/xpd_usb_otg.o 

C_DEPS += \
./Drivers/XPD_USB/xpd_usb.d \
./Drivers/XPD_USB/xpd_usb_otg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/XPD_USB/%.o Drivers/XPD_USB/%.su: ../Drivers/XPD_USB/%.c Drivers/XPD_USB/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Controller" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/ButtonSwitch" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-XPD_USB

clean-Drivers-2f-XPD_USB:
	-$(RM) ./Drivers/XPD_USB/xpd_usb.d ./Drivers/XPD_USB/xpd_usb.o ./Drivers/XPD_USB/xpd_usb.su ./Drivers/XPD_USB/xpd_usb_otg.d ./Drivers/XPD_USB/xpd_usb_otg.o ./Drivers/XPD_USB/xpd_usb_otg.su

.PHONY: clean-Drivers-2f-XPD_USB

