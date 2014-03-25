# @Copyright@
# @Copyright@


-include $(ROLLSROOT)/etc/Rolls.mk
include Rolls.mk
include pdb2pqr.mk

default: 
	for i in `ls nodes/*.xml.in`; do \
	    export o=`echo $$i | sed 's/\.in//'`; \
	    cp $$i $$o; \
	    sed -i "s/PDB2PQR_CURRENT/$(CURRENT)/g" $$o; \
	    sed -i "s/PDB2PQR_LAST/$(LAST)/g" $$o; \
	done
	$(MAKE) roll

cvsclean:: clean
	for i in `ls nodes/*.xml`; do \
	    export o=`echo $$i | sed 's/\.in//'`; \
	    rm -rf  $$o; \
	done

