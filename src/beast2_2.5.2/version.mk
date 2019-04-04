NAME           = sdsc-beast2_$(VERSION)
VERSION        = 2.5.2
RELEASE        = 0
PKGROOT        = /opt/beast2/$(VERSION)

SRC_SUBDIR     = beast2-$(VERSION)

SOURCE_NAME    = BEAST
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME).v$(SOURCE_VERSION).Linux.$(SOURCE_SUFFIX)
SOURCE_DIR     = beast

TGZ_PKGS    = $(SOURCE_PKG)

RPM.PREFIX     = $(PKGROOT)
RPM.EXTRAS     = AutoReq:No\nObsoletes: beast2_$(VERSION)\nAutoProv:No
