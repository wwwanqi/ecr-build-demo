FROM public.ecr.aws/docker/library/alpine:3.20
RUN echo garbage > /etc/passwd
USER foo
RUN id
