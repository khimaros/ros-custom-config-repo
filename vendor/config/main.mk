# do not rename this or change path
DEVICE_PACKAGE_OVERLAYS += vendor/custom/vendor/overlay/common

# MicroG
PRODUCT_PACKAGES += \
    GmsCore \
    GsfProxy \
    FakeStore \
    com.google.android.maps.jar

# 2-Button Navigation
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# Seedvault
PRODUCT_PACKAGES += \
    Seedvault

# Aurora Store
#PRODUCT_PACKAGES += \
#    AuroraStore \
#    AuroraServices

# Fix for Google Camera
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/google_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_experience.xml
