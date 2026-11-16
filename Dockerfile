# syntax=docker/dockerfile:1
# Frontend allowlist control: the official frontend must still be allowed.
FROM public.ecr.aws/docker/library/busybox:1.36
CMD ["sh", "-c", "echo allowlist control; uname -m"]
