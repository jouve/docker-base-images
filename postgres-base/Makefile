USER={{ user }}
IMAGE=postgres-base
TAG=0.1

IMG_TAG = $(USER)/$(IMAGE)/$(TAG)

all: done

done: Dockerfile
	docker build --no-cache . -t $(IMG_TAG)
	@touch done

push:
	docker push $(IMG_TAG)

run:
	docker run -it $(IMG_TAG) bash

clean:
	rm -f done
