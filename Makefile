
# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=bin/ps

all: build

build:
	@$(GOBUILD) -o $(BINARY_NAME) -v

test:
	@$(GOTEST) -v ./...

clean:
	@$(GOCLEAN)
	@rm -f $(BINARY_NAME)

run:
	@$(GOBUILD) -o $(BINARY_NAME) -v ./...
	@./$(BINARY_NAME)

deps:
	@$(GOGET) ./...

.PHONY: all build test clean run deps