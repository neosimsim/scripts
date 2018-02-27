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
	a+ \
	a- \
	agofmt \
	license \
	cmnt \
	ucmnt \
	acme \
	lessk \
	quote

# MAN = $(BIN:=.1)

install:
	mkdir -p $(PREFIX)/bin
	cp -f $(BIN) $(PREFIX)/bin

uninstall:
	cd $(PREFIX)/bin && rm -f $(BIN)

.PHONY: install uninstall
