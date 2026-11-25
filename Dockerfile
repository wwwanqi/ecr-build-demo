FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN --mount=type=ssh,required=true true
