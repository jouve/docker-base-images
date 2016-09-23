SUBDIRS=$(wildcard *)
DONE=$(SUBDIRS:%=%/done)

all:
	@echo make all does nothing
	@echo run make subdir/done

%/done: %/Makefile %/Dockerfile
	cd $(@D) && make

%Dockerfile: %Dockerfile.j2
	jinjagen.py -d cfg.yaml -i $<

%Makefile: %Makefile.j2
	jinjagen.py -d cfg.yaml -i $<

clean:
	for d in $(SUBDIRS); do cd $d && make clean; done
	rm -f */Makefile */Dockerfile

