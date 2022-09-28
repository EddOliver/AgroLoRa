################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpClockSync.c \
C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpCompliance.c \
C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.c \
C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.c 

OBJS += \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.o \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.o \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.o \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.o 

C_DEPS += \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.d \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.d \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.d \
./Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.o: C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpClockSync.c Middlewares/LoRaWAN/LmHandler/Packages/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DDEBUG -c -I../Core/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../../Drivers/CMSIS/Include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../Drivers/BSP/STM32WLxx_LoRa_E5_mini -I../../../../../Utilities/lpm/tiny_lpm -I../../../../../Utilities/misc -I../../../../../Utilities/sequencer -I../../../../../Utilities/timer -I../../../../../Utilities/trace/adv_trace -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/App -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.o: C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpCompliance.c Middlewares/LoRaWAN/LmHandler/Packages/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DDEBUG -c -I../Core/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../../Drivers/CMSIS/Include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../Drivers/BSP/STM32WLxx_LoRa_E5_mini -I../../../../../Utilities/lpm/tiny_lpm -I../../../../../Utilities/misc -I../../../../../Utilities/sequencer -I../../../../../Utilities/timer -I../../../../../Utilities/trace/adv_trace -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/App -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.o: C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.c Middlewares/LoRaWAN/LmHandler/Packages/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DDEBUG -c -I../Core/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../../Drivers/CMSIS/Include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../Drivers/BSP/STM32WLxx_LoRa_E5_mini -I../../../../../Utilities/lpm/tiny_lpm -I../../../../../Utilities/misc -I../../../../../Utilities/sequencer -I../../../../../Utilities/timer -I../../../../../Utilities/trace/adv_trace -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/App -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.o: C:/Users/VAI/Documents/Cube/LoRaWan-E5-Node-main/Middlewares/Third_Party/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.c Middlewares/LoRaWAN/LmHandler/Packages/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DDEBUG -c -I../Core/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../../Drivers/CMSIS/Include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../Drivers/BSP/STM32WLxx_LoRa_E5_mini -I../../../../../Utilities/lpm/tiny_lpm -I../../../../../Utilities/misc -I../../../../../Utilities/sequencer -I../../../../../Utilities/timer -I../../../../../Utilities/trace/adv_trace -I../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/App -I../../../../../Projects/Applications/FreeRTOS/FreeRTOS_LoRaWAN_AT/LoRaWAN/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middlewares-2f-LoRaWAN-2f-LmHandler-2f-Packages

clean-Middlewares-2f-LoRaWAN-2f-LmHandler-2f-Packages:
	-$(RM) ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.d ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.o ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpClockSync.su ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.d ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.o ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpCompliance.su ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.d ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.o ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpFirmwareManagement.su ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.d ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.o ./Middlewares/LoRaWAN/LmHandler/Packages/LmhpRemoteMcastSetup.su

.PHONY: clean-Middlewares-2f-LoRaWAN-2f-LmHandler-2f-Packages

