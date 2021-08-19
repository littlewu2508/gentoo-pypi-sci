# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION="Optimizing numpys einsum function"
SRC_URI="mirror://pypi/7d/bf/9257e53a0e7715bc1127e15063e831f076723c6cd60985333a1c18878fb8/opt_einsum-3.3.0.tar.gz"
HOMEPAGE="https://github.com/dgasmith/opt_einsum"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="docs tests"
RDEPEND=">=dev-python/numpy-1.7[${PYTHON_USEDEP}]
	docs? ( =dev-python/sphinx-1.2.3[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-napoleon[${PYTHON_USEDEP}]
		dev-python/sphinx-rtd-theme[${PYTHON_USEDEP}]
		dev-python/numpydoc[${PYTHON_USEDEP}] )
	tests? ( dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-cov[${PYTHON_USEDEP}]
		dev-python/pytest-pep8[${PYTHON_USEDEP}] )"
distutils_enable_tests pytest
