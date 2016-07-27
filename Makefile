SHELL=bash
PREFIX=/usr/local

all:
	@echo "Nothing to do."

install: uninstall
	[[ -d "$(PREFIX)/libexec/haveinet" ]] || mkdir -p "$(PREFIX)/libexec/haveinet"
	cp -Rf ./*.sh ./README.md ./LICENSE "$(PREFIX)/libexec/haveinet/"
	cd "$(PREFIX)/bin"
	ln -s ../libexec/haveinet/haveinet.sh "$(PREFIX)/bin/haveinet"

uninstall:
	rm -rf "$(PREFIX)/lib/haveinet"
	rm -rf "$(PREFIX)/libexec/haveinet"
	rm -f "$(PREFIX)/bin/haveinet"
