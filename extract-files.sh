#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=samsung
DEVICE=replenish

rm -rf ../../../vendor/$VENDOR/$DEVICE/* #dont delete the git folder
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/app
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/framework
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/flex
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/ppp
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bluetooth
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd/dhcpcd-hooks
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/usr
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/usr/keylayout/
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/usr/keychars/
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/lib



adb pull /system/usr/keylayout/vino-headset.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout/vino-keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keychars/vino-keypad.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars


adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl


adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd
adb pull /system/etc/wifi/nvram_net.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi


adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/liblog.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib


adb pull /system/etc/ppp/chap-secrets ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/ppp/ip-down ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/ppp/ip-up-vpn ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/ppp/options ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/AutoVolumeControl.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc


adb pull /system/bin/pppd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/pppd_runner ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/memsicd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/logcat ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/logwrapper ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/BCM4329B1_002.002.023.0589.0673.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin


./setup-makefiles.sh
