default:
	@echo "Make the ctl docker image"

hello:
	@echo "Build and relese version $(VERSION)"

all: hello build release

build:
	@docker build -t "bryandollery/ctl:$(VERSION)" .

release:
	@echo "Releasing version $(VERSION)"
	@docker push "bryandollery/ctl:$(VERSION)"

