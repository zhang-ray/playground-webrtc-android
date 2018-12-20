# http://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git 
export PATH=$PATH:$PWD/depot_tools



# https://webrtc.org/native-code/android/
cd ~/
echo "###################   start fetching webrtc_android"
fetch --nohooks webrtc_android
echo "y" | gclient sync


## compiling phase
#find -name src
echo "###################   start gn gen"
cd ./src/ || exit 1
gn gen out/Debug --args='target_os="android" target_cpu="arm"'




echo "###################   start ninja"
ninja -C out/Debug




. build/android/envsetup.sh


ninja -C out/Debug AppRTCMobile


