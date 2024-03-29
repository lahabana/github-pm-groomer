GOOS := $(shell go env GOOS)
GOARCH := $(shell go env GOARCH)

.PHONY: check
check:
	go mod tidy
	go vet ./...
	go fmt ./...

.PHONY: test
test:
	go test ./...
