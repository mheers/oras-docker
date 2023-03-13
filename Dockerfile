ARG ORAS_VERSION

FROM --platform=$BUILDPLATFORM ghcr.io/oras-project/oras:${ORAS_VERSION}

RUN apk add --no-cache \
    bash \
    curl
