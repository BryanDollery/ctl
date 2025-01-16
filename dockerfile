from alpine:3.21.2
run apk add --no-cache curl kubectl kustomize bash git jq
copy color.sh /
run chmod a+rwx /color.sh
entrypoint ["/bin/bash"]
