BLOGS := $(wildcard src/blogs/*.md)
RBLOGS := $(patsubst src/blogs/%.md, docs/blogs/%.html, $(BLOGS))

all: $(RBLOGS)

docs/blogs/%.html: src/blogs/%.md src/blog-template.html src/self-link-filter.lua makefile
	pandoc -s --template src/blog-template.html --from markdown+gfm_auto_identifiers --lua-filter src/self-link-filter.lua -o $@ $<
