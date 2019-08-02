# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
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

AOSMP_MOD_VERSION = 1.0

ifndef AOSMP_BUILD_TYPE
    AOSMP_BUILD_TYPE := STABLE
endif

DATE := $(shell date -u +%Y%m%d-%H%M)
TARGET_PRODUCT_SHORT := $(subst aosmp_,,$(AOSMP_BUILD_TYPE))

AOSMP_VERSION := AOSmP-$(AOSMP_BUILD_TYPE)-$(AOSMP_MOD_VERSION)-$(AOSMP_BUILD)-$(DATE)
AOSMP_FINGERPRINT := AOSmP/$(AOSMP_MOD_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.aosmp.version=$(AOSMP_VERSION) \
    ro.aosmp.device=$(AOSMP_BUILD) \
 	ro.aosmp.releasetype=$(AOSMP_BUILD_TYPE) \
	ro.modversion=$(AOSMP_MOD_VERSION)
	
AOSMP_DISPLAY_VERSION := $(AOSMP_BUILD_TYPE)-$(AOSMP_MOD_VERSION)
	
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	ro.aosmp.display.version=$(AOSMP_DISPLAY_VERSION) \
    ro.aosmp.fingerprint=$(AOSMP_FINGERPRINT)  
