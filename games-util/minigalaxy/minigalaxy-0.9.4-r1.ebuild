# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1 xdg-utils

DESCRIPTION="Simple GOG client for Linux"
HOMEPAGE="https://github.com/sharkwouter/minigalaxy"

if [[ ${PV} == *9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/sharkwouter/minigalaxy.git"
else
	SRC_URI="https://github.com/sharkwouter/${PN}/archive/${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3+"
SLOT="0"

IUSE="system-dosbox system-scummvm"
DEPEND=">=dev-python/pygobject-3.30[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=x11-libs/gtk+-3
	>=net-libs/webkit-gtk-2.6
"
RDEPEND="${DEPEND}
	system-dosbox? ( games-emulation/dosbox )
	system-scummvm? ( games-engines/scummvm )
"

PATCHES=( "${FILESDIR}/${P}-paths.patch" )

python_prepare() {
	sed -i -e "s/find_packages()/find_packages(exclude=['tests'])/" setup.py || die
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
