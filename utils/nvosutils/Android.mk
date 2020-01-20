LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvosutils
LOCAL_SRC_FILES += nvustring.c
LOCAL_SRC_FILES += nvuhash.c

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvosutils
LOCAL_SRC_FILES += nvustring.c
LOCAL_SRC_FILES += nvuhash.c

include $(BUILD_HOST_STATIC_LIBRARY)
