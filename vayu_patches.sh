#!/bin/bash
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/framesequence/samples/FrameSequenceSamples/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/common/tests/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/framesequence/jni/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/calendar/tests/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/camera2/portability/tests/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/camera2/utils/tests/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/common/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/framesequence/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/calendar/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/camera2/portability/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/camera2/public/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/ex/camera2/utils/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/chips/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/chips/tests/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/chips/sample/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/timezonepicker/Android.bp
rm $ANDROID_ROOT/packages/apps/Etar/external/colorpicker/Android.bp

echo $1
rootdirectory="$ANDROID_ROOT/"
# ---------------------------------

dirs="build/soong hybris/mer-kernel-check rpm/dhd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/vayu_patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
