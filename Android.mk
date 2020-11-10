LOCAL_PATH := $(call my-dir)

TARGET_PIE := true
NDK_APP_PIE := true

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  dex2oat.cc

LOCAL_MODULE := dex2oat
LOCAL_MODULE_TAGS := optional

# Allow execution on android-16+
LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
