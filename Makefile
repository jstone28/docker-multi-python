
IMAGE_NAME ?= "jstone28/python3.7-ci"
VERSION_TAG ?= latest

build:
	docker build -t $(IMAGE_NAME):$(VERSION_TAG) --platform  linux/amd64 -f Dockerfile.ci .
.PHONY: build

push:
	docker push $(IMAGE_NAME):$(VERSION_TAG)
.PHONY: push
