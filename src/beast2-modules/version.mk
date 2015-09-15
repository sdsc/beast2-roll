PACKAGE     = beast2
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 4
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

EXTRA_MODULE_VERSIONS = 2.1.3

RPM.EXTRAS  = AutoReq:No
RPM.EXTRAS  = Obsoletes: $(PACKAGE)-modules
