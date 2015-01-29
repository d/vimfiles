#!/bin/bash

set -u -e
git subtree pull --prefix bundle/vim-commentary https://github.com/tpope/vim-commentary master --squash
