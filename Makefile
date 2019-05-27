all: build push

.PHONY: build
build:
	docker build -t maxfalaleev1/php72 .

.PHONY: push
push:
	docker push maxfalaleev1/php72
