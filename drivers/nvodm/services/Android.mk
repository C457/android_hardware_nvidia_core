#
# Copyright (c) 2012 - 2013, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA CORPORATION is strictly prohibited.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvodm_services

LOCAL_SRC_FILES := \
    nvodm_services.c \
    nvodm_services_dev_i2c.c \
    nvodm_services_os.c \
    nvodm_services_ext.c \
    nvodm_services_common.c \
    nvodm_services_os_common.c

include $(BUILD_STATIC_LIBRARY)
