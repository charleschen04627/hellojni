#!/usr/bin/env bash

rm -rf app/src/main/obj
 
rm -f app/src/main/jniLibs/arm64-v8a/libhello_jni.so
rm -f app/src/main/jniLibs/armeabi-v7a/libhello_jni.so
rm -f app/src/main/jniLibs/x86/libhello_jni.so
rm -f app/src/main/jniLibs/x86_64/libhello_jni.so

ndk-build NDK_PROJECT_PATH=app/src/main NDK_APPLICATION_MK=app/src/main/jni/Application.mk

mv app/src/main/libs/arm64-v8a/libhello_jni.so   app/src/main/jniLibs/arm64-v8a/
mv app/src/main/libs/armeabi-v7a/libhello_jni.so app/src/main/jniLibs/armeabi-v7a/
mv app/src/main/libs/x86/libhello_jni.so         app/src/main/jniLibs/x86/
mv app/src/main/libs/x86_64/libhello_jni.so      app/src/main/jniLibs/x86_64/
