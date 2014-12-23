# Makefile
#
# @Copyright@
# @Copyright@
#

REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(REDHAT.ROOT)/pdb2pqr.mk

MODULEFILES = pdb2pqr-current.module pdb2pqr-current.version  \
              pdb2pqr-last.module pdb2pqr-last.version

CURRENTSED = \
        -e s%@VERSION@%$(CURRENT)%g  

LASTSED = \
        -e s%@VERSION@%$(LAST)%g  

pdb2pqr-current.module: pdb2pqr.module.in
	$(SED)  $(CURRENTSED) $^ > $@

pdb2pqr-current.version: pdb2pqr.version.in
	$(SED)  $(CURRENTSED) $^ > $@

pdb2pqr-last.module: pdb2pqr.module.in
	$(SED)  $(LASTSED) $^ > $@

pdb2pqr-last.version: pdb2pqr.version.in
	$(SED)  $(LASTSED) $^ > $@

build: $(MODULEFILES)

install:: 
	mkdir -p -m 755 $(ROOT)/$(PKGROOT)
	cp pdb2pqr-current.module $(ROOT)/$(PKGROOT)/$(PACKAGE)$(CURRENT); \
	cp pdb2pqr-current.version $(ROOT)/$(PKGROOT)/.version.$(CURRENT); \
	cp pdb2pqr-last.module $(ROOT)/$(PKGROOT)/$(PACKAGE)$(LAST); \
	cp pdb2pqr-last.version $(ROOT)/$(PKGROOT)/.version.$(LAST); \

clean::
	rm -rf $(PACKAGE)*module*spec*
	rm -rf $(MODULEFILES)
