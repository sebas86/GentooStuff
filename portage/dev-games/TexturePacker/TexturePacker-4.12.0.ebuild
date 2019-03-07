# Copyright 2017 Sebastian Śledź
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="TexturePacker - Create and easy optimise your sprite sheets."
HOMEPAGE="http://www.codeandweb.com/texturepacker"
SRC_URI="amd64?	( http://www.codeandweb.com/download/texturepacker/${PV}/${P}-ubuntu64.deb )"

LICENSE="CodeAndWeb"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-libs/grantlee
	media-libs/jasper
"

DEPEND="${RDEPEND}"

src_unpack()
{
   unpack ${P}-ubuntu64.deb
   cd ${WORKDIR}
   tar xf data.tar.xz || die "Install failed!"
   rm data.tar.xz
}

src_install()
{
   cp -R "${WORKDIR}/usr" "${D}/" || die "Install failed!"
}
