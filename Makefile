all: build push

.PHONY: build
build:
	docker build -t maxfalaleev1/php70 .

.PHONY: push
push:
	docker push maxfalaleev1/php70
