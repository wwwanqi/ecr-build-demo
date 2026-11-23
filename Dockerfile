FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY --from=nostage /x /x
