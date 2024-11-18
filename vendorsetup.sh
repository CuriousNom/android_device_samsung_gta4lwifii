#git clone --depth=1 https://github.com/Matrixx-Devices/android_device_samsung_gta4l-common device/samsung/gta4l-common
#git clone --depth=1 https://github.com/Matrixx-Devices/android_vendor_samsung_gta4l-common vendor/samsung/gta4l-common
#git clone --depth=1 https://github.com/Matrixx-Devices/android_vendor_samsung_gta4lwifi vendor/samsung/gta4lwifi
#git clone --depth=1 https://github.com/Matrixx-Devices/android_kernel_samsung_gta4l kernel/samsung/gta4l
#git clone --depth=1 https://github.com/Matrixx-Devices/android_hardware_samsung hardware/tmp
#cp -r hardware/tmp/* hardware/samsung/
#rm -rf hardware/tmp

mkdir prebuilts/clang/host/linux-x86/clang-neutron; cd prebuilts/clang/host/linux-x86/clang-neutron;
curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman";
chmod +x antman; ./antman -S --noaxel; ./antman --patch=glibc --noaxel; cd ../../../../../;sed -i '/CLANG_EXTRA_FLAGS += --hip-path=\/dev\/null/d' vendor/lineage/build/tasks/kernel.mk;
