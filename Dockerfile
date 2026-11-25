FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN touch /f
COPY . /f
