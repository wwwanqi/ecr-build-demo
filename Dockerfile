FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN dd if=/dev/zero of=/fill bs=1M status=none; echo filled
