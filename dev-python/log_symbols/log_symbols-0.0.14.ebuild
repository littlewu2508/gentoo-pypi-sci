# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION="Colored symbols for various log levels for Python"
SRC_URI="mirror://pypi/45/87/e86645d758a4401c8c81914b6a88470634d1785c9ad09823fa4a1bd89250/log_symbols-0.0.14.tar.gz"
HOMEPAGE="https://github.com/manrajgrover/py-log-symbols"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""
RDEPEND=">=dev-python/colorama-0.3.9[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
