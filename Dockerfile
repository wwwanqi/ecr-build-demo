FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN --mount=type=bind,source=nope,target=/m true
