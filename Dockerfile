FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
# Runs past the 45-minute build limit.
RUN sleep 2820
