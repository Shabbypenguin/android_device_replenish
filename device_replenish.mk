ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/replenish/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    gps.replenish \
    Gallery3d \
    SpareParts \
    Development \
    Term \
    libOmxCore \
    libOmxVidEnc \
    make_ext4fs \
    setup_fs \
    dexpreopt \
    VoiceDialer \
    SamsungServiceMode
 
# Recovery tools
#PRODUCT_PACKAGES += \

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml


# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/replenish/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/replenish/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/replenish/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/replenish/files/root/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \

# Recovery kernel modules / files
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/root/lib/modules/rfs_fat.ko:root/lib/modules/rfs_fat.ko \
    device/samsung/replenish/files/root/lib/modules/rfs_glue.ko:root/lib/modules/rfs_glue.ko \
    device/samsung/replenish/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/replenish/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/replenish/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/replenish/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/replenish/files/root/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/replenish/recovery/recovery.fstab:recovery/root/etc/recovery.fstab

# Device-specific keymaps
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/usr/keylayout/vino-headset.kl:system/usr/keylayout/vino-headset.kl \
    vendor/samsung/replenish/proprietary/usr/keylayout/vino-keypad.kl:system/usr/keylayout/vino-keypad.kl \
    vendor/samsung/replenish/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    vendor/samsung/replenish/proprietary/usr/keychars/vino-keypad.kcm.bin:system/usr/keychars/vino-keypad.kcm.bin

# Board-specific init
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/ueventd.sph-m580.rc:root/ueventd.sph-m580.rc \
    device/samsung/replenish/files/init.sph-m580.rc:root/init.sph-m580.rc

# Sensors
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/samsung/replenish/proprietary/bin/memsicd:system/bin/memsicd

# 3D
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/samsung/replenish/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    vendor/samsung/replenish/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \
    vendor/samsung/replenish/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/samsung/replenish/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/samsung/replenish/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/samsung/replenish/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/samsung/replenish/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/samsung/replenish/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/samsung/replenish/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/samsung/replenish/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Camera
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/lib/libcamera.so:system/lib/libcamera.so \
    device/samsung/replenish/files/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/samsung/replenish/files/lib/libcameraservice.so:system/lib/libcameraservice.so \
    device/samsung/replenish/files/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/samsung/replenish/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/samsung/replenish/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/samsung/replenish/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/samsung/replenish/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/samsung/replenish/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt

# SD Card
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/etc/vold.fstab:system/etc/vold.fstab

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/etc/media_profiles.xml:/system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/samsung/replenish/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Samsung RIL
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/bin/rild:system/bin/rild \
    device/samsung/replenish/files/bin/rilclient-test:system/bin/rilclient-test \
    device/samsung/replenish/files/bin/qmuxd:system/bin/qmuxd \
    device/samsung/replenish/files/lib/libril.so:system/lib/libril.so \
    device/samsung/replenish/files/lib/libsec-ril.so:system/lib/libsec-ril.so \
    device/samsung/replenish/files/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/replenish/files/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/replenish/files/lib/libdiag.so:system/lib/libdiag.so

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/bin/BCM4329B1_002.002.023.0589.0673.hcd:system/bin/BCM4329B1_002.002.023.0589.0673.hcd

# OMX libraries
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/samsung/replenish/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/samsung/replenish/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/samsung/replenish/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/samsung/replenish/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/samsung/replenish/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/samsung/replenish/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/samsung/replenish/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/samsung/replenish/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/samsung/replenish/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    vendor/samsung/replenish/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/samsung/replenish/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/lib/liblog.so:system/lib/liblog.so \
    vendor/samsung/replenish/proprietary/bin/logcat:system/bin/logcat \
    vendor/samsung/replenish/proprietary/bin/logwrapper:system/bin/logwrapper \
    vendor/samsung/replenish/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/replenish/files/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/replenish/files/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    device/samsung/replenish/files/etc/gps.conf:system/etc/gps.conf

# 3G PPP
PRODUCT_COPY_FILES += \
    vendor/samsung/replenish/proprietary/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    vendor/samsung/replenish/proprietary/etc/ppp/ip-down:system/etc/ppp/ip-down \
    device/samsung/replenish/files/etc/ppp/ip-up:system/etc/ppp/ip-up \
    vendor/samsung/replenish/proprietary/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    vendor/samsung/replenish/proprietary/etc/ppp/options:system/etc/ppp/options \
    vendor/samsung/replenish/proprietary/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets \
    vendor/samsung/replenish/proprietary/bin/pppd:system/bin/pppd \
    vendor/samsung/replenish/proprietary/bin/pppd_runner:system/bin/pppd_runner


$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us.mk)

$(call inherit-product-if-exists, vendor/samsung/replenish/replenish-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/replenish/overlay

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi
PRODUCT_COPY_FILES += \
    device/samsung/replenish/files/media/bootanimation.zip:system/media/bootanimation.zip

# Property overrides
PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=MM-dd-yyyy

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# XXX: We might enable precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed, but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160

# Google ClientBase
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.ms=android-sprint-us \
    ro.com.google.clientidbase.yt=android-samsung \
    ro.com.google.clientidbase.am=android-sprint-us \
    ro.com.google.clientidbase.gmm=android-samsung


PRODUCT_NAME := full_replenish
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := replenish
PRODUCT_MODEL := SPH-M580
PRODUCT_MANUFACTURER := samsung
