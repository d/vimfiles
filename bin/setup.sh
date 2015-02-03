#!/bin/bash

set -u
set -e

main() {
	local whereami=$(dirname "${BASH_SOURCE[0]}")

	"${whereami}/build-command-t.sh"
	"${whereami}/build-ycm.sh"
}

main
