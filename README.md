# docker-builder

[![](https://badge.imagelayers.io/tsertkov/builder:latest.svg)](https://imagelayers.io/?images=tsertkov/builder:latest 'Get your own badge on imagelayers.io')

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

Check [hellogo.sh](https://github.com/tsertkov/docker-builder/blob/master/examples/hellogo.sh) example compiling hello go app with docker-builder.
