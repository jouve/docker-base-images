IMAGE=postgres
TAG=0.1

OPT_DEPS=main.tar.gz
OPT_CLEAN=main.tar.gz

include ../inc.mk

main.tar.gz: $(wildcard 9.4/main/*)
	tar czf $@ --owner=root --group=root $?

