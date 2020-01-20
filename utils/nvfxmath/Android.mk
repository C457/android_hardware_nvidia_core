LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvfxmath

LOCAL_C_INCLUDES := hardware/nvidia/core-headers

LOCAL_SRC_FILES := \
    sincos.c \
    fxconv_arm.S \
    fxdiv_arm.S \
    fxrsqrt_arm.S \
    fxexplog_arm.S

include $(BUILD_STATIC_LIBRARY)

