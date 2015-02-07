#!/bin/bash

set -u -e

abs_dirname() {
	local filename="$1"
	cd "$(dirname "${filename}")"
	pwd
}

_main() {
	local whereami=$(abs_dirname "${BASH_SOURCE[0]}")
	local vimdir=$(dirname "${whereami}")

	pushd ${vimdir}
	bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
	find bundle/YouCompleteMe -name 'sh.pyc' -delete
	popd ${vimdir}
}

_main
