# docker-builder

> Docker image for dedicated builds.

Based on latest Ubuntu and contains:
- build-essential
- golang
- git
- mercurial

## Usage

Get the image from hub or build it yourself:

`docker pull tsertkov/docker-builder`

Image expects `/build` data volume to be mounted and contain `build.sh` shell script which will be executed by `/bin/sh` within container when it starts.

## Example build.sh script

```sh
GOPATH=$(pwd) go get github.com/golang/example/hello
cp bin/hello /build/hello
```

Check scripts in `examples/` for more...
