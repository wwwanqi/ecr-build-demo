FROM public.ecr.aws/docker/library/alpine:3.20 AS a
COPY --from=b /etc/hostname /x
FROM public.ecr.aws/docker/library/alpine:3.20 AS b
COPY --from=a /etc/hostname /y
