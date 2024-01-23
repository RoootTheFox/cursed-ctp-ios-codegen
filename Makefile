TARGET := iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = uicolorutil

uicolorutil_FILES = main.m
uicolorutil_CFLAGS = -fobjc-arc
uicolorutil_CODESIGN_FLAGS = -Sentitlements.plist
uicolorutil_INSTALL_PATH = /usr/local/bin
uicolorutil_PRIVATE_FRAMEWORKS = UIKitServices UIKitCore

include $(THEOS_MAKE_PATH)/tool.mk
SUBPROJECTS += ctpios-gen
include $(THEOS_MAKE_PATH)/aggregate.mk
