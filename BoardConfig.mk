USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# 64 Bit
ANDROID_64=true
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic


# Board
BOARD_HAS_NO_SELECT_BUTTON := true
HISI_TARGET_PRODUCT := hi6210sft
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOARD_PLATFORM_GPU := mali-450mp 
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true
TARGET_UNIFIED_DEVICE := true

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# EGL
BOARD_EGL_CFG := device/huawei/hi6210sft/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Hardware
BOARD_HAL_STATIC_LIBRARIES += libhealthd.hi6210sft

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_PREBUILT_KERNEL := device/huawei/hi6210sft/kernel

# Partitionsizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Ramdisk
TARGET_PROVIDES_INIT_RC := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT 	:= \"roboto_15x24.h\" 
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific flags
# DEVICE_RESOLUTION := 720x1280
# HAVE_SELINUX := true
# TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
# TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
# TW_MAX_BRIGHTNESS := 255
# TW_NO_USB_STORAGE := true
# TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hi6210sft/graphics.c
