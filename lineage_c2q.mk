#
# Copyright (C) 2024-2025 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c2q device
$(call inherit-product, device/samsung/c2q/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_c2q
PRODUCT_DEVICE := c2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N9860
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="c2qzhx-user-13-TP1A.220624.014-N9860ZSSEHYG5-release-keys" \
    BuildFingerprint=samsung/c2qzhx/c2q:11/RP1A.200720.012/N9860ZSSEHYG5:user/release-keys \
    DeviceProduct=c2qzhx \
    SystemName=c2qzhx
