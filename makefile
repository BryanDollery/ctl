default:
	@echo "Make the ctl docker image"

hello:
	@echo "Ctl: Build and relese version $(VERSION)"

all: hello build release

build:
	@docker build -t "bryandollery/ctl:$(VERSION)" .
	@docker tag "bryandollery/ctl:$(VERSION)" bryandollery/ctl:latest
	@rm -f version &> /dev/null
	@echo "$(VERSION)" > version
	@git add version 

release:
	@echo "Releasing version $(VERSION)"
	@docker push "bryandollery/ctl:$(VERSION)"

test:
	@docker run -it --rm  bryandollery/ctl

save:
	@exec ./commit.sh
