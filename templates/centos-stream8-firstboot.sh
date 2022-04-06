#!/usr/bin/env bash

set -euo pipefail

function create_virtiofs_share {
    mkdir /mnt/share
    mount -t virtiofs share /mnt/share
    echo 'share /mnt/share virtiofs defaults 0 0' >>/etc/fstab
}

function die {
    echo >&2 "Fatal: ${*}"
    exit 1
}

create_virtiofs_share
