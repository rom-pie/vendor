# Copyright (C) 2019 AOSmP
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

PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aosmp/prebuilt/common/bin/sysinit:system/bin/sysinit  \

DEVICE_PACKAGE_OVERLAYS += \
    vendor/aosmp/overlay/common \
    vendor/aosmp/overlay/themes

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# Priv-app permissions
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/permissions/privapp-permissions-aosmp.xml:system/etc/permissions/privapp-permissions-aosmp.xml

# Cutout control overlay
PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Init file
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/init.local.rc:system/etc/init/init.aosmp.rc

# Backup Tool
ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/aosmp/build/tools/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/aosmp/build/tools/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/aosmp/build/tools/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

PRODUCT_COPY_FILES += \
    vendor/aosmp/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/aosmp/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/aosmp/build/tools/50-aosmp.sh:system/addon.d/50-aosmp.sh

# APN list
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Keyboard libs
ifeq ($(TARGET_ARCH), $(filter $(TARGET_ARCH), arm64))
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so \
    vendor/aosmp/prebuilt/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/aosmp/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so
endif

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aosmp/overlay/dictionaries

# Google prebuilts
PRODUCT_PACKAGES += \
    Turbo

# Weather
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/permissions/org.pixelexperience.weather.client.xml

# Google apps privapp permissions
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/privapp-permissions-turbo.xml:system/etc/permissions/privapp-permissions-turbo.xml    

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/aosmp/config/permissions/aosmp-power-whitelist.xml:system/etc/sysconfig/aosmp-power-whitelist.xml

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/aosmp/config/permissions/aosmp-power-whitelist.xml:system/etc/sysconfig/aosmp-power-whitelist.xml

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/aosmp/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Packages
include vendor/aosmp/config/packages.mk

# Props
include vendor/aosmp/config/props.mk

# Version
include vendor/aosmp/config/version.mk

# Themes
include vendor/aosmp/config/accents.mk
include vendor/aosmp/config/themes.mk
