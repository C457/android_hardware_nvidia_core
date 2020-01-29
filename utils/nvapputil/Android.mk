LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnvapputil

LOCAL_CFLAGS += -DNV_DEF_USE_FLOAT=1

LOCAL_SRC_FILES := \
    nvaurand.c \
    nvaugetopt.c \
    nvaureadline.c \
    nvauerr.c \
    nvauprintf.c \
    nvau_hashtable.c \
    nvau_token.c \
    nvauproc_linux.c

LOCAL_C_INCLUDES := hardware/nvidia/core-headers

LOCAL_SHARED_LIBRARIES := libnvos

include $(BUILD_SHARED_LIBRARY)
