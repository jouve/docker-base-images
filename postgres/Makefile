USER={{ user }}
IMAGE=postgres
TAG=0.1

IMG_TAG = $(USER)/$(IMAGE)/$(TAG)

all: done main.tar.gz

main.tar.gz: $(wildcard 9.4/main/*)
	tar czf $@ --owner=root --group=root $?

done: Dockerfile main.tar.gz
	docker build --no-cache . -t $(IMG_TAG)
	@touch done

push:
	docker push $(IMG_TAG)

run:
	docker run -it $(IMG_TAG) bash

clean:
	rm -f done main.tar.gz
