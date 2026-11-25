FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY --from=5 /x /x
