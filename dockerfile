from alpine:3.21.2
run apk add --no-cache curl kubectl kustomize bash git jq openssh
copy --chmod=777 color.sh /
entrypoint ["/bin/bash"]
