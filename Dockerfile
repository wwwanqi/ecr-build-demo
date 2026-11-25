FROM public.ecr.aws/docker/library/alpine:3.20 AS a
FROM public.ecr.aws/docker/library/alpine:3.20
ARG S=a
COPY --from=${S} /etc/hostname /x
