UNAME := $(shell uname -s)

ifeq ($(UNAME),Darwin)
    MAKEFILE=Makefile.osx
else
    MAKEFILE=Makefile
endif

all:
	cd src && make -f$(MAKEFILE)
	cp src/mysql_module.so .

clean:
	cd src && make -f$(MAKEFILE) clean

realclean:
	cd src && make -f$(MAKEFILE) realclean

install:
	cd src && make -f$(MAKEFILE) install

uninstall:
	cd src && make -f$(MAKEFILE) uninstall
