#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# codebht

# Lunch banner maintainer variable
RISING_MAINTAINER := codebht

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8s Gen 4" \
    RisingMaintainer="codebht"

# Enable blur support (recommended for Snapdragon 8s Gen 4)
TARGET_ENABLE_BLUR := true

# Ship default Aperture camera (set to true only if using MIUI/Leica camera port)
PRODUCT_NO_CAMERA := true

# Build with GMS (Google Apps)
WITH_GMS := true

# Inherit from onyx device
$(call inherit-product, device/xiaomi/onyx/device.mk)

PRODUCT_NAME := lineage_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 25053PC47G

PRODUCT_SYSTEM_NAME := onyx_global
PRODUCT_SYSTEM_DEVICE := onyx

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="onyx_global-user 15 AQ3A.250226.002 OS3.0.7.0.WOLMIXM release-keys" \
    BuildFingerprint=POCO/onyx_global/onyx:15/AQ3A.250226.002/OS3.0.7.0.WOLMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
