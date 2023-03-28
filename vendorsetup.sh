# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1


# Clone Kernel (Inlining Neptune)

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

# DOLBY
git clone https://github.com/RedSkulHYDRA/hardware_dolby.git hardware/dolby

# Themed Icons
git clone https://github.com/RedSkulHYDRA/vendor_icons.git vendor/icons

