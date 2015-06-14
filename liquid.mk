$(call inherit-product, device/samsung/klimtlte/full_klimtlte.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_tablet_lte.mk)

PRODUCT_NAME := liquid_klimtlte
PRODUCT_DEVICE := klimtlte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T705 \
    PRODUCT_NAME=klimtlte \
    PRODUCT_DEVICE=klimtlte \
    TARGET_DEVICE=klimtlte \
