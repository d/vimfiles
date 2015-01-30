#!/bin/bash

set -u
set -e

git submodule update --init --recursive
bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
find bundle/YouCompleteMe -name 'sh.pyc' -delete
