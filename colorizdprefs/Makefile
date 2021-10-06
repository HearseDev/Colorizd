TARGET := iphone:clang:latest

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = colorizdprefs

$(BUNDLE_NAME)_FILES = $(wildcard *.m *.mm)
colorizdprefs_FRAMEWORKS = UIKit
colorizdprefs_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
colorizdprefs_INSTALL_PATH = /Library/PreferenceBundles
colorizdprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
