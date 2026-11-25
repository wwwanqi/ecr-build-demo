FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN --mount=type=secret,id=tok,required=true cat /run/secrets/tok
