#!/bin/sh

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CINDER_XCODEPROJ="${CURRENT_DIR}/cinder.xcodeproj"

# OS X
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder -configuration Release $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder -configuration Debug $@
xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_vulkan -configuration Release $@
xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_vulkan -configuration Debug $@

# iOS
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_es2 -configuration Release -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_es2 -configuration Debug -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_es3 -configuration Release -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_es3 -configuration Debug -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_sim_es2 -configuration Release -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_sim_es2 -configuration Debug -sdk iphoneos $@
xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_vulkan -configuration Release -sdk iphoneos $@
xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_vulkan -configuration Debug -sdk iphoneos $@

#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone -configuration Release -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone -configuration Debug -sdk iphoneos $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_sim -configuration Release -sdk iphonesimulator $@
#xcrun xcodebuild -project ${CINDER_XCODEPROJ} -target cinder_iphone_sim -configuration Debug -sdk iphonesimulator $@
