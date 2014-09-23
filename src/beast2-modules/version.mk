NAME        = beast2-modules
RELEASE     = 1
PKGROOT     = /opt/modulefiles/applications/beast2

VERSION_SRC = $(REDHAT.ROOT)/src/beast2_2.1.3/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
