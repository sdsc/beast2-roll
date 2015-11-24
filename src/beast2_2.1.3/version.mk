NAME           = sdsc-beast2_$(VERSION)
VERSION        = 2.1.3
RELEASE        = 1
PKGROOT        = /opt/beast2/$(VERSION)

SRC_SUBDIR     = beast2-2.1.3

SOURCE_NAME    = beast2
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_NAME)-$(SOURCE_VERSION)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
RPM.EXTRAS     = Obsoletes: beast2_$(VERSION) 
