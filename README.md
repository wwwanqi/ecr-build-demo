# ecr-build-demo
ecr-build-demo

## Build log

Each line is one end-to-end run of ECR Build's BUILD_PLATFORM step: a push here becomes
an image in the `ecr-build-demo` ECR repository, built by the builder's Fargate task in a
single-use Lambda MicroVM sandbox.

- Verifies the executor after its files were split by concern (config/plan/step,
  process/classify/build).
