# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

U_PN="${PN^}"

DESCRIPTION="Sega Saturn emulator.  Fork of YabaSanshiro/Yabause."
HOMEPAGE="https://github.com/FCare/Kronos"
SRC_URI="https://github.com/FCare/${U_PN}/archive/${PV}_official_release.tar.gz"

S="$WORKDIR/${U_PN}-${PV}_official_release"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
