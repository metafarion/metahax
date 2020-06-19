# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="myMPD is a standalone and mobile friendly web-based MPD client."

MY_PN="myMPD"
S="${WORKDIR}/${MY_PN}-${PV}"

HOMEPAGE="https://jcorporation.github.io/myMPD"
SRC_URI="https://github.com/jcorporation/${MY_PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+id3tag +ssl"

RDEPEND="
	id3tag? (
		media-libs/libid3tag
		media-libs/flac
		)
	ssl? ( >=dev-libs/openssl-1.1 )"

DEPEND="${RDEPEND}"

BDEPEND="
	>=dev-util/cmake-2.6
	dev-lang/perl
	>=virtual/jdk-1.7"

#src_prepare() {
#	cmake_src_prepare
#}

#src_configure() {
#	cmake_src_configure
#}

#src_compile() {
#	cmake_src_compile
#}

#src_install() {
#	cmake_src_install
#}
