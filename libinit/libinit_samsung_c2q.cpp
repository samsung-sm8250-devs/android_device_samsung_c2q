/*
 * Copyright (C) 2021-2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t c2qzhx_info = {
    .device = "c2q",
    .model = "SM-N9860",
    .name = "c2qzhx",
    .build_fingerprint = "samsung/c2qzhx/c2q:11/RP1A.200720.012/N9860ZSSEHYG5:user/release-keys",
    .build_desc = "c2qzhx-user-13-TP1A.220624.014-N9860ZSSEHYG5-release-keys"
};

static const std::vector<variant_info_t> variants = {
    c2qzhx_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
