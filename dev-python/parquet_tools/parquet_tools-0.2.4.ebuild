# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 )

inherit distutils-r1

DESCRIPTION="Easy install parquet-tools"
SRC_URI="mirror://pypi/61/43/c6015916e61067a326bbb2ac3379b0710c510c0529a31d5b9fd5cf7e71b9/parquet_tools-0.2.4.tar.gz"
HOMEPAGE="https://github.com/ktrueda/parquet-tools"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""
RDEPEND=">=dev-python/boto3-1.13.25[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.4.3[${PYTHON_USEDEP}]
	>=dev-python/halo-0.0.29[${PYTHON_USEDEP}]
	>=dev-python/pandas-1.0.4[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-0.17.1[${PYTHON_USEDEP}]
	>=dev-python/tabulate-0.8.7[${PYTHON_USEDEP}]
	>=dev-python/thrift-0.13.0[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
