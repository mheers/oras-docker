# oras-docker

> Simply the default oras image (oras:latest) with bash installed.

## Use case

You can use this image with bash and oras installed to create kubernetes init containers that pull files stored in OCI images.

## Usage

```bash
docker run --rm -it -v $(pwd):/data mheers/oras:latest pull <image> <file>
```
