IMAGE=nginx
TAG=0.1

OPT_DEPS=nginx.tar.gz
OPT_CLEAN=nginx.tar.gz

include ../inc.mk

nginx.tar.gz: $(wildcard nginx/*)
	tar czf $@ --owner=root --group=root -C $(<D) $(?:nginx/%=%)

