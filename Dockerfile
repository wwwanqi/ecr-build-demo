FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
# A 300,000-byte line (over CloudWatch Logs' 256 KiB event limit, under the agent's 1 MiB cap),
# then a 3,000,000-byte line (over both), each ending in a marker so a cut is visible.
RUN head -c 300000 /dev/zero | tr '\0' a; echo END-OF-300K
RUN head -c 3000000 /dev/zero | tr '\0' b; echo END-OF-3M
