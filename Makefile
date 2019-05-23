PREFIX=$(HOME)
MANPREFIX=$(PREFIX)/share/man

BIN = \
	1 \
	2 \
	3 \
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
	fext \
	filter \
	getmod \
	git-to-dot \
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
	tex2text \
	tmux-run-selection-with \
	tmux-select-word \
	ucmnt \
	upper \
	xname \
	year \
	zap \

# MAN = $(BIN:=.1)

install: phony
	mkdir -p $(PREFIX)/bin
	cp -f $(BIN) $(PREFIX)/bin

uninstall: phony
	cd $(PREFIX)/bin && rm -f $(BIN)

TESTS=\
	tex2text_test

tests: $(TESTS)

$(TESTS): phony
	sh $@

phony:
