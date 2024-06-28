################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USBDevice-master/Device/usbd.c \
../Drivers/USBDevice-master/Device/usbd_ctrl.c \
../Drivers/USBDevice-master/Device/usbd_desc.c \
../Drivers/USBDevice-master/Device/usbd_ep.c \
../Drivers/USBDevice-master/Device/usbd_if.c \
../Drivers/USBDevice-master/Device/usbd_microsoft_os.c \
../Drivers/USBDevice-master/Device/usbd_utils.c 

OBJS += \
./Drivers/USBDevice-master/Device/usbd.o \
./Drivers/USBDevice-master/Device/usbd_ctrl.o \
./Drivers/USBDevice-master/Device/usbd_desc.o \
./Drivers/USBDevice-master/Device/usbd_ep.o \
./Drivers/USBDevice-master/Device/usbd_if.o \
./Drivers/USBDevice-master/Device/usbd_microsoft_os.o \
./Drivers/USBDevice-master/Device/usbd_utils.o 

C_DEPS += \
./Drivers/USBDevice-master/Device/usbd.d \
./Drivers/USBDevice-master/Device/usbd_ctrl.d \
./Drivers/USBDevice-master/Device/usbd_desc.d \
./Drivers/USBDevice-master/Device/usbd_ep.d \
./Drivers/USBDevice-master/Device/usbd_if.d \
./Drivers/USBDevice-master/Device/usbd_microsoft_os.d \
./Drivers/USBDevice-master/Device/usbd_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USBDevice-master/Device/%.o Drivers/USBDevice-master/Device/%.su Drivers/USBDevice-master/Device/%.cyclo: ../Drivers/USBDevice-master/Device/%.c Drivers/USBDevice-master/Device/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/Controller" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/ButtonSwitch" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-USBDevice-2d-master-2f-Device

clean-Drivers-2f-USBDevice-2d-master-2f-Device:
	-$(RM) ./Drivers/USBDevice-master/Device/usbd.cyclo ./Drivers/USBDevice-master/Device/usbd.d ./Drivers/USBDevice-master/Device/usbd.o ./Drivers/USBDevice-master/Device/usbd.su ./Drivers/USBDevice-master/Device/usbd_ctrl.cyclo ./Drivers/USBDevice-master/Device/usbd_ctrl.d ./Drivers/USBDevice-master/Device/usbd_ctrl.o ./Drivers/USBDevice-master/Device/usbd_ctrl.su ./Drivers/USBDevice-master/Device/usbd_desc.cyclo ./Drivers/USBDevice-master/Device/usbd_desc.d ./Drivers/USBDevice-master/Device/usbd_desc.o ./Drivers/USBDevice-master/Device/usbd_desc.su ./Drivers/USBDevice-master/Device/usbd_ep.cyclo ./Drivers/USBDevice-master/Device/usbd_ep.d ./Drivers/USBDevice-master/Device/usbd_ep.o ./Drivers/USBDevice-master/Device/usbd_ep.su ./Drivers/USBDevice-master/Device/usbd_if.cyclo ./Drivers/USBDevice-master/Device/usbd_if.d ./Drivers/USBDevice-master/Device/usbd_if.o ./Drivers/USBDevice-master/Device/usbd_if.su ./Drivers/USBDevice-master/Device/usbd_microsoft_os.cyclo ./Drivers/USBDevice-master/Device/usbd_microsoft_os.d ./Drivers/USBDevice-master/Device/usbd_microsoft_os.o ./Drivers/USBDevice-master/Device/usbd_microsoft_os.su ./Drivers/USBDevice-master/Device/usbd_utils.cyclo ./Drivers/USBDevice-master/Device/usbd_utils.d ./Drivers/USBDevice-master/Device/usbd_utils.o ./Drivers/USBDevice-master/Device/usbd_utils.su

.PHONY: clean-Drivers-2f-USBDevice-2d-master-2f-Device

