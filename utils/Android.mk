LOCAL_PATH := $(call my-dir)
include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, \
	md5 \
	nvapputil \
	nvos \
	nvosutils \
	nvtestresults \
))
