PACKAGE     = beast2
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 5
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)_2.5.2/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No\nObsoletes: $(PACKAGE)-modules\nAutoProv:No
RPM.PREFIX  = $(PKGROOT)
