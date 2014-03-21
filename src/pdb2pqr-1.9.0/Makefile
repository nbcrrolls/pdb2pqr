# @Copyright@
# @Copyright@

PKGROOT = /opt/pdb2pqr_$(VERSION)
GIT = https://github.com/Electrostatics/apbs-pdb2pqr/releases/download

REDHAT.ROOT = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

getsrc:
	wget $(GIT)/pdb2pqr-$(VERSION)/pdb2pqr-src-$(VERSION).tar.gz -O pdb2pqr-$(VERSION).tar.gz

version.mk:
	cat version.mk.in ../version.mk > version.mk

build: 
	tar zxvf $(PACKAGENAME)-$(VERSION).tar.gz
	(                                                                       \
		cd $(PACKAGENAME)-$(VERSION);                                   \
		$(PYTHONROLL) scons/scons.py                                    \
			PREFIX=$(ROOT)/$(PKGROOT)                               \
			URL=http://rollhost/pdb2pqr_$(VERSION)/                 \
			APBS=/opt/apbs/bin/apbs                                 \
			OPAL=http://rollhost/opal2/services/pdb2pqr_$(VERSION)  \
			APBS_OPAL=http://rollhost/opal2/services/apbs_$(APBS)   \
		$(PYTHONROLL) scons/scons.py test                               \
		$(PYTHONROLL) scons/scons.py advtest                            \
        )

install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(                                                                       \
		cd $(PACKAGENAME)-$(VERSION);                                   \
		$(PYTHONROLL) scons/scons.py install PREFIX=$(ROOT)/$(PKGROOT)  \
	)

	mkdir -p $(ROOT)/var/www/html
	ln -s $(PKGROOT) $(ROOT)/var/www/html/pdb2pqr_$(VERSION)


clean::
	rm -rf $(PACKAGENAME)-$(VERSION)
	rm -rf version.mk
