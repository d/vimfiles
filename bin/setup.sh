#!/bin/bash

set -u
set -e

main() {
	local whereami="$(dirname "${BASH_SOURCE[0]}")"

	pushd "${whereami}"
	git submodule update --init --recursive
	make
	popd
}

main
