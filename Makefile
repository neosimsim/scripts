PREFIX=$(HOME)
MANPREFIX=$(PREFIX)/share/man

BIN = \
	a \
	a+ \
	a- \
	agofmt \
	Ahfmt \
	bat \
	bundle \
	cmnt \
	codespell \
	dpass \
	filter \
	getmod \
	hi \
	hsinit \
	keystore \
	lessk \
	license \
	lower \
	mkgit \
	open \
	overwrite \
	passgen \
	pick \
	quote \
	remtrail \
	splitcammel \
	tmux-run-selection-with \
	tmux-select-word \
	ucmnt \
	upper \
	xname \
	year \
	zap \

# MAN = $(BIN:=.1)

install:
	mkdir -p $(PREFIX)/bin
	cp -f $(BIN) $(PREFIX)/bin

uninstall:
	cd $(PREFIX)/bin && rm -f $(BIN)

.PHONY: install uninstall
