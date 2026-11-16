# Platform test: no custom frontend. The build requests linux/arm64, but the base is pinned to
# linux/amd64, so this checks what single manifest the build pushes and what its config says.
FROM --platform=linux/amd64 public.ecr.aws/docker/library/busybox:1.36
ARG TARGETARCH
ENV INDEX_TEST="targetarch=${TARGETARCH}"
CMD ["sh", "-c", "echo \"$INDEX_TEST machine=$(uname -m)\"; while true; do sleep 3600; done"]
