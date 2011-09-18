EAPI=4
WANT_ANT_TASKS="ant-nodeps"
DESPCRIPTION=""
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
	eant
	# eant -Djavac.args="-encoding UTF-8" -Djava6.home=${JAVA_HOME}
}