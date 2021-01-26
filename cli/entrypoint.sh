#!/bin/sh
set -e

echo "##[warning] This actions has been deprecated in favor of https://github.com/GoogleCloudPlatform/github-actions.  This repo has been archived and will be made private on 12/31/2019"

sh -c "gcloud $*"
