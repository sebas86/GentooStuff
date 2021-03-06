# Copyright 2019 Sebastian Śledź
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="SpriteIlluminator - Generate collisions shapes with one click."
HOMEPAGE="https://www.codeandweb.com/physicseditor"
SRC_URI="amd64?	( https://cdn.codeandweb.com/download/physicseditor/${PV}/${P}-ubuntu64.deb )"

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
