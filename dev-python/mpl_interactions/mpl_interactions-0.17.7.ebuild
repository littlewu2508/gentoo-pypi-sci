# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1

DESCRIPTION="Matplotlib aware interact functions"
SRC_URI="mirror://pypi/20/40/7a6c785fdd0085c89e1285842c02a9f5dd62bcaba617873fd7a5636e883a/mpl_interactions-0.17.7.tar.gz"
HOMEPAGE="https://github.com/ianhi/mpl-interactions"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

IUSE="doc jupyter test"
RDEPEND=">=dev-python/matplotlib-3.3[${PYTHON_USEDEP}]
	doc? ( >=dev-python/sphinx-1.5[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/numpydoc[${PYTHON_USEDEP}]
		dev-python/recommonmark[${PYTHON_USEDEP}]
		dev-python/sphinx-rtd-theme[${PYTHON_USEDEP}]
		dev-python/nbsphinx[${PYTHON_USEDEP}]
		dev-python/jupyter-sphinx[${PYTHON_USEDEP}]
		dev-python/pytest-check-links[${PYTHON_USEDEP}]
		dev-python/pypandoc[${PYTHON_USEDEP}]
		dev-python/sphinx-copybutton[${PYTHON_USEDEP}]
		dev-python/sphinx-autobuild[${PYTHON_USEDEP}]
		dev-python/xarray[${PYTHON_USEDEP}]
		>=dev-python/sphinx-gallery-0.8.2[${PYTHON_USEDEP}]
		>=dev-python/mpl-playback-0.1.1[${PYTHON_USEDEP}] )
	jupyter? ( dev-python/ipywidgets[${PYTHON_USEDEP}]
		>=dev-python/ipympl-0.5.8[${PYTHON_USEDEP}] )
	test? ( dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-mpl[${PYTHON_USEDEP}]
		dev-python/nbval[${PYTHON_USEDEP}]
		dev-python/PyQt5[${PYTHON_USEDEP}]
		dev-python/black[${PYTHON_USEDEP}]
		dev-python/pandas[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		sci-libs/scipy[${PYTHON_USEDEP}]
		dev-python/xarray[${PYTHON_USEDEP}] )"
distutils_enable_tests pytest
