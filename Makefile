# Copyright 2019 Joyent, Inc.

all:
	npm install

test:
	@echo "Tests pass!"


check:
	echo "FAIL!"
	exit 1
