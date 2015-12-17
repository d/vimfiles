#!/bin/bash

set -u -e

_main() {
	local whereami=$(dirname "${BASH_SOURCE[0]}")
	local vimdir=$(dirname $(cd "${whereami}"; pwd))

	pushd "${vimdir}/bundle/command-t/ruby/command-t"
	make
	popd
}

_main "$@"
