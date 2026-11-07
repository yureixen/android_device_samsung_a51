#
# Copyright (C) 2023 The LineageOS Project
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

# FOD.
TARGET_HAS_FOD := true

# Inherit from device configuration.
$(call inherit-product, device/samsung/a51/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_ENABLE_BLUR := false
WITH_GMS := false
# TARGET_USES_MINI_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a51
PRODUCT_DEVICE := a51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A515F
PRODUCT_MANUFACTURER := samsung

PRODUCT_SHIPPING_API_LEVEL := 29

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc="a51nsxx-user 13 TP1A.220624.014 A515FXXU5GVK6 release-keys" \
	BuildFingerprint="samsung/a51nsxx/a51:13/TP1A.220624.014/A515FXXU5GVK6:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
