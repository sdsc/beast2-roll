NAME       = sdsc-beast2-roll-test
VERSION    = 1
RELEASE    = 2
PKGROOT    = /root/rolltests

<<<<<<< Updated upstream
RPM.EXTRAS = AutoReq:No
RPM.EXTRAS = Obsoletes:beast2-roll-test
RPM.FILES  = $(PKGROOT)/beast2.t
=======
RPM.EXTRAS = AutoReq:No\nAutoProv:No\nObsoletes:beast2-roll-test
>>>>>>> Stashed changes
