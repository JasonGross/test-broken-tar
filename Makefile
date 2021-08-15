LIMIT ?= # 2115
PIPE_HEAD_LIMIT ?= # | head -$(LIMIT)

all:
	rm -rf build
	mkdir -p build
	git ls-files 'presentations/coq-workshop-2014-coq/*' $(PIPE_HEAD_LIMIT) | xargs tar -cf - | { cd build; tar -xvf -; }
.PHONY: all
