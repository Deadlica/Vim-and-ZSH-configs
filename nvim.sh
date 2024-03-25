#!/bin/bash

main() {
  if [ $# -eq 1 ]; then
    if [ "$1" == "build" ]; then
      git pull
      cp -rf ./nvim/lua ~/.config/nvim/
    else
      echo -e "Invalid argument.\nUsage: $0 [build | push <commit message>]"
      exit 1
    fi
  elif [ $# -eq 2 ]; then
    if [ "$1" == "push" ]; then
      cp -rf ~/.config/nvim ./
      sed -i '/^custom$/d' ./nvim/.gitignore
      rm -rf ./nvim/.git/ ./nvim/.github/
      git add nvim nvim.sh
      git commit -m "$2"
      git push
    else
      echo -e "Invalid argument.\nUsage: $0 [build | push <commit message>]"
      exit 1
    fi
  else
    echo -e "Invalid argument.\nUsage: $0 [build | push <commit message>]"
    exit 1
  fi
}

main "$@"
