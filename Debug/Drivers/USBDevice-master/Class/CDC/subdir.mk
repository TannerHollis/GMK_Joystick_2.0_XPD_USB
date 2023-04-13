################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USBDevice-master/Class/CDC/usbd_cdc.c \
../Drivers/USBDevice-master/Class/CDC/usbd_ncm.c 

OBJS += \
./Drivers/USBDevice-master/Class/CDC/usbd_cdc.o \
./Drivers/USBDevice-master/Class/CDC/usbd_ncm.o 

C_DEPS += \
./Drivers/USBDevice-master/Class/CDC/usbd_cdc.d \
./Drivers/USBDevice-master/Class/CDC/usbd_ncm.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USBDevice-master/Class/CDC/%.o Drivers/USBDevice-master/Class/CDC/%.su: ../Drivers/USBDevice-master/Class/CDC/%.c Drivers/USBDevice-master/Class/CDC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Controller" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/ButtonSwitch" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-CDC

clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-CDC:
	-$(RM) ./Drivers/USBDevice-master/Class/CDC/usbd_cdc.d ./Drivers/USBDevice-master/Class/CDC/usbd_cdc.o ./Drivers/USBDevice-master/Class/CDC/usbd_cdc.su ./Drivers/USBDevice-master/Class/CDC/usbd_ncm.d ./Drivers/USBDevice-master/Class/CDC/usbd_ncm.o ./Drivers/USBDevice-master/Class/CDC/usbd_ncm.su

.PHONY: clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-CDC

