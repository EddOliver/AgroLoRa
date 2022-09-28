################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LoRaWAN/App/CayenneLpp.c \
../LoRaWAN/App/app_lorawan.c \
../LoRaWAN/App/lora_app.c \
../LoRaWAN/App/lora_at.c \
../LoRaWAN/App/lora_command.c \
../LoRaWAN/App/lora_info.c \
../LoRaWAN/App/test_rf.c 

OBJS += \
./LoRaWAN/App/CayenneLpp.o \
./LoRaWAN/App/app_lorawan.o \
./LoRaWAN/App/lora_app.o \
./LoRaWAN/App/lora_at.o \
./LoRaWAN/App/lora_command.o \
./LoRaWAN/App/lora_info.o \
./LoRaWAN/App/test_rf.o 

C_DEPS += \
./LoRaWAN/App/CayenneLpp.d \
./LoRaWAN/App/app_lorawan.d \
./LoRaWAN/App/lora_app.d \
./LoRaWAN/App/lora_at.d \
./LoRaWAN/App/lora_command.d \
./LoRaWAN/App/lora_info.d \
./LoRaWAN/App/test_rf.d 


# Each subdirectory must supply rules for building sources it contributes
LoRaWAN/App/%.o LoRaWAN/App/%.su: ../LoRaWAN/App/%.c LoRaWAN/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DDEBUG -c -I../Core/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../../Drivers/CMSIS/Include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../Drivers/BSP/STM32WLxx_LoRa_E5_mini -I../../../../../Utilities/lpm/tiny_lpm -I../../../../../Utilities/misc -I../../../../../Utilities/sequencer -I../../../../../Utilities/timer -I../../../../../Utilities/trace/adv_trace -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/App -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LoRaWAN-2f-App

clean-LoRaWAN-2f-App:
	-$(RM) ./LoRaWAN/App/CayenneLpp.d ./LoRaWAN/App/CayenneLpp.o ./LoRaWAN/App/CayenneLpp.su ./LoRaWAN/App/app_lorawan.d ./LoRaWAN/App/app_lorawan.o ./LoRaWAN/App/app_lorawan.su ./LoRaWAN/App/lora_app.d ./LoRaWAN/App/lora_app.o ./LoRaWAN/App/lora_app.su ./LoRaWAN/App/lora_at.d ./LoRaWAN/App/lora_at.o ./LoRaWAN/App/lora_at.su ./LoRaWAN/App/lora_command.d ./LoRaWAN/App/lora_command.o ./LoRaWAN/App/lora_command.su ./LoRaWAN/App/lora_info.d ./LoRaWAN/App/lora_info.o ./LoRaWAN/App/lora_info.su ./LoRaWAN/App/test_rf.d ./LoRaWAN/App/test_rf.o ./LoRaWAN/App/test_rf.su

.PHONY: clean-LoRaWAN-2f-App

