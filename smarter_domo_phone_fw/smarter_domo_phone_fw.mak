# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = smarter_domo_phone_fw

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/..

SOURCE_FILES = \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_adc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_cmu.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_core.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_cryotimer.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_emu.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_eusart.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_gpio.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_i2c.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_ldma.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_leuart.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_msc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_prs.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_rmu.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_rtcc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_se.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_system.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_timer.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_usart.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/src/em_wdog.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c \
./znet-bookkeeping.c \
./call-command-handler.c \
./callback-stub.c \
./stack-handler-stub.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/button.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/buzzer/buzzer-efr32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/generic/crc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../../stack/config/ember-configuration.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/generic/endian.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/led.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util/common/library.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/generic/mem-util.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/micro-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/micro.c \
./znet-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/generic/random.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util/security/security-address-cache.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/ember-base-configuration.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/generic/token-def.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/token.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/ext-device.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-library.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/bootloader-interface-app.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/bootloader/api/btl_interface.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/bootloader/api/btl_interface_storage.c \
  ../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emdrv/uartdrv/src/uartdrv.c \
 \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/adc/adc-efr32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/antenna-stub/antenna-stub.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/plugin/plugin-common/button-interface/button-interface.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/stack/framework/ccm-star.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coexistence-802154.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coulomb-counter-802154.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/counters/counters-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/counters/counters-ota.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/counters/counters-soc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/debug-jtag/debug-jtag-efr32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/device-database/device-database.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/device-database/device-database-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/serial/ember-printf.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/util/common/form-and-join.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/util/common/form-and-join-node-adapter.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/hal-config.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/hal-config-gpio.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/mpu/src/sl_mpu.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/power_manager/src/sl_power_manager.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/power_manager/src/sl_power_manager_debug.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/power_manager/src/sl_power_manager_hal_s2.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/common/src/sl_slist.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/heartbeat/heartbeat.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/ias-zone-server/ias-zone-server.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/ias-zone-server/ias-zone-server-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/identify/identify.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/identify/identify-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin-soc/idle-sleep/idle-sleep.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin-soc/idle-sleep/idle-sleep-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin-soc/idle-sleep/idle-sleep-soc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_alt/source/sl_psa_its_nvm3.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_alt/source/sl_se_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/aes_aes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_gcm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/se_aes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/se_gcm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/se_jpake.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_ghash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_aead.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_driver_signature.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/aes.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/asn1parse.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/asn1write.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/base64.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/bignum.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ccm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/chacha20.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/chachapoly.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/cipher_wrap.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/cmac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ctr_drbg.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/des.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ecdh.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ecdsa.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ecjpake.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ecp.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ecp_curves.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/entropy.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/error.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/gcm.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/md.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/md5.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/oid.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/pem.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/pk.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/pk_wrap.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/pkparse.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/platform_util.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/poly1305.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_hash.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_mac.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/psa_crypto_storage.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/rsa.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/rsa_internal.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/sha1.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/sha256.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/sha512.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_cache.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_ciphersuites.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_cookie.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_msg.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_srv.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_ticket.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/ssl_tls.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/threading.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509_create.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509_crl.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509_crt.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509_csr.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509write_crt.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library/x509write_csr.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/network-steering/network-steering-soc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin-soc/packet-handoff/packet-handoff.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/serial/serial.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin/sim-eeprom1/sim-eeprom.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/simple-main/simple-main.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/stack/framework/strong-random-api.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/update-ha-tc-link-key/update-ha-tc-link-key.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/core-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/network-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/option-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/plugin-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/security-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/zcl-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/cli/zdo-cli.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/security/af-node.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/security/af-security-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/security/af-trust-center.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/security/crypto-state.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/af-event.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/af-main-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/attribute-size.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/attribute-storage.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/attribute-table.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/client-api.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/message.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/multi-network.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/print.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/print-formatter.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/process-cluster-message.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/process-global-message.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/service-discovery-common.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/time-util.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/util.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/af-main-soc.c \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/util/service-discovery-soc.c \
 \
smarter_domo_phone_fw_callbacks.c \ \

LIB_FILES = \
 \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg12p-rail/binding-table-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-163k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-163k1-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-283k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-283k1-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-sign-stub.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-stub.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-283k1-stub.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg12p-rail/debug-basic-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/debug-extended-stub-library-cortexm3-gcc-efr32mg12p-rail/debug-extended-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/end-device-bind-stub-library-cortexm3-gcc-efr32mg12p-rail/end-device-bind-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/gp-stub-library-cortexm3-gcc-efr32mg12p-rail/gp-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/hal-library-cortexm3-gcc-efr32mg12p-rail/hal-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg12p-rail/install-code-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/multi-network-stub-library-cortexm3-gcc-efr32mg12p-rail/multi-network-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/multi-pan-stub-library-cortexm3-gcc-efr32mg12p-rail/multi-pan-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg12p-rail/packet-validate-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/security-library-link-keys-stub-cortexm3-gcc-efr32mg12p-rail/security-library-link-keys-stub.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/sim-eeprom1-library-cortexm3-gcc-efr32mg12p-rail/sim-eeprom1-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/source-route-library-cortexm3-gcc-efr32mg12p-rail/source-route-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg12p-rail/zigbee-pro-stack.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg12p-rail/zigbee-r22-support-stub-library.a \
../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/build/zll-stub-library-cortexm3-gcc-efr32mg12p-rail/zll-stub-library.a \
 \
 \

CDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P332F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"smarter_domo_phone_fw_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"smarter_domo_phone_fw_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"smarter_domo_phone_fw.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DEMLIB_USER_CONFIG \
  -DSL_CATALOG_POWER_MANAGER_PRESENT \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
 \

ASMDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P332F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"smarter_domo_phone_fw_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"smarter_domo_phone_fw_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"smarter_domo_phone_fw.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DEMLIB_USER_CONFIG \
  -DSL_CATALOG_POWER_MANAGER_PRESENT \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
 \

CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2 \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../.. \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../../stack \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/../util \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/protocol/zigbee/app/framework/include \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/plugin \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/.. \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32 \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/config \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../CMSIS/Include \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Include \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/common/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/config \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../service/sleeptimer/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../service/sleeptimer/config \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../common/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/sleep/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/spidrv/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emdrv/ustimer/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../emlib/inc \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../middleware/glib \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../middleware/glib/glib \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../radio/rail_lib/plugin \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/../../radio/mac \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/halconfig/inc/hal-config \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/hardware/module/config \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/hardware/kit/common/halconfig \
-I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/hardware/kit/common/bsp \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/base/hal/micro/cortexm3/efm32/config/segger \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/bootloader \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/chip/efr32/efr32xg1x \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/common \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/plugin/pa-conversions \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/protocol/ble \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/rail_lib/protocol/zwave \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/mpu/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/power_manager/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/sleeptimer/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/service/sleeptimer/src \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/common/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/platform/radio/mac \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/silicon_labs/silabs_core \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/plugin/plugin-common/mbedtls \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/include \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/include/mbedtls \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/include/psa \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/mbedtls/library \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_alt/include \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/crypto/sl_component/sl_psa_driver/inc \
  -I../../../Downloads/SimplicityStudio-5/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2/util/third_party/segger/systemview/SEGGER \
  -Ihal-config \
 \

TARGET = smarter_domo_phone_fw

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)))

ARCHITECTUREID = efr32~family[m]~series[1]~device_configuration[2]~performance[p]~radio[332]~flash[1024k]~temp[g]~package[l]~pins[125]~!module+brd4166a+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=8192" \
	-Xlinker --defsym="PSSTORE_SIZE=0" \
	-Xlinker --defsym="LONGTOKEN_SIZE=0" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=0" \
	-Xlinker --defsym="FLASH_SIZE=1048576" \
	-Xlinker --defsym="RAM_SIZE=262144" \
	-Xlinker --defsym="FLASH_PAGE_SIZE=2048" \
	-Xlinker --defsym="APP_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --defsym="HEADER_SIZE=512" \
	-Xlinker --defsym="BTL_SIZE=16384" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config $(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def APP_GECKO_INFO_PAGE_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)
