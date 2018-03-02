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

ifndef AOSMP_BUILD_TYPE
    AOSMP_BUILD_TYPE := ALPHA
endif

AOSMP_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(AOSMP_BUILD_TYPE)

RODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.aosmp.version=$(AOSMP_VERSION)
