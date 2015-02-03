#!/bin/bash

set -u
set -e

main() {
	local whereami=$(dirname "${BASH_SOURCE[0]}")
	local vimdir=$(dirname "${whereami}")

	pushd "${vimdir}/bundle/command-t/ruby/command-t"
	ruby extconf.rb
	make
	popd

	pushd ${vimdir}
	git submodule update --init --recursive
	bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
	find bundle/YouCompleteMe -name 'sh.pyc' -delete
	popd ${vimdir}
}

main
