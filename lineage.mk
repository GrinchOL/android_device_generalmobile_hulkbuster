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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/generalmobile/hulkbuster/device.mk)

# Product
PRODUCT_DEVICE := hulkbuster
PRODUCT_NAME := lineage_hulkbuster
PRODUCT_BRAND := GeneralMobile
PRODUCT_MODEL := hulkbuster
PRODUCT_MANUFACTURER := GeneralMobile

# Release name
PRODUCT_RELEASE_NAME := hulkbuster

PRODUCT_TAGS += dalvik.gc.type-precise

# Superuser
WITH_SU = true
