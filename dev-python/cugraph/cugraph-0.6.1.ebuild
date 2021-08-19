# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.post1.tar.gz"
HOMEPAGE="https://github.com/rapidsai/dask-cuda"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${P}.post1"

distutils_enable_tests pytest
