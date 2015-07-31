USER=c0deaddict
IMAGE=rs-backup-client
VERSION=$(cat version)
REGISTRY=registry.codeaddict.org

.PHONY: all build release

all: build

build:
	docker build -t $(USER)/$(IMAGE):$(VERSION) .

release: build
	docker tag -f $(REGISTRY)/$(USER)/$(IMAGE):$(VERSION)
	docker push $(REGISTRY)/$(USER)/$(IMAGE):$(VERSION)
