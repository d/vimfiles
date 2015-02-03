#!/bin/bash

set -u
set -e

main() {
	local whereami="$(dirname "${BASH_SOURCE[0]}")"

	pushd "${whereami}"
	make
	popd
}

main
