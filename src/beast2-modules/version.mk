PACKAGE     = beast2
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 3
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)_2.1.3/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
