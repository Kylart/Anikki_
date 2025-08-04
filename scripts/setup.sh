#!/bin/bash

set -e

available_platforms=("android-arm64" "android-x86" "android-x64" "ios-arm64" "ios-x64" "darwin-x64" "darwin-arm64" "linux-x64" "linux-arm64" "linux-armv7" "linux-x86")

if [ -z "$1" ]; then
  echo "Usage: $0 <platform>"
  echo "Available platforms: ${available_platforms[*]}"
  exit 1
fi

platform="$1"
short_platform=""

# Determine extension based on platform
case "$platform" in
  android-*)
    extension="so"
    short_platform="android"
    ;;
  ios-*)
    extension="dylib"
    platform="darwin"
    short_platform="ios"
    ;;
  darwin-*)
    extension="dylib"
    short_platform="macos"
    ;;
  linux-*)
    extension="so"
    short_platform="linux"
    ;;
  *)
    echo "Unknown platform: $platform"
    echo "Supported platforms: ${available_platforms[*]}"
    exit 2
    ;;
esac

asset_path="assets/torrest/libanitorrest-${platform}.${extension}"

pubspec_file="../pubspec.yaml"

# Add asset to pubspec.yaml if not already present
if ! grep -q "$asset_path" "$pubspec_file"; then
  # Find the line number of 'assets:' in pubspec.yaml
  assets_line=$(grep -n 'assets:' "$pubspec_file" | cut -d: -f1 | head -n1)
  if [ -z "$assets_line" ]; then
    echo "'assets:' section not found in $pubspec_file"
    exit 3
  fi

  # Find the indentation used for assets
  indent=$(grep 'assets:' "$pubspec_file" | sed -E 's/( *)assets:.*/\1/')

  # Insert the asset path after the 'assets:' line
  awk -v line=$assets_line -v indent="$indent" -v asset="$asset_path" '
    NR==line { print; print indent "  - " asset; next }
    { print }
  ' "$pubspec_file" > "${pubspec_file}.tmp" && mv "${pubspec_file}.tmp" "$pubspec_file"
fi
