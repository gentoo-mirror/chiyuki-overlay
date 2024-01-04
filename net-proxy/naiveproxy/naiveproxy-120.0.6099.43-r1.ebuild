EAPI=8

DESCRIPTION="NaiveProxy uses Chromium's network stack to camouflage traffic with strong censorship resistence and low detectablility"
HOMEPAGE="https://github.com/klzgrad/naiveproxy/"
LICENSE="BSD-3"

SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	>=dev-lang/python-3.0.0
	dev-util/ninja
	dev-util/gn
"

RDEPEND="
	dev-libs/openssl
	!net-proxy/naiveproxy-bin
"

GITHUB_VER="120.0.6099.43-1"
GITHUB_TAG="v${GITHUB_VER}"
CLANG_REVISION="llvmorg-18-init-9505-g10664813-1"
PGO_PATH="chrome-linux-6099-1701163313-b23d7b20bc0e6506140a32e766fa675f7dc261e2.profdata"

SRC_URI="
https://github.com/klzgrad/naiveproxy/archive/refs/tags/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz
https://storage.googleapis.com/chromium-optimization-profiles/pgo_profiles/${PGO_PATH} -> ${PGO_PATH}
https://commondatastorage.googleapis.com/chromium-browser-clang/Linux_x64/clang-${CLANG_REVISION}.tgz -> clang-${CLANG_REVISION}.tgz
"

S="${WORKDIR}/naiveproxy-${GITHUB_VER}/src"

src_unpack() {
	unpack ${P}.tar.gz
	mkdir -p "${WORKDIR}/clang"
	pushd "${WORKDIR}/clang"
	unpack clang-${CLANG_REVISION}.tgz
	popd
}

src_prepare() {
	eapply_user
	mkdir -p "${S}/chrome/build/pgo_profiles"
	cp ${DISTDIR}/${PGO_PATH} "${S}/chrome/build/pgo_profiles"
	mkdir -p "${S}/third_party/llvm-build/Release+Asserts"
	cp -r "${WORKDIR}/clang/." "${S}/third_party/llvm-build/Release+Asserts"
	echo ${CLANG_REVISION} > third_party/llvm-build/Release+Asserts/cr_build_revision
}

src_compile() {
	export TMPDIR="${S}/tmp"
	rm -rf "$TMPDIR"
	mkdir -p "$TMPDIR"

	out=out/Release
	flags="
        is_official_build=true
        exclude_unwind_tables=true
        enable_resource_allowlist_generation=false
        symbol_level=0
        
        is_clang=true
        use_sysroot=false

        fatal_linker_warnings=false
        treat_warnings_as_errors=false

        enable_base_tracing=false
        use_udev=false
        use_aura=false
        use_ozone=false
        use_gio=false
        use_gtk=false
        use_platform_icu_alternatives=true
        use_glib=false

        disable_file_support=true
        enable_websockets=false
        use_kerberos=false
        enable_mdns=false
        enable_reporting=false
        include_transport_security_state_preload_list=false
        use_nss_certs=false

        enable_backup_ref_ptr_support=false
        enable_dangling_raw_ptr_checks=false"

	export DEPOT_TOOLS_WIN_TOOLCHAIN=0

	mkdir -p "${out}"
	gn gen "$out" --args="$flags" --script-executable=python
	ninja -C "$out" naive
}

src_install() {
	insinto /opt/naiveproxy
	doins -r config.json out/Release/naive
	pushd ${WORKDIR}/naiveproxy-${GITHUB_VER}
	doins -r README.md USAGE.txt
	popd
	fperms +x /opt/naiveproxy/naive
	dosym /opt/naiveproxy/naive /usr/bin/naive
}
