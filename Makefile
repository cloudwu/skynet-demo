.PHONY: all skynet clean

PLAT ?= linux

all : skynet

skynet :
	cd skynet && $(MAKE) $(PLAT)

clean :
	cd skynet && $(MAKE) clean
	