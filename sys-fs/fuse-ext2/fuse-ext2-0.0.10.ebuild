# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="FUSE module to mount ext2, ext3, and ext4 file system devices or images."
HOMEPAGE="https://github.com/alperakcan/fuse-ext2"
SRC_URI="https://github.com/alperakcan/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sys-fs/fuse
	sys-fs/e2fsprogs
	sys-libs/e2fsprogs-libs
"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}/fuse-ext2-0.0.10-glibc-2.24+-sysmacros.patch"
)

src_configure() {
	./autogen.sh || die
	econf
}
