PREFIX=/usr/local

all:
	@echo Nothing to do.

install: uninstall
	[[ -d "$(PREFIX)/lib/haveinet" ]] || mkdir -p "$(PREFIX)/lib/haveinet"
	cp -Rf ./* "$(PREFIX)/lib/haveinet/"
	cd "$(PREFIX)/bin"
	ln -s ../lib/haveinet/haveinet.sh "$(PREFIX)/bin/haveinet"

uninstall:
	rm -rf "$(PREFIX)/lib/haveinet"
	rm -f "$(PREFIX)/bin/haveinet"
