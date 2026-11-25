FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS a
RUN ln -s /l /l
FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY --from=a /l/x /x
