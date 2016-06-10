MAKEFLAGS += --no-print-directory

all:
	@cd src; $(MAKE) clean static
	@cd examples; $(MAKE) clean all

shared:
	@cd src; $(MAKE) shared

test:
	@cd examples; $(MAKE) test

install:
	@cd src; $(MAKE) install
	mkdir -p /usr/local/include/zfp
	cp inc/*.h /usr/local/include/zfp/

clean:
	@cd src; $(MAKE) clean
	@cd examples; $(MAKE) clean

