#!/bin/sh
set -eu

GIT_USER_ID=$(id -u git)
GIT_GROUP_ID=$(id -g git)

echo $S3_ACCESS_KEY_ID:$S3_SECRET_ACCESS_KEY > /etc/passwd-s3fs
chmod 600 /etc/passwd-s3fs

s3fs \
    -o passwd_file=/etc/passwd-s3fs \
    -o url=$S3_HOST \
    -o nonempty \
    -o use_cache="/tmp" \
    -o allow_other \
    -o uid=$GIT_USER_ID \
    -o gid=$GIT_GROUP_ID \
    -o multireq_max=5 \
    -o use_path_request_style \
    $S3_BUCKET $S3_MOUNT_POINT
