#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

#
# Copyright 2019 Joyent, Inc.
# Copyright 2022 MNX Cloud, Inc.
#

NAME = play

ENGBLD_USE_BUILDIMAGE   = true
ENGBLD_REQUIRE          := $(shell git submodule update --init deps/eng)
include deps/eng/tools/mk/Makefile.defs
TOP ?= $(error Unable to access eng.git submodule Makefiles.)

# This isn't real, doesn't matter.
ENGBLD_SKIP_VALIDATE_BUILDENV = true
RELEASE_TARBALL := $(NAME)-pkg-$(STAMP).tar.gz

all:
	npm install

test:
	@echo "Tests pass!"

check::
	@echo "Checked 8. Looks good."

include deps/eng/tools/mk/Makefile.deps
include deps/eng/tools/mk/Makefile.targ
