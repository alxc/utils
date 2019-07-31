install:
	mkdir -p $(HOME)/.local/bin
	rm $(HOME)/.local/bin/list-ppa > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/list-ppa) $(HOME)/.local/bin/list-ppa

	rm $(HOME)/.local/bin/restch > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/restch) $(HOME)/.local/bin/restch

	rm $(HOME)/.local/bin/dnr > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/dnr) $(HOME)/.local/bin/dnr

	rm $(HOME)/.local/bin/sedp > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/sedp) ${HOME}/.local/bin/sedp || true

	rm $(HOME)/.local/bin/pretty > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/pretty) ${HOME}/.local/bin/pretty || true
