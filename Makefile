PREFIX=$(HOME)
MANPREFIX=$(PREFIX)/share/man

BIN = \
	1 \
	2 \
	3 \
	a \
	a+ \
	a- \
	agda \
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
	rotatekb \
	splitcammel \
	tmux-run-selection-with \
	tmux-select-word \
	ucmnt \
	uni \
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
	  test_uni

test: $(TESTS)

test_uni: phony
	./uni < uni_test_in | diff - uni_test_out


phony:
