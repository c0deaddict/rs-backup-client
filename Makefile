NAME=codeaddict/rs-backup-client
VERSION=0.1

.PHONY: all build

all: build

build:
	docker build -t $(NAME):$(VERSION) .

latest: build
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

release: latest
	docker push $(NAME)
