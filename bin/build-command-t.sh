#!/bin/bash

set -u -e

ruby() {
	env RBENV_VERSION=system ruby "$@"
}

_main() {
	local whereami=$(dirname "${BASH_SOURCE[0]}")
	local vimdir=$(dirname $(cd "${whereami}"; pwd))

	pushd "${vimdir}/bundle/command-t/ruby/command-t"
	ruby extconf.rb
	make
	popd
}

_main
