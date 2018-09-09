include vendor/opengapps/build/core/definitions.mk
include vendor/opengapps/build/config.mk

DEVICE_PACKAGE_OVERLAYS += \
    $(GAPPS_DEVICE_FILES_PATH)/overlay/pico

GAPPS_PRODUCT_PACKAGES += \
    NoTouchAuthDelegate \
    google_build.xml \
    com.google.android.pano.v1.xml \
    com.google.android.tv.installed.xml \
    com.google.widevine.software.drm.xml \
    com.google.android.pano.v1.jar \
    com.google.widevine.software.drm.jar \
    PrebuiltGmsCorePano \
    Tubesky

ifneq ($(filter tvmini,$(TARGET_GAPPS_VARIANT)),)

GAPPS_PRODUCT_PACKAGES += \
    Backdrop \
    AndroidMediaShell \
    LeanbackLauncher \
    RecommendationsService \
    TV \
    SetupWraith \
    SecondScreenSetup \
    SecondScreenSetupAuthBridge \
    TVLauncher \
    LeanbackIme \
    CanvasPackageInstaller \
    TVRecommendations \
    AtvRemoteService \
    Katniss \
    TvVoiceInput \
    LandscapeWallpaper \
    AtvWidget

ifneq ($(filter tvstock,$(TARGET_GAPPS_VARIANT)),)

DEVICE_PACKAGE_OVERLAYS += \
    $(GAPPS_DEVICE_FILES_PATH)/overlay/webview/24

GAPPS_PRODUCT_PACKAGES += \
    WebViewGoogle \
    Overscan \
    VideosPano \
    Music2Pano \
    PlayGamesTV \
    YouTubeLeanback

endif # end tvmini
endif # end tvstock

# This needs to be at the end of standard files, but before the GAPPS_FORCE_* options,
# since those also affect DEVICE_PACKAGE_OVERLAYS. We don't want to exclude a package
# that also has an overlay, since that will make us use the overlay but not have the
# package. This can cause issues.
PRODUCT_PACKAGES += $(filter-out $(GAPPS_EXCLUDED_PACKAGES),$(GAPPS_PRODUCT_PACKAGES))

