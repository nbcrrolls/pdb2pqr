# @Copyright@
# @Copyright@

REDHAT.ROOT = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

version.mk:
	cat ../version.mk version.mk.in > version.mk

PY.PATH = /opt/python/bin/$(PYTHONVER)


build:
	tar xzf  $(ARCHIVENAME)-$(VERSION).tar.gz 
	(\
	    cd $(ARCHIVENAME)-$(VERSION);   \
	    $(PY.PATH) setup.py build;      \
	)

install::
	(\
	    cd $(ARCHIVENAME)-$(VERSION);   \
	    $(PY.PATH) setup.py $@ --root=$(ROOT)/; \
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
