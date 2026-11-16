# syntax=191497920728.dkr.starport.us-west-2.amazonaws.com/ecr-build-demo@sha256:72ab48b33f16242925f4a5c4f84cf5c9bc329cf28973d86dc3b43171fefbd940
# Image index test: a custom frontend (picked by the line above) builds this file for two linux/arm64 images (VARIANT=a and b),
# so the build pushes an image index. No RUN step, so no emulation is needed.
FROM public.ecr.aws/docker/library/busybox:1.36
ARG TARGETARCH
ARG VARIANT=none
ENV INDEX_TEST="arch=${TARGETARCH} variant=${VARIANT}"
CMD ["sh", "-c", "echo \"$INDEX_TEST machine=$(uname -m)\"; while true; do sleep 3600; done"]
