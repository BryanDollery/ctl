default:
	@echo "Make the ctl docker image"

hello:
	@echo "Build and relese version $(VERSION)"

all: hello build release save

build:
	@docker build -t "bryandollery/ctl:$(VERSION)" .
	@docker tag "bryandollery/ctl:$(VERSION)" bryandollery/ctl:latest

release:
	@echo "Releasing version $(VERSION)"
	@docker push "bryandollery/ctl:$(VERSION)"

test:
	@docker run -it --rm  bryandollery/ctl

save:
	@git add .
	@git commit -m "Release version $(VERSION).\n$(commit "$(git show HEAD)")"
