#!/bin/sh

set -e

echo "$GCLOUD_AUTH" | base64 --decode > "$HOME"/gcloud.json
echo "$GCLOUD_AUTH" | wc -l
echo "$GCLOUD_AUTH" | base64 --decode | wc -l
<"$HOME"/gcloud.json | wc -l
sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json $*"
