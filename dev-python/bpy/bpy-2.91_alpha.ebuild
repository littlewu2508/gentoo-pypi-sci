# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_9 )

inherit distutils-r1 prefix

DESCRIPTION="Blender as a python module"

OPV=${PV/_alpha/a0}

SRC_URI="https://github.com/TylerGubala/blenderpy/archive/refs/tags/v${OPV}.tar.gz -> ${PN}-${OPV}.tar.gz"
HOMEPAGE="https://github.com/TylerGubala/blenderpy"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="media-gfx/blender[python_single_target_python3_9]"
BDEPEND="dev-python/wheel[${PYTHON_USEDEP}]
dev-python/pip[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

S=${WORKDIR}/blenderpy-${OPV}

DISTUTILS_ARGS=( --global-option="build_ext" --global-option="--builtbpy=\"${EPREFIX}/usr/bin/blender-2.93\"" )
