MODULES = \
	mongo-cxx-driver-legacy-0.0-26compat-2.6.7 \
	mongodb-2.6.7

all: rpm

rpm-dir:
	@rm -rf `pwd`/RPMBUILD; \
	mkdir -p `pwd`/RPMBUILD/{DIST,BUILD,SOURCES,RPMS,SRPMS,SPECS}

rpm: 
	for mod in ${MODULES}; do rpmbuild -ta --define "%_topdir `pwd`/RPMBUILD" `pwd`/$${mod}.tar.gz; done






