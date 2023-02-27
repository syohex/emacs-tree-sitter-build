#!/usr/bin/env bash
set -e

BUILD_DIR=build/
CC=gcc

rm -rf $BUILD_DIR/tree-sitter-*

mkdir -p $BUILD_DIR
mkdir -p $BUILD_DIR/out

cd $BUILD_DIR

repos=(
  https://github.com/tree-sitter/tree-sitter-c
  https://github.com/tree-sitter/tree-sitter-cpp
  https://github.com/tree-sitter/tree-sitter-java
  https://github.com/tree-sitter/tree-sitter-go
  https://github.com/camdencheek/tree-sitter-go-mod
  https://github.com/tree-sitter/tree-sitter-rust
  https://github.com/tree-sitter/tree-sitter-c-sharp
  https://github.com/tree-sitter/tree-sitter-typescript
  https://github.com/tree-sitter/tree-sitter-ruby

  https://github.com/tree-sitter/tree-sitter-json
  https://github.com/ikatyang/tree-sitter-yaml
  https://github.com/ikatyang/tree-sitter-toml
  https://github.com/uyha/tree-sitter-cmake
  https://github.com/camdencheek/tree-sitter-dockerfile
  https://github.com/tree-sitter/tree-sitter-html
)

for repo in "${repos[@]}"
do
  git clone --depth=1 $repo
done
