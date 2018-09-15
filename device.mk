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

# Inherit from proprietary version
$(call inherit-product-if-exists, device/generalmobile/hulkbuster/hulkbuster-vendor.mk)

# Dalvik
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/fstab.mt6592:root/fstab.mt6592 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6592.rc:root/init.mt6592.rc \
    $(LOCAL_PATH)/rootdir/init.mt6592.usb.rc:root/init.mt6592.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
	$(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/rootdir/sbin/poweroff.sh:recovery/root/sbin/poweroff.sh \
    $(LOCAL_PATH)/rootdir/sbin/rebootrecovery.sh:recovery/root/sbin/rebootrecovery.sh \
    $(LOCAL_PATH)/rootdir/sbin/rebootsystem.sh:recovery/root/sbin/rebootsystem.sh \
    $(LOCAL_PATH):kernel

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(DEVICE_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(DEVICE_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

# Haters gonna hate...
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# Symbols
PRODUCT_PACKAGES += \
    libmtk_symbols

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6592 \
    audio_policy.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

# Display
PRODUCT_PACKAGES += \
    memtrack.mt6592

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video.xml \

# Substratum
PRODUCT_PACKAGES += \
    ThemeInterfacer

# Telephony
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
