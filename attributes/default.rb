
case node['platform_family']
	when "debian"
		default['java']['path'] = "JAVA_HOME=/usr/local/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"
	when "rhel"
		default['java']['path'] = "JAVA_HOME=/usr/java/jdk1.7.0_51\n
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin\n
export JAVA_HOME\n
export PATH"
	end

default['df_maven']['source'] = "file:///vagrant/binaries/apache-maven-3.1.1-bin.tar.gz" 