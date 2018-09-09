LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := google_build.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/etc/sysconfig/google.xml
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig

include $(BUILD_PREBUILT)