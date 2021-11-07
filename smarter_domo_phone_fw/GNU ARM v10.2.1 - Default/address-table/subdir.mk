################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c \
/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table.c 

OBJS += \
./address-table/address-table-cli.o \
./address-table/address-table.o 

C_DEPS += \
./address-table/address-table-cli.d \
./address-table/address-table.d 


# Each subdirectory must supply rules for building sources it contributes
address-table/address-table-cli.o: /home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=gnu99 '-DCONFIGURATION_HEADER="app/framework/util/config.h"' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DCORTEXM3_EFR32_MICRO=1' '-DAPP_GECKO_INFO_PAGE_BTL=1' '-DATTRIBUTE_STORAGE_CONFIGURATION="smarter_domo_phone_fw_endpoint_config.h"' '-DCORTEXM3_EFR32MG12P332F1024GL125=1' '-DCORTEXM3_EFR32MG12P332F1024GL125_MICRO=1' '-DGENERATED_TOKEN_HEADER="smarter_domo_phone_fw_tokens.h"' '-DZA_GENERATED_HEADER="smarter_domo_phone_fw.h"' '-DPLATFORM_HEADER="platform/base/hal/micro/cortexm3/compiler/gcc.h"' '-DEFR32MG12P=1' '-DEFR32MG12P332F1024GL125=1' '-DEFR32_SERIES1_CONFIG2_MICRO=1' '-DLOCKBITS_IN_MAINFLASH_SIZE=0' '-DPSSTORE_SIZE=0' '-DLONGTOKEN_SIZE=0' '-DHAL_CONFIG=1' '-DEMBER_AF_USE_HWCONF=1' '-DEMBER_AF_API_EMBER_TYPES="stack/include/ember-types.h"' '-DEMBER_AF_API_DEBUG_PRINT="app/framework/util/print.h"' '-DEMBER_AF_API_AF_HEADER="app/framework/include/af.h"' '-DEMBER_AF_API_AF_SECURITY_HEADER="app/framework/security/af-security.h"' '-DEMBER_AF_API_NEIGHBOR_HEADER="stack/include/stack-info.h"' '-DEMBER_STACK_ZIGBEE=1' '-DMBEDTLS_CONFIG_FILE="mbedtls-config-generated.h"' '-DEMLIB_USER_CONFIG=1' '-DSL_CATALOG_POWER_MANAGER_PRESENT=1' '-DAPPLICATION_TOKEN_HEADER="znet-token.h"' '-DAPPLICATION_MFG_TOKEN_HEADER="znet-mfg-token.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE="config-device-acceleration.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE="config-device-acceleration-app.h"' '-DPHY_RAIL=1' -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//plugin" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32/efr32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../CMSIS/Include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/dmadrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/gpiointerrupt/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../service/sleeptimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../service/sleeptimer/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/sleep/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/spidrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/tempdrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/uartdrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/ustimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emlib/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../middleware/glib" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../middleware/glib/glib" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/plugin" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/chip/efr32/rf/rfprotocol/ieee802154/cortex" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/mac" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/halconfig/inc/hal-config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/module/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/kit/common/halconfig" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/kit/common/bsp" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw/hal-config" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw/external-generated-files" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal/micro/cortexm3/efm32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/bootloader/api" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/framework" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/stack" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/util" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/framework/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal/micro/cortexm3/efm32/config/segger" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/bootloader" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/common" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/common" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/hal/efr32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/pa-conversions" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/ble" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/ieee802154" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/zwave" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/mpu/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/power_manager/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/sleeptimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/sleeptimer/src" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/mac" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/silicon_labs/silabs_core" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/plugin/plugin-common/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include/psa" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/library" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_alt/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/segger/systemview/SEGGER" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"address-table/address-table-cli.d" -MT"address-table/address-table-cli.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

address-table/address-table.o: /home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=gnu99 '-DCONFIGURATION_HEADER="app/framework/util/config.h"' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DCORTEXM3_EFR32_MICRO=1' '-DAPP_GECKO_INFO_PAGE_BTL=1' '-DATTRIBUTE_STORAGE_CONFIGURATION="smarter_domo_phone_fw_endpoint_config.h"' '-DCORTEXM3_EFR32MG12P332F1024GL125=1' '-DCORTEXM3_EFR32MG12P332F1024GL125_MICRO=1' '-DGENERATED_TOKEN_HEADER="smarter_domo_phone_fw_tokens.h"' '-DZA_GENERATED_HEADER="smarter_domo_phone_fw.h"' '-DPLATFORM_HEADER="platform/base/hal/micro/cortexm3/compiler/gcc.h"' '-DEFR32MG12P=1' '-DEFR32MG12P332F1024GL125=1' '-DEFR32_SERIES1_CONFIG2_MICRO=1' '-DLOCKBITS_IN_MAINFLASH_SIZE=0' '-DPSSTORE_SIZE=0' '-DLONGTOKEN_SIZE=0' '-DHAL_CONFIG=1' '-DEMBER_AF_USE_HWCONF=1' '-DEMBER_AF_API_EMBER_TYPES="stack/include/ember-types.h"' '-DEMBER_AF_API_DEBUG_PRINT="app/framework/util/print.h"' '-DEMBER_AF_API_AF_HEADER="app/framework/include/af.h"' '-DEMBER_AF_API_AF_SECURITY_HEADER="app/framework/security/af-security.h"' '-DEMBER_AF_API_NEIGHBOR_HEADER="stack/include/stack-info.h"' '-DEMBER_STACK_ZIGBEE=1' '-DMBEDTLS_CONFIG_FILE="mbedtls-config-generated.h"' '-DEMLIB_USER_CONFIG=1' '-DSL_CATALOG_POWER_MANAGER_PRESENT=1' '-DAPPLICATION_TOKEN_HEADER="znet-token.h"' '-DAPPLICATION_MFG_TOKEN_HEADER="znet-mfg-token.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE="config-device-acceleration.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE="config-device-acceleration-app.h"' '-DPHY_RAIL=1' -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//plugin" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal//micro/cortexm3/efm32/efr32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../CMSIS/Include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/dmadrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/gpiointerrupt/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../service/sleeptimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../service/sleeptimer/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/sleep/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/spidrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/tempdrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/uartdrv/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emdrv/ustimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../emlib/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../middleware/glib" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../middleware/glib/glib" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/plugin" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/rail_lib/chip/efr32/rf/rfprotocol/ieee802154/cortex" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base//../radio/mac" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/halconfig/inc/hal-config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/module/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/kit/common/halconfig" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//hardware/kit/common/bsp" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw/hal-config" -I"/home/igor/SimplicityStudio/v5_workspace/smarter_domo_phone_fw/external-generated-files" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal/micro/cortexm3/efm32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/bootloader/api" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/framework" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/stack" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/util" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//protocol/zigbee/app/framework/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/base/hal/micro/cortexm3/efm32/config/segger" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/bootloader" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/common" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/common" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/hal/efr32" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/plugin/pa-conversions" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/ble" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/ieee802154" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/rail_lib/protocol/zwave" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/mpu/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/power_manager/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/sleeptimer/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/service/sleeptimer/src" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/common/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//platform/radio/mac" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/silicon_labs/silabs_core" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/plugin/plugin-common/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include/mbedtls" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/include/psa" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/mbedtls/library" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_alt/include" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/home/igor/Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2//util/third_party/segger/systemview/SEGGER" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"address-table/address-table.d" -MT"address-table/address-table.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


