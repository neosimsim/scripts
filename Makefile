include config.mk

install:
	cp $(BINS) $(PREFIX)/bin

uninstall:
	cd $(PREFIX)/bin
	rm -f $(BINS)

.PHONY: install uninstall
