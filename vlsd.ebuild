EAPI=4
ANT_TASKS="ant"
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
	unset ANT_OPTS
	# echo "${ANT_OPTS}"
	# eant || die "eant is failed"
	eant -Djavac.args="-includeantruntime=false -encoding UTF-8" \
		 -Djava6.home=${JAVA_HOME} || die
}