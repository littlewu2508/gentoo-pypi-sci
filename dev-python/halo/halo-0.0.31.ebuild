# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION="Beautiful terminal spinners in Python"
SRC_URI="mirror://pypi/ee/48/d53580d30b1fabf25d0d1fcc3f5b26d08d2ac75a1890ff6d262f9f027436/halo-0.0.31.tar.gz"
HOMEPAGE="https://github.com/manrajgrover/halo"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="ipython"
RDEPEND=">=dev-python/log_symbols-0.0.14[${PYTHON_USEDEP}]
	>=dev-python/spinners-0.0.24[${PYTHON_USEDEP}]
	>=dev-python/termcolor-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.3.9[${PYTHON_USEDEP}]
	>=dev-python/six-1.12.0[${PYTHON_USEDEP}]
	ipython? ( =dev-python/IPython-5.7.0[${PYTHON_USEDEP}]
		=dev-python/ipywidgets-7.1.0[${PYTHON_USEDEP}] )"
distutils_enable_tests pytest
