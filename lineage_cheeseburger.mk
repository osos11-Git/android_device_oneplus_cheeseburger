#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cheeseburger device
$(call inherit-product, device/oneplus/cheeseburger/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit can-utils stuff.
$(call inherit-product, device/oneplus/cheeseburger/can/can.mk)

PRODUCT_NAME := lineage_cheeseburger
PRODUCT_DEVICE := cheeseburger
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5000

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_SYSTEM_DEVICE := OnePlus5
PRODUCT_SYSTEM_NAME := OnePlus5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus5 \
    TARGET_PRODUCT=OnePlus5 \
    RISING_CHIPSET="Snapdragon 835" \
    RISING_MAINTAINER="osos11"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5-user 10 QKQ1.191014.012 2010292059 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:10/QKQ1.191014.012/2010292059:user/release-keys

TARGET_VENDOR := oneplus

# Ship with Aperture Camera
PRODUCT_NO_CAMERA := true
# Support call recording on Google Dialer
TARGET_SUPPORTS_CALL_RECORDING := true
# Ship with Blur
TARGET_ENABLE_BLUR := true
# Ship with Gapps
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
RISING_PACKAGE_TYPE := "PIXEL"
PRODUCT_PACKAGES += \
   MarkupGoogle \
   LatinIMEGooglePrebuilt \
   PrebuiltDeskClockGoogle \
   CalculatorGooglePrebuilt \
   CalendarGooglePrebuilt
