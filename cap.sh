#!/bin/bash

WORKDIR=$(pwd)
SSH_AGENT=$(readlink -f $SSH_AUTH_SOCK)
UID="$(id -u)"

docker run \
    --rm \
    -i \
    -t \
    --user $UID \
    -v $WORKDIR:/root/workdir \
    -v $SSH_AGENT:/root/ssh-agent \
    e238730a7917 \
    $@
