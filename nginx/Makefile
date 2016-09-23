USER={{ user }}
IMAGE=nginx
TAG=0.1

IMG_TAG = $(IMG_TAG)

all: done

done: Dockerfile nginx.tar.gz
	docker build --no-cache . -t $(IMG_TAG)
	touch done

nginx.tar.gz: $(wildcard nginx/*)
	tar czf $@ --owner=root --group=root -C $(<D) $(?:nginx/%=%)

push:
	docker push $(IMG_TAG)

run:
	docker run -it $(IMG_TAG) bash

clean:
	rm -f done nginx.tar.gz
