# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 python3_8 )

inherit distutils-r1

DESCRIPTION="TensorFlow, PyTorch and Numpy layers for generating orthogonal polynomials"
SRC_URI="mirror://pypi/e0/7f/6c05110633cf218b4675c56d2d29a73c7ebef0e82a5b83e4fb471f3febad/orthnet-0.4.0.tar.gz"
HOMEPAGE=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
