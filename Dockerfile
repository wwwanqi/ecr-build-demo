FROM public.ecr.aws/docker/library/alpine:3.20
RUN rm /etc/passwd
USER foo
RUN id
