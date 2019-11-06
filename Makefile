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

	pip install honcho==1.0.1 --user

	echo 'import os; KILL_WAIT = int(os.environ.get("KILL_WAIT", 60))' >> $(HOME)/.local/lib/python2.7/site-packages/honcho/manager.py
	rm $(HOME)/.local/lib/python2.7/site-packages/honcho/manager.pyc > /dev/null 2>&1 || true
