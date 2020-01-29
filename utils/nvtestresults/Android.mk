LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvtestresults
LOCAL_C_INCLUDES := hardware/nvidia/core-headers
LOCAL_SRC_FILES := nvresults.c
LOCAL_SHARED_LIBRARIES := libnvtestio libnvos

include $(BUILD_SHARED_LIBRARY)
