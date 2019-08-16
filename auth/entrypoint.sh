#!/bin/sh

set -e

echo "$GCLOUD_AUTH" | base64 --decode > "$HOME"/gcloud.json
<"$HOME"/gcloud.json | wc -l
sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json $*"
