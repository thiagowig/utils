wget http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

tar -zxvf apache-maven-3.3.3-bin.tar.gz

mv apache-maven-3.3.3 ~/dev/tools/

export M2_HOME=~/dev/tools/apache-maven-3.3.3

export M2=$M2_HOME/bin

export PATH=$M2:$PATH
