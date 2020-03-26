node('Remote') {
  git url: 'https://github.com/Tejaon/Random_GIT.git'
  def v = version(readFile('build.xml'))
  if (v) {
    echo "Building version ${v}"
	  def matcher = readFile('build.xml') =~ '<version>(.+)</version>'
	  matcher ? matcher[0][1] : null
  }
  def mvnHome = tool 'maven'
  sh "/usr/bin/mvn -B -Dmaven.test.failure.ignore dist"
 }
