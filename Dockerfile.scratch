# Minimal image for the ECR Build BUILD_PLATFORM demo.
#
# FROM scratch on purpose: the build reads no registry at all, so the first
# end-to-end run exercises only the Git proxy fetch, the BuildKit build and the
# push by digest. The base-image pull path (credsStore: ecr-login against a
# public registry) is still an open question in the design and is covered
# separately by Dockerfile.al2023.
FROM scratch
COPY README.md /README.md
