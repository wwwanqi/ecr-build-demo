FROM public.ecr.aws/docker/library/alpine:3.20
RUN --mount=type=bind,source=nope,target=/x true
