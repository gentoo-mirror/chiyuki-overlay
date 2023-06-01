EAPI=8

NUGETS="
castle.core-4.4.1
cheaploc-1.1.6
commandlineparser-2.9.1
config.net-4.19.0
deviceid-6.2.0
deviceid.linux-6.2.0
deviceid.mac-6.2.0
downloader-2.2.8
goaaats.nativelibraryloader-4.9.0-beta1-g70f642e82e
goaaats.steamworks-2.3.4
goaaats.veldrid-4.9.0-beta1-g70f642e82e
goaaats.veldrid.imagesharp-4.9.0-beta1-g70f642e82e
goaaats.veldrid.metalbindings-4.9.0-beta1-g70f642e82e
goaaats.veldrid.openglbindings-4.9.0-beta1-g70f642e82e
goaaats.veldrid.sdl2-4.9.0-beta1-g70f642e82e
goaaats.veldrid.startuputilities-4.9.0-beta1-g70f642e82e
imgui.net-1.87.2
keysharp-1.0.5
microsoft.aspnetcore.app.runtime.linux-x64-6.0.12
microsoft.aspnetcore.app.runtime.osx-x64-6.0.12
microsoft.aspnetcore.app.runtime.win-x64-6.0.12
microsoft.bcl.asyncinterfaces-6.0.0
microsoft.codeanalysis.analyzers-3.3.3
microsoft.codeanalysis.bannedapianalyzers-3.3.3
microsoft.codeanalysis.common-4.0.1
microsoft.codeanalysis.csharp-4.0.1
microsoft.codeanalysis.netanalyzers-6.0.0
microsoft.dotnet.platformabstractions-3.1.6
microsoft.netcore.app.host.osx-x64-6.0.12
microsoft.netcore.app.host.win-x64-6.0.12
microsoft.netcore.app.runtime.linux-x64-6.0.10
microsoft.netcore.app.runtime.linux-x64-6.0.12
microsoft.netcore.app.runtime.osx-x64-6.0.12
microsoft.netcore.app.runtime.win-x64-6.0.12
microsoft.netcore.platforms-1.1.0
microsoft.netcore.targets-1.1.0
microsoft.win32.primitives-4.3.0
microsoft.win32.registry-6.0.0-preview.5.21301.5
microsoft.win32.systemevents-6.0.0
mono.cecil-0.9.6.1
mono.nat-3.0.1
monotorrent-2.0.0
netstandard.library-1.6.1
netstandard.library-2.0.3
newtonsoft.json-12.0.2
reusabletasks-2.0.0
runtime.any.system.collections-4.3.0
runtime.any.system.diagnostics.tools-4.3.0
runtime.any.system.diagnostics.tracing-4.3.0
runtime.any.system.globalization-4.3.0
runtime.any.system.globalization.calendars-4.3.0
runtime.any.system.io-4.3.0
runtime.any.system.reflection-4.3.0
runtime.any.system.reflection.extensions-4.3.0
runtime.any.system.reflection.primitives-4.3.0
runtime.any.system.resources.resourcemanager-4.3.0
runtime.any.system.runtime-4.3.0
runtime.any.system.runtime.handles-4.3.0
runtime.any.system.runtime.interopservices-4.3.0
runtime.any.system.text.encoding-4.3.0
runtime.any.system.text.encoding.extensions-4.3.0
runtime.any.system.threading.tasks-4.3.0
runtime.any.system.threading.timer-4.3.0
runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.native.system-4.3.0
runtime.native.system.io.compression-4.3.0
runtime.native.system.net.http-4.3.0
runtime.native.system.security.cryptography.apple-4.3.0
runtime.native.system.security.cryptography.openssl-4.3.0
runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple-4.3.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl-4.3.0
runtime.unix.microsoft.win32.primitives-4.3.0
runtime.unix.system.console-4.3.0
runtime.unix.system.diagnostics.debug-4.3.0
runtime.unix.system.io.filesystem-4.3.0
runtime.unix.system.net.primitives-4.3.0
runtime.unix.system.net.sockets-4.3.0
runtime.unix.system.private.uri-4.3.0
runtime.unix.system.runtime.extensions-4.3.0
runtime.win.microsoft.win32.primitives-4.3.0
runtime.win.system.console-4.3.0
runtime.win.system.diagnostics.debug-4.3.0
runtime.win.system.io.filesystem-4.3.0
runtime.win.system.net.primitives-4.3.0
runtime.win.system.net.sockets-4.3.0
runtime.win.system.runtime.extensions-4.3.0
runtime.win7-x64.runtime.native.system.io.compression-4.3.0
runtime.win7.system.private.uri-4.3.0
serilog-2.12.0
serilog.enrichers.thread-3.1.0
serilog.sinks.async-1.5.0
serilog.sinks.console-3.1.1
serilog.sinks.console-4.0.1
serilog.sinks.debug-1.0.1
serilog.sinks.file-4.1.0
serilog.sinks.file-5.0.0
sharedmemory-2.3.2
sharpcompress-0.17.1
sharpgen.runtime-2.0.0-beta.10
sharpgen.runtime.com-2.0.0-beta.10
sixlabors.imagesharp-1.0.4
system.appcontext-4.3.0
system.buffers-4.3.0
system.buffers-4.4.0
system.buffers-4.5.1
system.codedom-6.0.0
system.collections-4.3.0
system.collections.concurrent-4.3.0
system.collections.immutable-5.0.0
system.collections.nongeneric-4.3.0
system.collections.specialized-4.3.0
system.componentmodel-4.3.0
system.componentmodel.primitives-4.3.0
system.componentmodel.typeconverter-4.3.0
system.configuration.configurationmanager-6.0.0
system.console-4.3.0
system.diagnostics.debug-4.3.0
system.diagnostics.diagnosticsource-4.3.0
system.diagnostics.tools-4.3.0
system.diagnostics.tracesource-4.3.0
system.diagnostics.tracing-4.3.0
system.drawing.common-6.0.0
system.dynamic.runtime-4.3.0
system.globalization-4.3.0
system.globalization.calendars-4.3.0
system.globalization.extensions-4.3.0
system.io-4.3.0
system.io.compression-4.3.0
system.io.compression.zipfile-4.3.0
system.io.filesystem-4.0.1
system.io.filesystem-4.3.0
system.io.filesystem.primitives-4.0.1
system.io.filesystem.primitives-4.3.0
system.linq-4.3.0
system.linq.expressions-4.3.0
system.management-6.0.0
system.memory-4.5.4
system.net.http-4.3.0
system.net.nameresolution-4.3.0
system.net.primitives-4.3.0
system.net.sockets-4.3.0
system.numerics.vectors-4.4.0
system.numerics.vectors-4.5.0
system.objectmodel-4.3.0
system.private.uri-4.3.0
system.reflection-4.3.0
system.reflection.emit-4.3.0
system.reflection.emit.ilgeneration-4.3.0
system.reflection.emit.ilgeneration-4.7.0
system.reflection.emit.lightweight-4.3.0
system.reflection.emit.lightweight-4.7.0
system.reflection.extensions-4.3.0
system.reflection.metadata-5.0.0
system.reflection.primitives-4.3.0
system.reflection.typeextensions-4.3.0
system.resources.resourcemanager-4.3.0
system.runtime-4.3.0
system.runtime.compilerservices.unsafe-4.4.0
system.runtime.compilerservices.unsafe-4.5.0
system.runtime.compilerservices.unsafe-4.5.3
system.runtime.compilerservices.unsafe-5.0.0
system.runtime.compilerservices.unsafe-6.0.0
system.runtime.extensions-4.3.0
system.runtime.handles-4.0.1
system.runtime.handles-4.3.0
system.runtime.interopservices-4.3.0
system.runtime.interopservices.runtimeinformation-4.3.0
system.runtime.numerics-4.3.0
system.security.accesscontrol-6.0.0-preview.5.21301.5
system.security.accesscontrol-6.0.0
system.security.claims-4.3.0
system.security.cryptography.algorithms-4.3.0
system.security.cryptography.cng-4.3.0
system.security.cryptography.csp-4.3.0
system.security.cryptography.encoding-4.3.0
system.security.cryptography.openssl-4.3.0
system.security.cryptography.primitives-4.3.0
system.security.cryptography.protecteddata-6.0.0
system.security.cryptography.x509certificates-4.3.0
system.security.permissions-6.0.0
system.security.principal-4.3.0
system.security.principal.windows-4.3.0
system.security.principal.windows-5.0.0
system.security.principal.windows-6.0.0-preview.5.21301.5
system.text.encoding-4.0.11
system.text.encoding-4.3.0
system.text.encoding.codepages-4.5.1
system.text.encoding.codepages-6.0.0
system.text.encoding.extensions-4.3.0
system.text.encodings.web-6.0.0
system.text.json-6.0.6
system.text.regularexpressions-4.3.0
system.threading-4.3.0
system.threading.overlapped-4.3.0
system.threading.tasks-4.3.0
system.threading.tasks.extensions-4.3.0
system.threading.tasks.extensions-4.5.4
system.threading.threadpool-4.3.0
system.threading.timer-4.3.0
system.windows.extensions-6.0.0
system.xml.readerwriter-4.3.0
system.xml.xdocument-4.3.0
system.xml.xmldocument-4.3.0
vk-1.0.25
vortice.d3dcompiler-2.1.0
vortice.direct3d11-2.1.0
vortice.directx-2.1.0
vortice.dxgi-2.1.0
vortice.mathematics-1.3.24
"

inherit desktop

DESCRIPTION="Custom Launcher for Final Fantasy XIV Online CN (Crossplatform rewrite)"
HOMEPAGE="https://github.com/ottercorp/XIVLauncher.Core/"
LICENSE="GPL-3"
RESTRICT="strip"

SLOT="0"
KEYWORDS="~amd64"

IUSE="+aria2 act dx9 +libsecret abi_x86_32"
REQUIRED_USE="act? ( abi_x86_32 ) dx9? ( abi_x86_32 )"

BDEPEND="dev-dotnet/dotnet-sdk-bin:6.0"
RDEPEND="
	aria2? ( net-misc/aria2 )
	libsecret? ( app-crypt/libsecret )
	media-libs/libsdl2[abi_x86_32?]
	sys-apps/attr[abi_x86_32?]
	media-libs/fontconfig[abi_x86_32?]
	media-libs/lcms[abi_x86_32?]
	dev-libs/libxml2[abi_x86_32?]
	x11-libs/libXcursor[abi_x86_32?]
	x11-libs/libXrandr[abi_x86_32?]
	x11-libs/libXdamage[abi_x86_32?]
	x11-libs/libXi[abi_x86_32?]
	sys-devel/gettext[abi_x86_32?]
	media-libs/freetype:2[abi_x86_32?]
	media-libs/glu[abi_x86_32?]
	x11-libs/libSM[abi_x86_32?]
"

GITHUB_USER="ottercorp"
XIVL_REPO="XIVLauncher.Core"
XIVQL_REPO="FFXIVQuickLauncher"
XIVL_COMMIT="aab68e5112ee7a56930e30f587d239f8a076959d"
XIVQL_COMMIT="75ab33dd245ee1588dea571cf11d4f24ebc4941f"

nuget_uris() {
	local -r regex='^([a-zA-Z0-9_.-]+)-([0-9]+\.[0-9]+\.[0-9]+.*)$'
	local nuget
	for nuget in ${NUGETS}; do
		local name version url
		[[ ${nuget} =~ ${regex} ]]
		name="${BASH_REMATCH[1]}"
		version="${BASH_REMATCH[2]}"
		url="https://api.nuget.org/v3-flatcontainer/${name}/${version}/${name}.${version}.nupkg"
		echo "${url}"
	done
}

SRC_URI="
https://github.com/${GITHUB_USER}/${XIVL_REPO}/archive/${XIVL_COMMIT}.tar.gz -> ${P}-${XIVL_COMMIT}.tar.gz
https://github.com/${GITHUB_USER}/${XIVQL_REPO}/archive/${XIVQL_COMMIT}.tar.gz -> ${XIVQL_REPO}-${XIVQL_COMMIT}.tar.gz
$(nuget_uris)
"

S="${WORKDIR}/${XIVL_REPO}-${XIVL_COMMIT}"


src_prepare() {
	eapply_user
	rm -r "${WORKDIR}/${XIVL_REPO}-${XIVL_COMMIT}/lib/FFXIVQuickLauncher"
	mv "${WORKDIR}/${XIVQL_REPO}-${XIVQL_COMMIT}" \
		"${WORKDIR}/${XIVL_REPO}-${XIVL_COMMIT}/lib/FFXIVQuickLauncher"
	sed -i "s/git -C .* describe --long --always --dirty &gt; \$(VerFile)/echo ${PV}/" \
		src/XIVLauncher.Core/XIVLauncher.Core.csproj
	cd "${S}/src/XIVLauncher.Core"
	dotnet restore --source "${DISTDIR}" -r linux-x64
}

src_compile() {
	mkdir -p "${S}/build"
	cd "${S}/src"
	pushd "XIVLauncher.Core"
	dotnet publish --no-restore -r linux-x64 --sc -o "${S}/build" --configuration Release -p:DefineConstants=WINE_XIV_ARCH_LINUX
	popd
	cp ../misc/linux_distrib/XIVLauncher.desktop ../misc/linux_distrib/XIVLauncher-CN.desktop
	sed -i 's/xivlauncher/xivlauncher-cn/g' ../misc/linux_distrib/XIVLauncher-CN.desktop
	sed -i 's/Name=XIVLauncher/Name=XIVLauncher-CN/g' ../misc/linux_distrib/XIVLauncher-CN.desktop
}

src_install() {
	cd "${S}/build"
	domenu ../misc/linux_distrib/XIVLauncher-CN.desktop
	newicon -s 512 ../misc/linux_distrib/512.png xivlauncher-cn.png
	insinto opt/xivlauncher-cn
	doins -r *
	fperms +x /opt/xivlauncher-cn/XIVLauncher.Core
	dosym /opt/xivlauncher-cn/XIVLauncher.Core /usr/bin/xivlauncher-cn
}
