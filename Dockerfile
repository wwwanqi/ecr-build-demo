FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
# Long enough to force a builder redeploy mid-build.
RUN sleep 240
