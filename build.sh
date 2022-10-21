for GOOS in linux darwin; do
  for GOARCH in amd64 arm64; do
    echo "Building $GOOS-$GOARCH"
    export GOOS=$GOOS
    export GOARCH=$GOARCH
    go build -o tmp/fresh-$GOOS-$GOARCH
  done
done