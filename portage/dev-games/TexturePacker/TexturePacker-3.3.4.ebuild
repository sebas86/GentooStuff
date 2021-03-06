# Copyright 2014 Sebastian Śledź
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="TexturePacker - Create and easy optimise your sprite sheets."
HOMEPAGE="http://www.codeandweb.com/texturepacker"
SRC_URI="amd64?	( http://www.codeandweb.com/download/texturepacker/${PV}/${P}-ubuntu64.deb )"

LICENSE="CodeAndWeb"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_unpack()
{
   unpack ${P}-ubuntu64.deb
   cd ${WORKDIR}
   tar xzf data.tar.gz || die "Install failed!"
   rm data.tar.gz
}

src_install()
{
   cp -R "${WORKDIR}/usr" "${D}/" || die "Install failed!"
}
