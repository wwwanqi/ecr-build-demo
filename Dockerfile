FROM public.ecr.aws/docker/library/alpine:3.20
ADD --checksum=abc https://raw.githubusercontent.com/moby/buildkit/master/README.md /x
