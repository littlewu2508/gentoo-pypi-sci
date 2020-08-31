# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 )

inherit distutils-r1

DESCRIPTION="Open compressed files transparently"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/marcelm/xopen/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="dev"
RDEPEND="dev? ( dev-python/pytest )"