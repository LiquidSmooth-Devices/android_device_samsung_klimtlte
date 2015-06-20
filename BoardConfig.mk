#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from Exynos 5420 Common
-include device/samsung/exynos5420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/klimtlte

# Bootloader
TARGET_OTA_ASSERT_DEVICE := klimtlte

# Camera
# COMMON_GLOBAL_CFLAGS += -DUSE_MEMORY_HEAP_ION
BOARD_NEEDS_MEMORYHEAPION := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_DVFS

# Kernel
TARGET_KERNEL_CONFIG := deathly_klimtlte_defconfig

# Battery
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/klimtlte/cmhw

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2506096640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_FLASH_BLOCK_SIZE := 4096

# PowerHAL
TARGET_POWERHAL_VARIANT := klimtlte

# SELinux
include device/samsung/exynos5420-common/sepolicy/sepolicy.mk

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/klimtlte/ril

# inherit from the proprietary version
-include vendor/samsung/klimtlte/BoardConfigVendor.mk
