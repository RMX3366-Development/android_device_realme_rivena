#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rivena device
$(call inherit-product, device/realme/rivena/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rivena
PRODUCT_DEVICE := rivena
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3366

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3366-user 14 UKQ1.230924.001 R.1d262cc-66b8f-9291e release-keys" \
    BuildFingerprint=realme/RMX3366/RE546F:14/UKQ1.230924.001/R.1d262cc-66b8f-9291e:user/release-keys \
    DeviceName=RE546F \
    DeviceProduct=RMX3366 \
    SystemDevice=RE546F \
    SystemName=RMX3366
