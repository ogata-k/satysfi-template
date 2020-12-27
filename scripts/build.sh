VERBOSE="$1"
OUTPUT="$2"
echo ">> verbose: $VERBOSE, output: $OUTPUT"

. ./scripts/env-list/.env-base
. ./scripts/env-list/.env-satysfi
 
mkdir -p "$ROOT_DIR/output"

echo ">> start build from $ROOT_DIR/src/main.saty to $ROOT_DIR/output/$OUTPUT with satysfi:$TAG"
docker run --rm -v "$GIT_BASH_HEADER$ROOT_DIR":/satysfi "amutake/satysfi:$TAG" satysfi src/main.saty -o "output/$OUTPUT"
echo '<< build end'
