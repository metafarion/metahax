# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit rpm xdg-utils

DESCRIPTION="Full-featured sync client for Google Drive and OneDrive"
HOMEPAGE="https://www.insynchq.com/"
SRC_URI="http://s.insynchq.com/builds/insync-${PV}-fc30.x86_64.rpm"

SLOT="0"
KEYWORDS="~amd64"
DEPEND=""
RDEPEND="${DEPEND}"

src_unpack () {
	rpm_src_unpack ${A}
	mkdir -p "${S}" # This required directory doesn't get created on its own for some reason
}

src_install() {
	cp -rpP "${WORKDIR}"/usr "${D}"/ || die "Install failed"

#	echo "SEARCH_DIRS_MASK=\"/usr/lib*/insync\"" > "${T}/70${PN}" || die
#	insinto "/etc/revdep-rebuild" && doins "${T}/70${PN}" || die
}

pkg_postinst() {
	elog ""
	elog "Headless operation is no longer supported by upstream"
	elog "Insync will only run as a logged-in X user"
	elog ""

	xdg_desktop_database_update
	xdg_icon_cache_update
	xdg_mimeinfo_database_update
}
