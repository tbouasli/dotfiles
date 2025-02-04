#!/usr/bin/env bash

if ! command -v stow &>/dev/null; then
	sudo apt install stow
fi

stow -t $HOME .
#git restore .
