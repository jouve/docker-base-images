all: $(wildcard */Makefile.j2)
	echo jinjagen -d cfg.yaml -i $?
