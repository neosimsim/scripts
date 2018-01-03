PREFIX=$(HOME)/.local
MANPREFIX=$(PREFIX)/share/man

BIN = mkgit \
	remtrail \
	bat \
	hi \
	xname \
	keystore \
	passgen \
	dpass \
	acme

# MAN = $(BIN:=.1)

install:
	mkdir -p $(PREFIX)/bin
	cp $(BIN) $(PREFIX)/bin

uninstall:
	cd $(PREFIX)/bin && rm -f $(BIN)

.PHONY: install uninstall
