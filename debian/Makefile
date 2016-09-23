USER=registry.coolstory.fr/talou
IMAGE=debian
TAG=16.09.22

IMG_TAG=$(USER)/$(IMAGE):$(TAG)

all: done

done: Dockerfile
	docker build --no-cache . -t $(IMG_TAG)
	@touch done

push:
	docker push $(IMG_TAG)

run:
	docker run -it $(IMG_TAG) bash
	@echo

clean:
	rm -f done
