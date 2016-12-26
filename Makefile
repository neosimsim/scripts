include config.mk

install:
	$(foreach BIN, $(BINS), cp $(PWD)/$(BIN) $(PREFIX)/$(BIN))

uninstall:
	$(foreach BIN, $(BINS), rm -f $(PREFIX)/$(BIN))

.PHONY: install uninstall
