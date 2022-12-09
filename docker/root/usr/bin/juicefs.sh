#!/bin/sh
set -eu

juicefs format \
    --storage s3 \
    --bucket $S3_HOST/$S3_BUCKET \
    --access-key $S3_ACCESS_KEY_ID \
    --secret-key $S3_SECRET_ACCESS_KEY \
    $JUICEFS_METADATA_STORAGE juicefs-gitea

juicefs mount -d \
    --cache-size 4096 \
    --cache-dir /tmp/jfsCache \
    $JUICEFS_METADATA_STORAGE $S3_MOUNT_POINT
