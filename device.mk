#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Camera
PRODUCT_PACKAGES += \
    libshims_camera

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResBangkk \
    NfcResBangkk \
    SettingsResBangkk \
    SettingsProviderResBangkk \
    SystemUIResBangkk \
    WifiResBangkk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/sku_yupik/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/sku_yupik/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_ext_spkr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.bangkk


# PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/goodix_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix_ts.kl

# Init
PRODUCT_PACKAGES += \
    init.mmi.overlay.rc

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag \
    SecureElement \
    android.hardware.nfc@1.2-service

# recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.bangkk.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.bangkk.rc

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Sensors
PRODUCT_PACKAGES += \
    sensors.bangkk

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Prebuilt-Headers
PRODUCT_VENDOR_KERNEL_HEADERS := device/motorola/bangkk-kernel/kernel-headers

# Inherit from motorola sm6375-common
$(call inherit-product, device/motorola/sm6375-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/motorola/bangkk/bangkk-vendor.mk)
