. ./scripts/env-list/.env-base
. ./scripts/env-list/.env-satysfi
 
mkdir -p "$ROOT_DIR/output"

echo ">> start build from $ROOT_DIR/src/$SATYSFI_INPUT_MAIN to $ROOT_DIR/output/$SATYSFI_OUTPUT with satysfi:$SATYSFI_TAG"
if [[ $SATYSFI_DEBUG_SHOW_BBOX == 'true' ]] || [[ $SATYSFI_DEBUG_SHOW_SPACE == 'true' ]]
then echo '>> on debug mode'
fi
echo ''

docker run --rm \
    -v "$GIT_BASH_HEADER$ROOT_DIR":/satysfi \
    "amutake/satysfi:$SATYSFI_TAG" \
    satysfi \
    src/$SATYSFI_INPUT_MAIN \
    $(if [[ $SATYSFI_DEBUG_SHOW_BBOX == 'true' ]]; then echo '--debug-show-bbox'; fi) \
    $(if [[ $SATYSFI_DEBUG_SHOW_SPACE == 'true' ]]; then echo '--debug-show-space'; fi) \
    -o "output/$SATYSFI_OUTPUT"
echo '<< build end'
