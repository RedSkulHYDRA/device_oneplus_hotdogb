# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Kernel Requirements (Inlining Neptune)
git clone https://github.com/yaap/prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9.git prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9
git clone https://gitlab.com/Flamingo-OS/dora_clang.git -b A13 prebuilts/clang/host/linux-x86/clang-dora

# DOLBY
git clone https://github.com/RedSkulHYDRA/hardware_dolby.git hardware/dolby

# Themed Icons
git clone https://github.com/RedSkulHYDRA/vendor_icons.git vendor/icons

# Config.xml 
rm -rf vendor/yaap/overlay/frameworks/base/core/res/res/values/config.xml
git clone https://github.com/RedSkulHYDRA/vendor_yaap.git -b yaap-custom vendor_yaap/overlay/frameworks/base/core/res/res/values

# Qcomm
git clone https://github.com/yaap/device_qcom_common -b thirteen device/qcom/common
git clone https://gitlab.com/yaosp/vendor_qcom_common -b thirteen vendor/qcom/common
