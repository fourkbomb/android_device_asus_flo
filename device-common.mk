#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product-if-exists, vendor/asus/flo/flo-vendor.mk)
$(call inherit-product-if-exists, hardware/qcom/msm8960/msm8960.mk)

# Product
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.flo.bt.sh:system/bin/init.flo.bt.sh

# Camera
PRODUCT_PACKAGES += \
    libmmcamera_interface2 \
    libmmcamera_interface \
    libqomx_core \
    Snap

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_ds_api \
    libloc_core \
    libizat_core \
    libgeofence \
    libgps.utils \
    gps.conf \
    gps.msm8960 \
    flp.msm8960

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
    $(LOCAL_PATH)/touch_dev.idc:system/usr/idc/touch_dev.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
    $(LOCAL_PATH)/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
    $(LOCAL_PATH)/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
    $(LOCAL_PATH)/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
    $(LOCAL_PATH)/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
    $(LOCAL_PATH)/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8960

# Kickstart
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kickstart_checker.sh:system/bin/kickstart_checker.sh

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

PRODUCT_PACKAGES += \
    libOmxVdec \
    libOmxVenc \
    libOmxCore \
    libstagefrighthw

# Misc
PRODUCT_PACKAGES += \
    bdAddrLoader \
    libwfcu \
    conn_init \
    charger_touch

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf

# Modem debugger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.flo.diag.rc:root/init.flo.diag.rc

# Power HAL
PRODUCT_PACKAGES += \
    power.flo

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.flo.power.rc:root/init.flo.power.rc \
    $(LOCAL_PATH)/init.flo.power.rc:root/init.recovery.flo.rc \
    $(LOCAL_PATH)/init.flo.usb.rc:root/init.flo.usb.rc \
    $(LOCAL_PATH)/ueventd.flo.rc:root/ueventd.flo.rc \

# Stlport compat
PRODUCT_PACKAGES += \
    libstlport

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermald-flo.conf:system/etc/thermald.conf

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/WCNSS_qcom_wlan_nv_flo.bin:system/etc/wifi/WCNSS_qcom_wlan_nv_flo.bin \
    $(LOCAL_PATH)/WCNSS_qcom_wlan_nv_deb.bin:system/etc/wifi/WCNSS_qcom_wlan_nv_deb.bin \
    $(LOCAL_PATH)/init.flo.wifi.sh:system/bin/init.flo.wifi.sh
