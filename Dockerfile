FROM public.ecr.aws/docker/library/alpine:3.20
RUN --mount=type=bind,from=public.ecr.aws/docker/library/alpine:3.20,source=/nope,target=/x true
