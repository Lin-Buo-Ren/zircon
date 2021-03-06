# Copyright 2017 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := driver

MODULE_SRCS := \
    $(LOCAL_DIR)/ums-function.c \

MODULE_STATIC_LIBS := system/ulib/ddk system/ulib/sync system/dev/lib/usb

MODULE_LIBS := system/ulib/driver system/ulib/zircon system/ulib/c

MODULE_BANJO_LIBS := \
    system/banjo/ddk-protocol-block \
    system/banjo/ddk-protocol-usb \
    system/banjo/ddk-protocol-usb-function \
    system/banjo/ddk-protocol-usb-request \

include make/module.mk
