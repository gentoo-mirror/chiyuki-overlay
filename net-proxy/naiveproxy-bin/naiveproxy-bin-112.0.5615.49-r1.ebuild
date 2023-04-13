EAPI=8

DESCRIPTION="NaiveProxy uses Chromium's network stack to camouflage traffic with strong censorship resistence and low detectablility"
HOMEPAGE="https://github.com/klzgrad/naiveproxy/"
LICENSE="BSD-3"
RESTRICT="strip"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-libs/openssl
	!net-proxy/naiveproxy
"

GITHUB_TAG="v112.0.5615.49-1"

SRC_URI="https://github.com/klzgrad/naiveproxy/releases/download/${GITHUB_TAG}/naiveproxy-${GITHUB_TAG}-linux-x64.tar.xz"

S="${WORKDIR}/naiveproxy-${GITHUB_TAG}-linux-x64"

src_install() {
	insinto /opt/naiveproxy-bin
	doins -r *
	fperms +x /opt/naiveproxy-bin/naive
	dosym /opt/naiveproxy-bin/naive /usr/bin/naivepxory
}
