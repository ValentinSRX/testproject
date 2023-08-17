SHELL=/bin/bash

DOCKER_IMAGE := mlfs
VERSION := 0.1.0

echo:
	echo "hello there"

build-image:
	docker build . -f ./Dockerfile -t $(DOCKER_IMAGE):$(VERSION)


run-container:
	docker run -it --rm --gpus all -v /mnt/c/myLinux/MLFS:/workspace/MLFS $(DOCKER_IMAGE) bash