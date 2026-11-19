FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
RUN set -x; nproc; head -5 /proc/meminfo; grep -i swap /proc/meminfo; cat /sys/fs/cgroup/memory.max 2>/dev/null || true; cat /proc/sys/vm/overcommit_memory; df -h / | tail -1
