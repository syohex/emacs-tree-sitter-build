OBJS = \
  out/libtree-sitter-c.so \
  out/libtree-sitter-cpp.so \
  out/libtree-sitter-go.so \
  out/libtree-sitter-java.so \
  out/libtree-sitter-c-sharp.so \
  out/libtree-sitter-rust.so \
  out/libtree-sitter-typescript.so \
  out/libtree-sitter-tsx.so \
  out/libtree-sitter-json.so \
  out/libtree-sitter-yaml.so \
  out/libtree-sitter-toml.so \
  out/libtree-sitter-cmake.so \
  out/libtree-sitter-dockerfile.so \
  out/libtree-sitter-ruby.so \
  out/libtree-sitter-html.so

CFLAGS=-O3 -fPIC -shared

all: $(OBJS)

out/libtree-sitter-c.so: tree-sitter-c/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-cpp.so: tree-sitter-cpp/src/parser.c tree-sitter-cpp/src/scanner.cc
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-go.so: tree-sitter-go/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-java.so: tree-sitter-java/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-c-sharp.so: tree-sitter-c-sharp/src/parser.c tree-sitter-c-sharp/src/scanner.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-rust.so: tree-sitter-rust/src/parser.c tree-sitter-rust/src/scanner.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-typescript.so: tree-sitter-typescript/typescript/src/parser.c tree-sitter-typescript/typescript/src/scanner.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-tsx.so: tree-sitter-typescript/tsx/src/parser.c tree-sitter-typescript/tsx/src/scanner.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-json.so: tree-sitter-json/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-yaml.so: tree-sitter-yaml/src/parser.c tree-sitter-yaml/src/scanner.cc
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-toml.so: tree-sitter-toml/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-cmake.so: tree-sitter-cmake/src/parser.c tree-sitter-cmake/src/scanner.cc
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-dockerfile.so: tree-sitter-dockerfile/src/parser.c
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-ruby.so: tree-sitter-ruby/src/parser.c tree-sitter-ruby/src/scanner.cc
	$(CC) $(CFLAGS) -o $@ $^

out/libtree-sitter-html.so: tree-sitter-html/src/parser.c tree-sitter-html/src/scanner.cc
	$(CC) $(CFLAGS) -o $@ $^

install: all
	sudo cp out/*.so /usr/local/lib
	sudo ldconfig

.PHONY: clean
clean:
	-rm -f out/*.so
