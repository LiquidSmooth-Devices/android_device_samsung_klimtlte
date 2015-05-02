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

LOCAL_PATH := device/samsung/klimtlte

# overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/klimtwifi/overlay

$(call inherit-product, device/samsung/exynos5420-common/exynos5420-common.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal5420 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    mixer_paths.xml \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/configs/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Lights
PRODUCT_PACKAGES += \
    lights.universal5420

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

PRODUCT_PACKAGES += \
    init.baseband.rc \
    init.universal5420.rc \
    lpm.rc \
    ueventd.universal5420.rc

PRODUCT_PACKAGES += \
    cbd \
    libsecril-client \
    libsecril-client-sap

# Samsung Service Mode    
PRODUCT_PACKAGES += \
    SamsungServiceMode

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/PARAM.ini:system/etc/PARAM.ini \
    $(LOCAL_PATH)/configs/PDC.ini:system/etc/PDC.ini
 
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/klimtlte/klimtlte-vendor.mk)
