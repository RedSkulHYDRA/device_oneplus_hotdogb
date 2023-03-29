cd
cd yaap

# Change logo Mask
rm -rf frameworks/base/core/res/assets/images
git clone https://github.com/RedSkulHYDRA/custom_android_logo.git frameworks/base/core/res/assets/images

#Icon Packs
rm -rf frameworks/base/packages/overlays
git clone https://github.com/RedSkulHYDRA/Icon_packs.git -b yaap-custom frameworks/base/packages/overlays
