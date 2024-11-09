# imgp-container

This is a container image for [imgp](https://github.com/jarun/imgp).
This container image is for pillow-simd unsupporting environments such as Apple Silicon.

When I tried to install imgp on macOS M3, it was failed.

```
  note: This error originates from a subprocess, and is likely not a problem with pip.
  ERROR: Failed building wheel for pillow-simd
Failed to build pillow-simd

ERROR: ERROR: Failed to build installable wheels for some pyproject.toml based projects (pillow-simd)
```

## Usage (local)

Build:

```
docker build --platform linux/amd64 -t imgp .
```

Run:

```
docker run -v $PWD:/work imgp -x 1024x0 . ./output/
```

## Usage

Getting the container image from [Docker Hub](https://hub.docker.com/repository/docker/tomoyk/imgp/general)

```
docker run -v $PWD:/work tomoyk/imgp -x 1024x0 . ./output/
```
