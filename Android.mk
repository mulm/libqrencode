LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := qrencode

LOCAL_SRC_FILES := \
    bitstream.c \
    mask.c \
    qrenc.c \
    qrencode.c \
    qrinput.c \
    qrspec.c \
    rscode.c \
    split.c

LOCAL_C_INCLUDES += \
    external/libpng \
    external/zlib

LOCAL_STATIC_LIBRARIES += libpng libz

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

