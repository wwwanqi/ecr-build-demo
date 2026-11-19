FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
# Keeps builder A busy while the duplicate reaches builder B.
RUN sleep 120
