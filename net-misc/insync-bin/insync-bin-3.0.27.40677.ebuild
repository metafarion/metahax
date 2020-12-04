# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm xdg-utils

DESCRIPTION="Full-featured sync client for Google Drive and OneDrive"
HOMEPAGE="https://www.insynchq.com/"
SRC_URI="http://s.insynchq.com/builds/insync-${PV}-fc30.x86_64.rpm"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64"
DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="bindist"
QA_PREBUILT="usr/lib/insync/*.so*"
QA_PRESTRIPPED="usr/lib/insync/insync"

src_unpack () {
	rpm_src_unpack ${A}
	mkdir -p "${S}" # This required directory doesn't get created on its own for some reason
}

src_install() {
	cp -rpP "${WORKDIR}"/usr "${D}"/ || die "Install failed"

	# I wasn't able to exclude this pre-compressed manpage with docompress -x, so I've resorted to decompressing it before installation.
	gzip -d "${D}/usr/share/man/man1/insync.1.gz"
}

pkg_postinst() {
	elog "Headless operation is no longer supported by upstream"
	elog "Insync will only run as a logged-in X user"

	xdg_desktop_database_update
	xdg_icon_cache_update
	xdg_mimeinfo_database_update
}
