#THEOS_DEVICE_IP = 10.0.0.130
#THEOS_DEVICE_PORT = 2222
TARGET := iphone:clang:latest
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = colorizd

colorizd_FILES = Tweak.xm Helper.swift
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei
colorizd_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += colorizdprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
