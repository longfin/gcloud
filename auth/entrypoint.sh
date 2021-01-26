#!/bin/sh

set -e

echo "##[warning] This actions has been deprecated in favor of https://github.com/GoogleCloudPlatform/github-actions.  This repo has been archived and will be made private on 12/31/2019"

echo "$GCLOUD_AUTH" | base64 --decode > "$HOME"/gcloud.json
echo "$GCLOUD_AUTH" | wc
echo "$GCLOUD_AUTH" | base64 --decode | wc
<"$HOME"/gcloud.json | wc
sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json $*"
