from alpine:3.21.2
run apk add --no-cache curl kubectl kustomize bash git jq
entrypoint ["/bin/bash"]
