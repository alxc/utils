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

	rm $(HOME)/.local/bin/make-screenshot-area > /dev/null 2>&1 || true
	ln -s $(shell realpath ./src/make-screenshot-area) ${HOME}/.local/bin/make-screenshot-area || true

	pip install honcho==1.0.1 colorama==0.3.9 --user

	echo 'import os; KILL_WAIT = int(os.environ.get("KILL_WAIT", 60))' >> $(HOME)/.local/lib/python3.8/site-packages/honcho/manager.py
	rm $(HOME)/.local/lib/python3.8/site-packages/honcho/manager.pyc > /dev/null 2>&1 || true
