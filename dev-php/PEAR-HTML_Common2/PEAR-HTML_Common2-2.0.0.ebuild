# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit php-pear-r1

DESCRIPTION="Abstract base class for HTML classes (PHP5 port of PEAR-HTML_Common package)."
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.1.4"
RDEPEND="${DEPEND}"
