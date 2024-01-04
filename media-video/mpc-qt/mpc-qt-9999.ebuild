EAPI=8

inherit git-r3 qmake-utils desktop xdg-utils

DESCRIPTION="Media Player Classic Qute Theater, A clone of Media Player Classic reimplemented in Qt."
HOMEPAGE="https://github.com/mpc-qt/mpc-qt/"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="-*"

IUSE="comic"

BDEPEND="
	dev-vcs/git
	sys-devel/make
"

RDEPEND="
	dev-qt/qtbase:6
	dev-qt/qtsvg:6
	media-video/mpv[libmpv]
	comic? ( media-video/mpv[archive] )
"

EGIT_REPO_URI="https://github.com/mpc-qt/mpc-qt.git"

src_configure() {
	eqmake6 PREFIX=/usr MPCQT_VERSION=${PV}
}

src_install() {
	mkdir output
	emake DESTDIR=./output INSTALL_ROOT=./output install
	cd output
	
	into /
	dobin usr/bin/mpc-qt
	dodoc usr/share/doc/mpc-qt/ipc.md
	domenu usr/share/applications/mpc-qt.desktop
	doicon -s scalable usr/share/icons/hicolor/scalable/apps/mpc-qt.svg
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}