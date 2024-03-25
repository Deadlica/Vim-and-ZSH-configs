#!/bin/bash

main() {
  if [ $# -eq 0 ]; then
    cp -rf ./nvim/lua ~/.config/nvim/
  elif [ $1 == "push" ]; then
    cp -rf ~/.config/nvim ./
    rm -rf ./nvim/.git/ ./nvim/.github/
  else
    echo -e "Invalid argument.\nUsage: $0 [push]"
    exit 1
  fi
}

main "$@"
