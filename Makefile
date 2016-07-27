SHELL=bash
PREFIX=/usr/local

all:
	[[ -x ./haveinet.sh ]] || chmod +x ./haveinet.sh

install: all uninstall
	[[ -d "$(PREFIX)/libexec/haveinet" ]] || mkdir -p "$(PREFIX)/libexec/haveinet"
	[[ -d "$(PREFIX)/bin" ]] || mkdir -p "$(PREFIX)/bin"
	cp -Rf ./*.sh ./README.md ./LICENSE "$(PREFIX)/libexec/haveinet/"
	cd "$(PREFIX)/bin"
	ln -s ../libexec/haveinet/haveinet.sh "$(PREFIX)/bin/haveinet"

uninstall:
	rm -rf "$(PREFIX)/lib/haveinet"
	rm -rf "$(PREFIX)/libexec/haveinet"
	rm -f "$(PREFIX)/bin/haveinet"
