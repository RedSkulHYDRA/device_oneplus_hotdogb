# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove unwanted apps 
rm -rf packages/apps/Aperture
rm -rf packages/apps/Camera2
rm -rf packages/apps/Matlog

# Change logo Mask

rm -rf frameworks/base/core/res/assets/images
git clone https://github.com/RedSkulHYDRA/custom_android_logo.git frameworks/base/core/res/assets/images

# Clone Common Tree

git clone https://github.com/RedSkulHYDRA/device_oneplus_sm8150-common -b yaap-custom device/oneplus/sm8150-common

# Clone Kernel (Inlining Neptune)

sudo apt-get install lld
rm -rf packages/apps/KProfiles
git clone https://github.com/yaap/prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9.git prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9
git clone https://gitlab.com/Codecity001/rui-clang.git -b main /home/redskul/yaap/prebuilts/clang/host/linux-x86/clang-rui
git clone https://github.com/Codecity001/Neptune_kernel_sm8150_oneplus.git -b inline-erofs kernel/oneplus/sm8150

# Clone vendor

git clone https://github.com/yaap/vendor_oneplus_hotdogb -b thirteen vendor/oneplus/hotdogb
git clone https://github.com/yaap/vendor_oneplus_sm8150-common.git -b thirteen vendor/oneplus/sm8150-common

# Hardware

git clone https://github.com/yaap/hardware_oneplus -b thirteen hardware/oneplus

# Qcomm

git clone https://github.com/yaap/device_qcom_common -b thirteen device/qcom/common
git clone https://gitlab.com/yaosp/vendor_qcom_common -b thirteen vendor/qcom/common

# Clone other Devices trees
git clone https://github.com/RedSkulHYDRA/device_oneplus_hotdog.git -b yaap-custom device/oneplus/hotdog
git clone https://github.com/RedSkulHYDRA/device_oneplus_guacamole.git -b yaap-custom device/oneplus/guacamole
git clone https://github.com/RedSkulHYDRA/device_oneplus_guacamoleb.git -b yaap-custom device/oneplus/guacamoleb

# Clone other vendor trees
git clone https://github.com/yaap/vendor_oneplus_hotdog.git -b thirteen vendor/oneplus/hotdog
git clone https://github.com/yaap/vendor_oneplus_guacamole.git -b thirteen vendor/oneplus/guacamole
git clone https://github.com/yaap/vendor_oneplus_guacamoleb.git -b thirteen vendor/oneplus/guacamoleb

#Icon Packs
rm -rf frameworks/base/packages/overlays
git clone https://github.com/RedSkulHYDRA/Icon_packs.git -b yaap-custom frameworks/base/packages/overlays

# DOLBY
git clone https://github.com/RedSkulHYDRA/hardware_dolby.git hardware/dolby

# Themed Icons
git clone https://github.com/RedSkulHYDRA/vendor_icons.git vendor/icons

cd device/oneplus/hotdogb
chmod +x revert.sh
chmod +x spoof.sh

cd
cd yaap
