# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_MIRROR="git://github.com"
EGIT_REPONAME="kensington/${PN}.git"
EGIT_BRANCH="splitpython"

PYTHON_DEPEND="2"
KMNAME="kdevelop"
KDE_SCM="git"
#EGIT_REPONAME="kdev-python"
KDEVPLATFORM_VERSION="1.2.82"
inherit kde4-base python

DESCRIPTION="Python plugin for KDevelop 4"
SLOT="4"
KEYWORDS=""
LICENSE="GPL-2"
IUSE="debug"

DEPEND="
	dev-python/python-kdevelop
	>=dev-util/kdevelop-pg-qt-0.9.0
	dev-util/kdevelop
"
RDEPEND="${DEPEND}"

RESTRICT="test"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
	kde4-base_pkg_setup
}

src_compile() {
	pushd "${WORKDIR}"/${P}_build
	emake parser
	popd

	kde4-base_src_compile
}
