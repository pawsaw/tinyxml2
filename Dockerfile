# Start from the Bazel LTS image version 7.1.0
# This is the latest LTS version of Bazel
FROM gcr.io/bazel-public/bazel:7.1.0

# Install both g++ and clang compilers
USER root
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    clang \
    libc++-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# COPY MODULE.bazel MODULE.bazel.lock BUILD.bazel .bazelrc /workspace/
# COPY build_settings/ /workspace/build_settings/
# COPY build_platforms/ /workspace/build_platforms/

# Copy the source files to the Docker image
# COPY src/ /workspace/src/

# Copy the resource files required for test to the Docker image
# COPY resources/ /workspace/resources/


# The ENTRYPOINT is set to Bazel, making it the default command.
# Users can append any Bazel command to this Docker command.
ENTRYPOINT ["bazel"]
