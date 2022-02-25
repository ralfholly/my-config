#!/bin/bash

###
# Replaces config files in home directory with
# symbolic links to config files in repo.
#

set -e

TARGETS=(\
    .Xdefaults \
    .vimrc \
    .bashrc \
    .tmux.conf \
    .vim \
    .vimbak \
    .cgdb \
    .inputrc \
    .gitconfig \
    .pylintrc \
    .config/i3/config \
)

THIS_DIR=$(dirname $0)
pushd "$THIS_DIR" >/dev/null
BACKUP_DIR=backup-$(date +%Y%m%d)

for target in ${TARGETS[*]}; do
    if [ -h ~/$target ]; then
        echo "Removing existing link $target"
        rm ~/$target
    elif [ -e ~/$target ]; then
        mkdir -p "$BACKUP_DIR"
        echo "Backing up $target to $BACKUP_DIR"
        mv -i ~/$target $BACKUP_DIR
    fi
    echo "Creating link to $target"
    ln -s $(readlink -f $target) ~/$target
done

popd >/dev/null
