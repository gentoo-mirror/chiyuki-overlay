EAPI=8

inherit go-module

DESCRIPTION="The universal proxy platform"
HOMEPAGE="https://github.com/SagerNet/sing-box"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64"

IUSE="+quic grpc +dhcp +wireguard +ech +utls +reality +acme +gvisor +clash-api v2ray-api"

BDEPEND="
	>=dev-lang/go-1.20
"

SRC_URI="
https://github.com/SagerNet/sing-box/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"
SRC_URI+="
https://github.com/IllyaTheHath/gentoo-overlay/releases/download/${P}/${P}-deps.tar.xz -> ${P}-deps.tar.xz
"

src_compile() {
	extraflags="-X github.com/sagernet/sing-box/constant.Version=${PV} -s -w -buildid="
	main="./cmd/sing-box"
	local tags

	export CGO_CPPFLAGS="${CPPFLAGS}"
	export CGO_CFLAGS="${CFLAGS}"
	export CGO_CXXFLAGS="${CXXFLAGS}"
	export CGO_LDFLAGS="${LDFLAGS}"

	if use quic; then tags+="with_quic,"; fi
	if use grpc; then tags+="with_grpc,"; fi
	if use dhcp; then tags+="with_dhcp,"; fi
	if use wireguard; then tags+="with_wireguard,"; fi
	if use ech; then tags+="with_ech,"; fi
	if use utls; then tags+="with_utls,"; fi
	if use reality; then tags+="with_reality_server,"; fi
	if use acme; then tags+="with_acme,"; fi
	if use gvisor; then tags+="with_gvisor,"; fi
	if use clash-api; then tags+="with_clash_api,"; fi
	if use v2ray-api; then tags+="with_v2ray_api,"; fi

	ego build \
		-v -trimpath \
		-ldflags "${extraflags} -extldflags \"${LDFLAGS}\"" \
		-tags $tags \
		$main
}

src_install() {
	dobin sing-box
}
