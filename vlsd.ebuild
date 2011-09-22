EAPI=4
ANT_TASKS="ant"
DESPCRIPTION="Virtual Large Scale Disk"
inherit subversion java-pkg-2 java-ant-2

ESVN_REPO_URI="http://svn.sourceforge.jp/svnroot/vlsd/vlsd"
HOMEPAGE="http://sourceforge.jp/projects/vlsd"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND="sys-block/nbd"
# dev-java/ant"
DEPEND=">=virtual/jdk-1.6"

S="${WORKDIR}/${PV}"

src_compile() {
	unset ANT_OPTS
	eant jar || die
}

src_install() {
	java-pkg_dojar vlsd.jar
	# cp vlsd.jar "${D}/usr/share/" install || die
}