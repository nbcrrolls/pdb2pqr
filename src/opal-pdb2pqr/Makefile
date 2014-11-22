#
# $Id: Makefile,v 1.5 2012/07/11 00:29:42 clem Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.5  2012/07/11 00:29:42  clem
# adding pdb2pqr 1.7.1 as requested by nathan baker [commit 1]
#
# Revision 1.4  2012/02/09 01:21:17  nadya
# keep config file name consistent
#
# Revision 1.3  2012/01/25 22:16:40  nadya
# add version to config file name
#
#

PKGROOT = /opt/tomcat/deployed

REDHAT.ROOT = $(PWD)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

version.mk:
	cat version.mk.in ../version.mk ../../pdb2pqr.mk > version.mk
build::

install::
	mkdir -p $(ROOT)/$(PKGROOT)
	$(INSTALL) -m 0644 pdb2pqr_$(CURRENT).xml $(ROOT)/$(PKGROOT)
	$(INSTALL) -m 0644 pdb2pqr_$(LAST).xml $(ROOT)/$(PKGROOT)
	#need this for apache cgi setup
	mkdir -p $(ROOT)/etc/httpd/conf.d
	install -m 644 pdb2pqr.conf $(ROOT)/etc/httpd/conf.d


clean::
	rm -rf version.mk

