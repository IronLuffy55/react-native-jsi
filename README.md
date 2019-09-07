Followed medium tutorial: https://medium.com/@christian.falch/https-medium-com-christian-falch-react-native-jsi-challenge-1201a69c8fbf

## Changes I had to make:
1. Rename AppDelegate.m to AppDelegate.mm to fix "cassert. file not found"
2. Changed `xcode->build settings->Apple Clang Language C++->C++ language dialog` to `c++14`
3. Updated `xcode->build settings->Header Search Paths` to fix `folly/dynamic.h file not found`. See screenshot1
4. Updated `xcode->build settings->Apple Clang Custom Compiler Flags`  ti fix `folly/folly-config.h not found`. See screenshot 2
