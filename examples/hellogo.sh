#!/usr/bin/env sh

DIR="$(mktemp -d "$(pwd)/build-XXXXXX")"
cd "$DIR"

cat > build.sh <<'EOT'
GOPATH=$(pwd) go get github.com/golang/example/hello
cp bin/hello /build/hello
EOT

docker run \
  --rm \
  -v "${DIR}:/build" \
  tsertkov/builder \

if [ $? -ne 0 ]; then
  rm -rf "$DIR"
  echo "Build failed"
  exit 1
else
  rm "${DIR}/build.sh"
  echo "Build successful ${DIR}"
fi
