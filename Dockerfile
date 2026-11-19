FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt grow.py /
# Grows 1 GiB at a time until the kernel has to kill something.
RUN python3 /grow.py
