LOCAL_PATH := $(call my-dir)

_local_subdirs := nvrmkernel graphics

include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, $(_local_subdirs)))

