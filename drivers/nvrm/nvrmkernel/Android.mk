#
# Copyright (c) 2012-2014, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA Corporation and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA Corporation is strictly prohibited.
#
LOCAL_PATH := $(call my-dir)

# stub

include $(CLEAR_VARS)

LOCAL_MODULE := libnvrm

LOCAL_CFLAGS += -DNV_IS_DYNAMIC=1
LOCAL_CFLAGS += -DNVRM_TRANSPORT_IN_KERNEL=1

ifeq ($(TARGET_TEGRA_FAMILY), t11x)
LOCAL_CFLAGS += -DTARGET_SOC_T11X
endif
ifeq ($(TARGET_TEGRA_FAMILY), t12x)
LOCAL_CFLAGS += -DTARGET_SOC_T12X
endif

LOCAL_C_INCLUDES := \
    hardware/nvidia/core-headers \
    $(LOCAL_PATH)/core/common \
    external/valgrind/main/include \
    external/valgrind/main/memcheck

LOCAL_SRC_FILES := \
    core/common/nvrm_avp_service.c \
    core/common/nvrm_avp_cpu_rpc.c \
    core/common/nvrm_chip.c \
    core/common/nvrm_hwmap.c \
    core/common/nvrm_surface.c \
    core/common/nvrm_surface_debug.c \
    core/common/nvrm_stub_helper.c \
    core/common/nvrm_stub_helper_linux.c \
    core/common/nvrm_stub_helper_linux_nvmap.c \
    core/common/nvrm_stub_helper_linux_ion.c \
    core/common/nvrm_moduleloader_linux.c \
    core/common/nvrpc_helper.c \
    null_stubs/nvrm_analog_stub.c \
    null_stubs/nvrm_diag_stub.c \
    null_stubs/nvrm_gpio_stub.c \
    null_stubs/nvrm_i2c_stub.c \
    null_stubs/nvrm_init_stub.c \
    null_stubs/nvrm_keylist_stub.c \
    null_stubs/nvrm_module_stub.c \
    null_stubs/nvrm_owr_stub.c \
    null_stubs/nvrm_pinmux_stub.c \
    null_stubs/nvrm_pmu_stub.c \
    null_stubs/nvrm_power_stub.c \
    null_stubs/nvrm_pwm_stub.c \
    null_stubs/nvrm_spi_stub.c

LOCAL_SHARED_LIBRARIES := libnvos libcutils

LOCAL_STATIC_LIBRARIES := libmd5

include $(BUILD_SHARED_LIBRARY)
