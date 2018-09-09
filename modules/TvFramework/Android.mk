include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)

LOCAL_MODULE := com.google.android.pano.v1.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/etc/permissions/com.google.android.pano.v1.xml
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)

LOCAL_MODULE := com.google.android.tv.installed.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/etc/permissions/com.google.android.tv.installed.xml
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)

LOCAL_MODULE := com.google.widevine.software.drm.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/etc/permissions/com.google.widevine.software.drm.xml
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)

LOCAL_MODULE := com.google.android.pano.v1.jar
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/framework/24/com.google.android.pano.v1.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)

LOCAL_MODULE := com.google.widevine.software.drm.jar
LOCAL_SRC_FILES := $(GAPPS_SOURCES_PATH)/all/framework/24/com.google.widevine.software.drm.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar

include $(BUILD_PREBUILT)