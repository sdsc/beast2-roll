NAME       = sdsc-beast2-roll-test
VERSION    = 1
RELEASE    = 2
PKGROOT    = /root/rolltests

RPM.EXTRAS = AutoReq:No
RPM.EXTRAS = Obsoletes:beast2-roll-test
RPM.FILES  = $(PKGROOT)/beast2.t
