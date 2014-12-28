SHELL=bash
PREFIX=/usr/local

all:
	@echo "Nothing to do."

install:
	[[ -d "$(PREFIX)/lib/haveinet" ]] || mkdir -p "$(PREFIX)/lib/haveinet"
	cp -Rf ./*.sh ./README.md ./LICENSE "$(PREFIX)/lib/haveinet/"
	cd "$(PREFIX)/bin"
	ln -s ../lib/haveinet/haveinet.sh "$(PREFIX)/bin/haveinet"

uninstall:
	rm -rf "$(PREFIX)/lib/haveinet"
	rm -f "$(PREFIX)/bin/haveinet"
