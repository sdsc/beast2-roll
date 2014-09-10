VERSION            = 2.1.3
PKGROOT            = /opt/beast2/$(VERSION)
NAME               = beast2
RELEASE            = 0
TARBALL_POSTFIX    = tar.gz

SRC_SUBDIR         = beast2-2.1.3

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_NAME)-$(SOURCE_VERSION)

TAR_GZ_PKGS           = $(SOURCE_PKG)
