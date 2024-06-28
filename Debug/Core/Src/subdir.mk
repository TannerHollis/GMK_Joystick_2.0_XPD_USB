################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/AverageWeightedFilter.c \
../Core/Src/MeanFilter.c \
../Core/Src/gmk_controller_if.c \
../Core/Src/hal_usb.c \
../Core/Src/main.c \
../Core/Src/stm32l1xx_hal_msp.c \
../Core/Src/stm32l1xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l1xx.c \
../Core/Src/usb_device.c 

OBJS += \
./Core/Src/AverageWeightedFilter.o \
./Core/Src/MeanFilter.o \
./Core/Src/gmk_controller_if.o \
./Core/Src/hal_usb.o \
./Core/Src/main.o \
./Core/Src/stm32l1xx_hal_msp.o \
./Core/Src/stm32l1xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l1xx.o \
./Core/Src/usb_device.o 

C_DEPS += \
./Core/Src/AverageWeightedFilter.d \
./Core/Src/MeanFilter.d \
./Core/Src/gmk_controller_if.d \
./Core/Src/hal_usb.d \
./Core/Src/main.d \
./Core/Src/stm32l1xx_hal_msp.d \
./Core/Src/stm32l1xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l1xx.d \
./Core/Src/usb_device.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L151xBA -c -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/Controller" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/PDs/STM32_XPD" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Class" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Device" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/PDs" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master/Include" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/USBDevice-master" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/XPD_USB" -I../Core/Inc -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/ButtonSwitch" -I"C:/Users/tanne/OneDrive/Documents/GitHub/GMK_Joystick_2.0_XPD_USB/Drivers/Joystick" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/AverageWeightedFilter.cyclo ./Core/Src/AverageWeightedFilter.d ./Core/Src/AverageWeightedFilter.o ./Core/Src/AverageWeightedFilter.su ./Core/Src/MeanFilter.cyclo ./Core/Src/MeanFilter.d ./Core/Src/MeanFilter.o ./Core/Src/MeanFilter.su ./Core/Src/gmk_controller_if.cyclo ./Core/Src/gmk_controller_if.d ./Core/Src/gmk_controller_if.o ./Core/Src/gmk_controller_if.su ./Core/Src/hal_usb.cyclo ./Core/Src/hal_usb.d ./Core/Src/hal_usb.o ./Core/Src/hal_usb.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/stm32l1xx_hal_msp.cyclo ./Core/Src/stm32l1xx_hal_msp.d ./Core/Src/stm32l1xx_hal_msp.o ./Core/Src/stm32l1xx_hal_msp.su ./Core/Src/stm32l1xx_it.cyclo ./Core/Src/stm32l1xx_it.d ./Core/Src/stm32l1xx_it.o ./Core/Src/stm32l1xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l1xx.cyclo ./Core/Src/system_stm32l1xx.d ./Core/Src/system_stm32l1xx.o ./Core/Src/system_stm32l1xx.su ./Core/Src/usb_device.cyclo ./Core/Src/usb_device.d ./Core/Src/usb_device.o ./Core/Src/usb_device.su

.PHONY: clean-Core-2f-Src

