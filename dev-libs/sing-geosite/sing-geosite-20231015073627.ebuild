EAPI=8

inherit go-module

DESCRIPTION="sing-geoip database"
HOMEPAGE="https://github.com/IllyaTheHath/sing-geosite"
LICENSE="GPL-3 BSD-3 MIT Apache-2 ISC"

SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	dev-lang/go
"

GEOSITE_VER="20231017"

SRC_URI="
https://github.com/IllyaTheHath/sing-geosite/archive/refs/tags/${GEOSITE_VER}.tar.gz -> ${PN}.tar.gz
https://github.com/v2fly/domain-list-community/releases/download/${PV}/dlc.dat
"
SRC_URI+="
https://github.com/IllyaTheHath/gentoo-overlay/releases/download/${P}/${P}-deps.tar.xz -> ${P}-deps.tar.xz
"

S="${WORKDIR}/${PN}-${GEOSITE_VER}"

src_unpack() {
	go-module_src_unpack
	cp ${DISTDIR}/dlc.dat ${S}
}

src_compile() {
	ego run . ${S}/dlc.dat ${S}/geosite.db
}

src_install() {
	insinto /usr/share/${PN}
	doins geosite.db
}
