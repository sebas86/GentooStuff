# Copyright 2017 Sebastian Śledź
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="SpriteIlluminator - Generate normal maps for your 2d game and web projects."
HOMEPAGE="https://www.codeandweb.com/spriteilluminator"
SRC_URI="amd64?	( https://cdn.codeandweb.com/download/spriteilluminator/${PV}/${P}-ubuntu64.deb )"

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
