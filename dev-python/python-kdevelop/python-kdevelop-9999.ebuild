# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
EGIT_REPO_URI="git://github.com/kensington/python-kdevelop.git"

inherit python git-2

DESCRIPTION="Patched version of Python used by the KDevelop python plugin"
HOMEPAGE="https://github.com/kensington/python-kdevpython"

SLOT="4"
KEYWORDS=""
LICENSE="PYTHON"
IUSE=""

RESTRICT="test"

pkg_setup() {
	python_set_active_version 2
}

src_prepare() {
	sed -e 's/$(OPT)//' -i Makefile.pre.in || die "sed makefiled failed"
}

src_configure() {
	econf  --enable-shared --without-pymalloc
}

src_install() {
	dolib libpython2.7-kdevelop.so*

	insinto /usr/include/python-kdevelop
	doins -r Include/*
	doins pyconfig.h

	insinto /usr/share/apps/kdevpythonsupport/encodings
	doins -r Lib/encodings/*
}
