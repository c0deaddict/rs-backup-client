NAME=c0deaddict/rs-backup-client
VERSION=0.1
REGISTRY=registry.codeaddict.org

.PHONY: all build

all: build

build:
	docker build -t $(NAME):$(VERSION) .

latest: build
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

release: latest
	docker tag -f $(REGISTRY)/$(NAME):$(VERSION)
	docker push $(REGISTRY)/$(NAME):$(VERSION)
