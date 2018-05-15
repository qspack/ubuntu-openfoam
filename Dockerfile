ARG DOCKER_REGISTRY=""
ARG DOCKER_REPO=qspack
ARG FROM_IMG_NAME="ubuntu-libtool"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${DOCKER_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN /usr/local/src/spack/bin/spack install --no-checksum openfoam-org
