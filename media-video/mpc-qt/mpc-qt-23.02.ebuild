EAPI=8

inherit qmake-utils desktop xdg-utils

DESCRIPTION="Media Player Classic Qute Theater, A clone of Media Player Classic reimplemented in Qt."
HOMEPAGE="https://github.com/mpc-qt/mpc-qt/"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64"

IUSE="comic"

BDEPEND="
	sys-devel/make
"

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtx11extras:5
	dev-qt/qtsvg:5
	media-video/mpv[libmpv]
	comic? ( media-video/mpv[archive] )
"

SRC_URI="
https://github.com/mpc-qt/mpc-qt/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

src_configure() {
	eqmake5 PREFIX=/usr MPCQT_VERSION=${PV}
}

src_install() {
	mkdir output
	emake DESTDIR=./output INSTALL_ROOT=./output install
	cd output
	
	into /
	dobin usr/bin/mpc-qt
	dodoc usr/share/doc/mpc-qt/ipc.md
	doinfo usr/share/metainfo/io.github.mpc_qt.Mpc-Qt.appdata.xml
	domenu usr/share/applications/io.github.mpc_qt.Mpc-Qt.desktop
	doicon -s scalable usr/share/icons/hicolor/scalable/apps/mpc-qt.svg
	insinto /usr/share/mpc-qt
	doins -r usr/share/mpc-qt/translations
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}