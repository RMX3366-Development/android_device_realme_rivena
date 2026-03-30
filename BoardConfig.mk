#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/realme/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/rivena

# A/B
AB_OTA_UPDATER := false

# Assert
TARGET_OTA_ASSERT_DEVICE := RE546F,rivena

# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
ifeq (,$(filter true, $(WITHOUT_RESERVED_SIZE) $(WITH_GMS)))
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 840000000
endif
BOARD_CACHEIMAGE_PARTITION_SIZE := 469762048
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10196353024
BOARD_SUPER_PARTITION_SIZE := 10200547328

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# SEPolicy
include $(DEVICE_PATH)/sepolicy/SEPolicy.mk

# Include the proprietary files BoardConfig.
include vendor/realme/rivena/BoardConfigVendor.mk
