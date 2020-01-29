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

LOCAL_MODULE := libnvtestio

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    hardware/nvidia/core-headers

LOCAL_SRC_FILES := \
    tio_vfs.c \
    tio_remote.c \
    tio_linux.c \
    tio_linux_poll.c \
    tio_tcp.c \
    tio_null_usb.c \
    tio_host.c \
    tio_host_stdio.c \
    tio_listen.c \
    tio_target.c \
    tio_reliable.c \
    tio_gdbt.c \
    tio_gdbt_host.c \
    tio_gdbt_target.c \
    tio_shmoo.c \
    tio_shmoo_norm.c \
    tio_nvos.c \
    tio_null_file_cache.c

LOCAL_SHARED_LIBRARIES := libnvapputil libnvos

include $(BUILD_SHARED_LIBRARY)
