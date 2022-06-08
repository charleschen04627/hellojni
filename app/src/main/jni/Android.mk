
LOCAL_PATH := $(call my-dir)

#此变量指向的构建脚本用于取消定义下文“开发者定义的变量”部分中列出的几乎所有 LOCAL_XXX 变量。在描述新模块之前，请使用此变量来包含此脚本。使用它的语法为：
include $(CLEAR_VARS)

#LOCAL_MODULE 变量存储您要构建的模块的名称。请在应用的每个模块中使用一次此变量
LOCAL_MODULE := hello_jni

#列举源文件，以空格分隔多个文件
#LOCAL_SRC_FILES 变量必须包含要构建到模块中的 C 和/或 C++ 源文件列表
LOCAL_SRC_FILES := hellojni.cpp

#BUILD_SHARED_LIBRARY 变量指向一个 GNU Makefile 脚本，该脚本会收集您自最近 include 以来在 LOCAL_XXX 变量中定义的所有信息。此脚本确定要构建的内容以及构建方式。
include $(BUILD_SHARED_LIBRARY)