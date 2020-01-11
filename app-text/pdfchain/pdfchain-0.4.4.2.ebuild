# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="PDF Chain is a graphical user interface for the PDF Toolkit (PDFtk)"
HOMEPAGE="http://pdfchain.sourceforge.net"
SRC_URI="https://downloads.sourceforge.net/project/${PN}/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=app-text/pdftk-1.4.5
	>=dev-cpp/atkmm-1.6
	>=dev-cpp/gtkmm-3.0
	>=dev-cpp/glibmm-2.4
"
RDEPEND="${DEPEND}"
