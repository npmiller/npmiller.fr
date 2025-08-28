BLOGS := $(wildcard src/blogs/*.md)
RBLOGS := $(patsubst src/blogs/%.md, docs/blogs/%.html, $(BLOGS))

all: $(RBLOGS)

docs/blogs/%.html: src/blogs/%.md src/blog-template.html
	pandoc -s --template src/blog-template.html -o $@ $<
