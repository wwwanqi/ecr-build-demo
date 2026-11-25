FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS a
FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY --from=a /nope /x
