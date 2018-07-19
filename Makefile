PREFIX=$(HOME)
MANPREFIX=$(PREFIX)/share/man

BIN = \
	a \
	a+ \
	a- \
	agofmt \
	bat \
	cmnt \
	dpass \
	hi \
	keystore \
	lessk \
	license \
	lower \
	mkgit \
	open \
	passgen \
	quote \
	remtrail \
	splitcammel \
	tmux-run-selection-with \
	tmux-select-word \
	ucmnt \
	upper \
	xname \

# MAN = $(BIN:=.1)

install:
	mkdir -p $(PREFIX)/bin
	cp -f $(BIN) $(PREFIX)/bin

uninstall:
	cd $(PREFIX)/bin && rm -f $(BIN)

.PHONY: install uninstall
