USER=c0deaddict
IMAGE=rs-backup-client
VERSION=$(shell cat version)
REGISTRY=registry.codeaddict.org

NAME=$(USER)/$(IMAGE):$(VERSION)

.PHONY: all build release

all: build

build:
	docker build -t $(NAME) .

release: build
	docker tag -f $(NAME) $(REGISTRY)/$(NAME)
	docker push $(REGISTRY)/$(NAME)
