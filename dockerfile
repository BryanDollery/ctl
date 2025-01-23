from alpine:3.21.2
run apk add --no-cache curl kubectl kustomize bash git jq yq openssh helm
copy --chmod=777 log.sh /
entrypoint ["/bin/bash"]
