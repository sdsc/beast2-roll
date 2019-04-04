NAME       = sdsc-beast2-roll-test
VERSION    = 1
RELEASE    = 3
PKGROOT    = /root/rolltests

RPM.FILES  = $(PKGROOT)/beast2.t
RPM.EXTRAS = AutoReq:No\nAutoProv:No\nObsoletes:beast2-roll-test
