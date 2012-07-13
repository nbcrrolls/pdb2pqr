# @Copyright@
# @Copyright@

PKGROOT = /var/www/html/roll-documentation/pdb2pqr/$(VERSION)

REDHAT.ROOT = $(PWD)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

SEDSPEC += \
	-e 's%@PUBDATE@%$(PUBDATE)%g' \
	-e 's%@YEAR@%$(YEAR)%g' \
	-e 's%@NAME@%$(NAME)%g' \
	-e 's%@VERSION@%$(VERSION)%g' \
	-e 's%@ROCKS_VERSION@%$(ROCKS_VERSION)%g' 

default: $(NAME).spec 

html: predoc
	jw --backend html --dsl $(PWD)/rocks.dsl#html index.sgml

pdf: predoc
	jw --backend pdf --dsl $(PWD)/rocks.dsl#print index.sgml


pretar::
	mkdir -p images

build: html pdf
	mkdir -p images

install:: build
	mkdir -p $(ROOT)/$(PKGROOT)/images
	mkdir -p $(ROOT)/$(PKGROOT)/stylesheet-images
	install -ma+r index.pdf 	$(ROOT)/$(PKGROOT)/$(NAME).pdf
	install -ma+r *.html    	$(ROOT)/$(PKGROOT)/
	install -ma+r images/*.png	$(ROOT)/$(PKGROOT)/images/
	install -ma+r stylesheet-images/{*.gif,*.png} \
		$(ROOT)/$(PKGROOT)/stylesheet-images/
	install -ma+r rocks.css $(ROOT)/$(PKGROOT)/

clean::
	rm -f index.pdf
	rm -rf *.html
