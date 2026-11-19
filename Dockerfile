FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
RUN echo "failing on purpose" && exit 3
