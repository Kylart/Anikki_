# How to build
You need to build libraries on each platform.

## Build torrest first
### Dependencies
> This does not work with CMake version 4 or later

> It works fine with latest version 3 of Cmake (3.31.8)

If you are on MacOS, update the `nproc` mentions in the `install_dependencies.sh` script to `sysctl -n hw.logicalcpu`

```shell
cd src/lib
./scripts/install_dependencies.sh --help
```

### (Optional) Build libtorrest
```shell
cmake -B cmake-build -DCMAKE_BUILD_TYPE=Debug -Dbuild_library=ON
cmake --build cmake-build --target torrest -- -j "$(nproc)"
```

## Build libanitorrest
```shell
mkdir build && cd build
cmake ../src
cmake --build
```
