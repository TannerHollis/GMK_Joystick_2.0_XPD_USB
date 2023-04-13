################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USBDevice-master/Class/MSC/usbd_msc.c \
../Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.c 

OBJS += \
./Drivers/USBDevice-master/Class/MSC/usbd_msc.o \
./Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.o 

C_DEPS += \
./Drivers/USBDevice-master/Class/MSC/usbd_msc.d \
./Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USBDevice-master/Class/MSC/%.o Drivers/USBDevice-master/Class/MSC/%.su: ../Drivers/USBDevice-master/Class/MSC/%.c Drivers/USBDevice-master/Class/MSC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Controller" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/USBDevice-master" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/ButtonSwitch" -I"C:/Users/tanne/STM32CubeIDE/workspace_1.11.0/GMK_Joystick_2.0_XPD_USB_L3/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-MSC

clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-MSC:
	-$(RM) ./Drivers/USBDevice-master/Class/MSC/usbd_msc.d ./Drivers/USBDevice-master/Class/MSC/usbd_msc.o ./Drivers/USBDevice-master/Class/MSC/usbd_msc.su ./Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.d ./Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.o ./Drivers/USBDevice-master/Class/MSC/usbd_msc_scsi.su

.PHONY: clean-Drivers-2f-USBDevice-2d-master-2f-Class-2f-MSC

