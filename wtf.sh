



# http://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /tmp/depot_tools
export PATH=$PATH:/tmp/depot_tools

tree /tmp/depot_tools
cd /tmp/depot_tools

./build/install-build-deps.sh
