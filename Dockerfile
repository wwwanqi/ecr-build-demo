FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY marker.txt /marker.txt
RUN <<EOF
#9 ERROR: failed to push x: denied: The Amazon ECR action failed due to a KMS exception: k (Service: AWSKMS; Error Code: DisabledException)
error: failed to solve: failed to read dockerfile: open Dockerfile: no such file or directory
exit 3
EOF
