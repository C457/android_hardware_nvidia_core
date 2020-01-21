LOCAL_PATH := $(call my-dir)

# libnvrm_graphics

include $(CLEAR_VARS)

LOCAL_MODULE := libnvrm_graphics

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../ \
    $(LOCAL_PATH)/../nvrmkernel/core/common \
    hardware/nvidia/core-headers \
    system/core/include

LOCAL_SRC_FILES := \
    nvrm_disasm.c \
    nvrm_stream.c \
    nvsched.c \
    nvrm_channel_linux.c

LOCAL_SHARED_LIBRARIES := libnvos libnvrm liblog libsync

include $(BUILD_SHARED_LIBRARY)
