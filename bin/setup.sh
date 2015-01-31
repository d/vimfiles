#!/bin/bash

set -u
set -e

pushd bundle/command-t/ruby/command-t
ruby extconf.rb
make
popd

git submodule update --init --recursive
bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
find bundle/YouCompleteMe -name 'sh.pyc' -delete
