default:
	@echo "Make the ctl docker image"

build:
	@docker build -t bryandollery/ctl:latest .

release:
	@docker push bryandollery/ctl:latest 


