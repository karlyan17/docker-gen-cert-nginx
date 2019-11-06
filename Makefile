DOCKER_ORG:=karlyan
DOCKER_IMAGE:="docker-gen-cert-nginx"

build: package
	docker build -t $(DOCKER_ORG)/$(DOCKER_IMAGE) .

.PHONY: package
