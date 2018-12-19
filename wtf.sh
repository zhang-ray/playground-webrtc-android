



# http://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /tmp/depot_tools
export PATH=$PATH:/tmp/depot_tools

tree /tmp/depot_tools
cd /tmp/depot_tools

./build/install-build-deps.sh





# http://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /tmp/depot_tools
export PATH=$PATH:/tmp/depot_tools

#tree /tmp/depot_tools # no tree?

cd /tmp/depot_tools

find -name install-build-deps.sh

#./build/install-build-deps.sh



# https://webrtc.org/native-code/android/
cd ~/
echo "###################   start fetching webrtc_android"
fetch --nohooks webrtc_android
echo "y" | gclient sync


## compiling phase
find -name src
echo "###################   start gn gen"
gn gen out/Debug --args='target_os="android" target_cpu="arm"'




echo "###################   start ninja"
ninja -C out/Debug




. build/android/envsetup.sh


ninja -C out/Debug AppRTCMobile


