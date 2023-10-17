EAPI=8

inherit go-module

DESCRIPTION="sing-geoip database"
HOMEPAGE="https://github.com/SagerNet/sing-geoip"
LICENSE="GPL-3 BSD-3 MIT Apache-2 ISC"

SLOT="0"
KEYWORDS="~amd64"

IUSE="cn hk tw us jp"

BDEPEND="
	>=dev-lang/go-1.18
"

SRC_URI="
https://github.com/SagerNet/sing-geoip/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
https://github.com/Dreamacro/maxmind-geoip/releases/download/${PV}/Country.mmdb
"
SRC_URI+="
https://github.com/IllyaTheHath/gentoo-overlay/releases/download/${P}/sing-geoip-${P}-deps.tar.xz -> ${P}-deps.tar.xz
"

src_unpack() {
	go-module_src_unpack
	cp ${DISTDIR}/Country.mmdb ${S}
}

src_compile() {
	ego run . ${S}/Country.mmdb ${S}/geoip.db
	for i in ${IUSE} ; do
		if use ${i} ; then
			ego run . ${S}/Country.mmdb ${S}/geoip-${i}.db ${i}
		fi
	done
}

src_install() {
	insinto /usr/share/${PN}
	for f in geoip*.db ; do
		[ -e "$f" ] && doins $f
	done
}
