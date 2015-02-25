#!/bin/bash

set -u
set -e

abs_dirname() {
	local filename="$1"
	cd "$(dirname "${filename}")"
	pwd
}

main() {
	local readonly whereami=$(abs_dirname "${BASH_SOURCE[0]}")
	local vimdir="$(dirname "${whereami}")"

	pushd "${vimdir}"
	git submodule update --init --recursive
	make
	popd
}

main
