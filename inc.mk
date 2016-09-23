USER=localhost

IMG_TAG=$(USER)/$(IMAGE):$(TAG)

all: done

done: Dockerfile $(OPT_DEPS)
	docker build --no-cache . -t $(IMG_TAG)
	@touch done

Dockerfile: Dockerfile.j2
	sh -c "echo \"user: $(USER)\" | jinjagen.py -d - -o $@ $<"

push:
	docker push $(IMG_TAG)

run:
	docker run -it $(IMG_TAG) bash

clean:
	rm -rf done Dockerfile $(OPT_CLEAN)

