# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Camera
PRODUCT_PACKAGES += \
    camera.msm8992

# TWRP
PRODUCT_COPY_FILES += \
    device/lge/bullhead/twrp.fstab:recovery/root/etc/twrp.fstab

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.0/NBD90W/3239497:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.0 NBD90W 3239497 release-keys"

