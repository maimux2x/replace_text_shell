#!/usr/bin/env bash

case "$#" in
  2) target_path=`pwd` ;;
  *) echo "引数が不正です。"
esac

rg -l "$1" "$target_path" | xargs sed -i '' -e "s/$1/$2/g"
