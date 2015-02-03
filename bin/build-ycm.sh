#!/bin/bash

set -u -e

_main() {
	local whereami=$(dirname "${BASH_SOURCE[0]}")
	local vimdir=$(dirname "${whereami}")

	pushd ${vimdir}
	git submodule update --init --recursive
	bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
	find bundle/YouCompleteMe -name 'sh.pyc' -delete
	popd ${vimdir}
}

_main
