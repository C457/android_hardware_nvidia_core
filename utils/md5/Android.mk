LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libmd5

LOCAL_SRC_FILES += md5.c

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libmd5_host_static

LOCAL_SRC_FILES += md5.c
include $(BUILD_HOST_STATIC_LIBRARY)
