#!/bin/bash

# Build torrest for all platforms

# Define the platforms
ANDROID_PLATFORMS="android-arm64 android-x64 android-x86"
DARWIN_PLATFORMS="darwin-x64"
LINUX_PLATFORMS="linux-arm64 linux-armv7 linux-x64 linux-x86"
WINDOWS_PLATFORMS="windows-x64 windows-x86"

run_make() {
    local platform=$1

    make -f lib/docker/Makefile libtorrest-$platform
}

apply_lib_diff() {
    cd lib
    git apply ../lib-patch.diff
    cd ..
}

run_for_platforms() {
    for platform in "$@"; do
        run_make "$platform"
    done
}

apply_lib_diff

run_for_platforms $ANDROID_PLATFORMS
run_for_platforms $LINUX_PLATFORMS
run_for_platforms $DARWIN_PLATFORMS
run_for_platforms $WINDOWS_PLATFORMS

move_to_assets() {
    local extension=""
    case "$1" in
        android-*|linux-*)
            extension="so"
            ;;
        darwin-*)
            extension="dylib"
            ;;
        windows-*)
            extension="dll"
            ;;
        *)
            echo "Unknown platform: $1"
            return 1
            ;;
    esac

    for platform in "$@"; do
        local target_file="../../../assets/torrest/libanitorrest-$platform.$extension"
        echo "Copying libanitorrest-$platform.$extension to $target_file"

        cp "build/$platform/libanitorrest.$extension" "$target_file"
    done
}

move_to_assets $ANDROID_PLATFORMS
move_to_assets $LINUX_PLATFORMS
move_to_assets $DARWIN_PLATFORMS
move_to_assets $WINDOWS_PLATFORMS