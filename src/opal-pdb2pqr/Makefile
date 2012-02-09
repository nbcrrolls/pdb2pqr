#
# $Id: Makefile,v 1.4 2012/02/09 01:21:17 nadya Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.4  2012/02/09 01:21:17  nadya
# keep config file name consistent
#
# Revision 1.3  2012/01/25 22:16:40  nadya
# add version to config file name
#
#

PKGROOT = /opt/opal/deployed

REDHAT.ROOT = $(PWD)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

version.mk:
	cat version.mk.in ../version.mk > version.mk
build::

install::
	mkdir -p $(ROOT)/$(PKGROOT)
	$(INSTALL)  -m 0644  pdb2pqr_$(VERSION).xml $(ROOT)/$(PKGROOT)

clean::
	rm -rf version.mk

