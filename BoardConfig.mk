#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Flags
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Assert
TARGET_OTA_ASSERT_DEVICE := etab5, ETAB5, E-TAB5, E-Tab5, hulkbuster

# Platform
TARGET_BOARD_PLATFORM := mt6592
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Mediatek Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# Kernel 
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk
BOARD_CUSTOM_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --mtk 1

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1237319680
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BLOCK_BASED_OTA := false

# Audio
BOARD_GLOBAL_CFLAGS += -DMTK_AUDIO_BLOB

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/bdroid_buildcfg

# Charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Connectivity
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Dex-Preopt
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true

# Display
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# EGL settings
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_EGL_NEEDS_FNW := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Minikin
USE_MINIKIN := true

# Media
BOARD_USES_LEGACY_MTK_AV_BLOB := true

# NVRAM
NVRAM_WARNING := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Shim
TARGET_LDPRELOAD := libmtk_symbols.so

# TWRP
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/recovery.fstab
TARGET_RECOVERY_DEVICE_DIRS += $(LOCAL_PATH_DEVICE)
TARGET_NO_TWO_STEP_RECOVERY := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_REBOOT_BOOTLOADER := true
TW_THEME := portrait_xxhdpi
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_NO_USB_STORAGE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
TW_EXTRA_LANGUAGES := true

# Sepolicy
POLICYVERS := 26
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Inherit from the proprietary version
-include vendor/generalmobile/hulkbuster/BoardConfigVendor.mk
