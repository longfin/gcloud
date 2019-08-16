#!/bin/sh

set -e

echo "$GCLOUD_AUTH" | base64 --decode > "$HOME"/gcloud.json
echo "$GCLOUD_AUTH" | wc
echo "$GCLOUD_AUTH" | base64 --decode | wc
<"$HOME"/gcloud.json | wc
sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json $*"
