# syntax=191497920728.dkr.starport.us-west-2.amazonaws.com/ecr-build-demo@sha256:d7f1b6d38d78c32bb8940a5119b8375536729ba112d870b42394ae804e34d947
# Image index test: a custom frontend (picked by the line above) builds this file for linux/amd64 and linux/arm64,
# so the build pushes an image index. No RUN step, so no emulation is needed.
FROM public.ecr.aws/docker/library/busybox:1.36
ARG TARGETARCH
ARG VARIANT=none
ENV INDEX_TEST="arch=${TARGETARCH} variant=${VARIANT}"
CMD ["sh", "-c", "echo \"$INDEX_TEST machine=$(uname -m)\"; while true; do sleep 3600; done"]
