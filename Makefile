all: build

build: docker

include .env
export

docker: ##  Builds the application for amd64 and arm64
	docker buildx build --no-cache=true --build-arg ORAS_VERSION=$(ORAS_VERSION) --platform linux/amd64,linux/arm64 -t mheers/oras:$(ORAS_VERSION) -t mheers/oras:latest --push .
