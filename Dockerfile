# A real image for the ECR Build end-to-end test.
#
# Unlike Dockerfile.scratch, this pulls a base from a public registry and runs build steps, so
# a build exercises three things that FROM scratch never touches: the FROM pull through the
# agent's credsStore: ecr-login (anonymous against a public registry, which the design still
# lists as an open question), the sandbox's internet egress, and a push of real layers rather
# than a 500-byte manifest.
#
# The base is multi-arch, and the sandbox builds linux/arm64 only, so this resolves to arm64.
FROM public.ecr.aws/amazonlinux/amazonlinux:2023

# A package install: a layer with real content, and a RUN step that needs working egress and
# DNS inside the microVM.
RUN dnf -y --setopt=install_weak_deps=False install tar gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf /var/log/dnf*

WORKDIR /app
COPY README.md /app/README.md

# Make the image self-describing, so a pull proves which architecture actually built it.
RUN set -eux; \
    uname -m > /app/arch.txt; \
    cat /app/arch.txt

CMD ["/bin/sh", "-c", "echo \"ecr-build-demo built on $(cat /app/arch.txt)\""]
