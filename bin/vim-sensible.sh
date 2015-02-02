#!/bin/bash

set -u
set -e

git subtree pull --prefix bundle/vim-sensible https://github.com/tpope/vim-sensible master --squash
