# Custom PixelPropUtils
rm -rf /home/redskul/yaap/frameworks/base/core/java/com/android/internal/util/yaap
git clone https://github.com/RedSkulHYDRA/Yaap-Utils.git -b main frameworks/base/core/java/com/android/internal/util/yaap

# Application manager
rm -rf /home/redskul/yaap/frameworks/base/core/java/android/app/ApplicationPackageManager.java
wget https://raw.githubusercontent.com/yaap/frameworks_base/88a750518fad6bf0ef8ff626e3374ca60dbe8aea/core/java/android/app/ApplicationPackageManager.java -P /home/redskul/yaap/frameworks/base/core/java/android/app
