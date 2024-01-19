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
  https://github.com/tree-sitter/tree-sitter-python
  https://github.com/tree-sitter/tree-sitter-go
  https://github.com/camdencheek/tree-sitter-go-mod
  https://github.com/tree-sitter/tree-sitter-rust
  https://github.com/tree-sitter/tree-sitter-c-sharp
  https://github.com/tree-sitter/tree-sitter-typescript
  https://github.com/tree-sitter/tree-sitter-ruby
  https://github.com/tree-sitter/tree-sitter-bash
  https://github.com/elixir-lang/tree-sitter-elixir
  https://github.com/phoenixframework/tree-sitter-heex
  https://github.com/tjdevries/tree-sitter-lua

  https://github.com/tree-sitter/tree-sitter-json
  https://github.com/ikatyang/tree-sitter-yaml
  https://github.com/ikatyang/tree-sitter-toml
  https://github.com/uyha/tree-sitter-cmake
  https://github.com/camdencheek/tree-sitter-dockerfile
  https://github.com/tree-sitter/tree-sitter-html
  https://github.com/MDeiml/tree-sitter-markdown
  https://github.com/monaqa/tree-sitter-mermaid
)

for repo in "${repos[@]}"
do
  git clone --depth=1 $repo
done
