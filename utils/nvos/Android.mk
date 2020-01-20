#
# Copyright (c) 2012-2013, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA Corporation and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA Corporation is strictly prohibited.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

COMMON_SRC_FILES := \
    nvos_debug.c \
    nvos_internal.c \
    nvos_alloc.c \
    nvos_pointer_hash.c \
    nvos_thread.c \
    nvos_coop_thread.c \
    nvos_trace.c \
    nvos_file.c

# linux usermode implementation

include $(CLEAR_VARS)

LOCAL_MODULE := libnvos
LOCAL_ARM_MODE := arm

LOCAL_CFLAGS += -DNV_AOS_ENTRY_POINT=0x80108000
LOCAL_CFLAGS += -DANDROID_LOG_ADB=1
# Advanced debug feature disabled until Bug 950465 fixed
LOCAL_CFLAGS += -DNVOS_ADVANCED_DEBUG=0

ifneq ($(filter bonaire_sim ,$(TARGET_PRODUCT)),)
LOCAL_CFLAGS += -DBUILD_FOR_COSIM
endif

LOCAL_CFLAGS += -DUNIFIED_SCALING=1

LOCAL_SRC_FILES += \
    $(COMMON_SRC_FILES) \
    nvos_config.c \
    linux/nvos_linux.c \
    linux/nvos_linux_librt.c \
    linux/nvos_linux_stub.c \
    linux/nvos_linux_user.c \
    linux/nvos_linux_debugcomm.c \
    linux/nvos_linux_settings.c \
    linux/nvos_linux_us.c \
    linux/nvos_main.c

LOCAL_SHARED_LIBRARIES := \
    libdl \
    liblog \
    libcutils \
    libutils \
    libbinder

LOCAL_WHOLE_STATIC_LIBRARIES += libnvosutils

include $(BUILD_SHARED_LIBRARY)

# host static library

include $(CLEAR_VARS)

LOCAL_MODULE := libnvos
# Advanced debug feature disabled until Bug 950465 fixed
LOCAL_CFLAGS += -DNVOS_ADVANCED_DEBUG=0
LOCAL_CFLAGS += -UANDROID

LOCAL_SRC_FILES += \
    $(COMMON_SRC_FILES) \
    nvos_config.c \
    linux/nvos_linux.c \
    linux/nvos_linux_librt.c \
    linux/nvos_linux_host_stub.c \
    linux/nvos_linux_user.c \
    linux/nvos_linux_debugcomm.c \
    linux/nvos_linux_settings.c

LOCAL_WHOLE_STATIC_LIBRARIES += libnvosutils

include $(BUILD_HOST_STATIC_LIBRARY)
