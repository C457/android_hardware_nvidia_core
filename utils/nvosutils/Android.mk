LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

COMMON_C_INCLUDES := hardware/nvidia/core-headers

include $(CLEAR_VARS)

LOCAL_MODULE := libnvosutils

LOCAL_C_INCLUDES += $(COMMON_C_INCLUDES)

LOCAL_SRC_FILES := nvustring.c nvuhash.c

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvosutils

LOCAL_C_INCLUDES += $(COMMON_C_INCLUDES)

LOCAL_SRC_FILES := nvustring.c nvuhash.c

include $(BUILD_HOST_STATIC_LIBRARY)
