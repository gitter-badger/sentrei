#!/bin/bash

# Reference: https://github.com/MarceloPrado/has-changed-path/blob/master/entrypoint.sh

set -euo pipefail

SOURCE=${SOURCE:-.}

cd ${GITHUB_WORKSPACE}/${SOURCE}

PATHS_TO_SEARCH="$*"

if [ -z "$PATHS_TO_SEARCH" ]; then
    echo "Please provide the paths to search for."
    echo "Example usage:"
    echo "./entrypoint.sh path/to/dir1 path/to/dir2"
    exit 1
fi

LATEST_COMMIT=$(git rev-parse HEAD)
LATEST_COMMIT_IN_PATH=$(git log -1 --format=format:%H --full-diff $PATHS_TO_SEARCH)

if [ $LATEST_COMMIT != $LATEST_COMMIT_IN_PATH ]; then
    echo "Code in the following paths has not changed:"
    echo $PATHS_TO_SEARCH
    echo ::set-output name=changed::false
    exit 0
fi

echo ::set-output name=changed::true
exit 0
