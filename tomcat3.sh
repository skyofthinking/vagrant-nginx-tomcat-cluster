#安装JDK和设置JAVA_HOME
sudo apt-get update
# sudo apt-get -y install openjdk-7-jdk
sudo tar zxvf /home/vagrant/cluster/jdk-7u80-linux-x64.tar.gz -C /home/vagrant
sudo mv jdk1.7.0_80/ Java7/

sudo -i
sudo echo " ">>/etc/profile
sudo echo "# JDK ENV">>/etc/profile
sudo echo "JAVA_HOME=/home/vagrant/Java7">>/etc/profile
sudo echo 'PATH=$JAVA_HOME/bin:$PATH'>>/etc/profile
sudo echo 'CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar'>>/etc/profile
source /etc/profile
su - vagrant

#下载Tomcat并解压
#sudo wget http://mirrors.cnnic.cn/apache/tomcat/tomcat-7/v7.0.62/bin/apache-tomcat-7.0.62.tar.gz
sudo tar zxvf /home/vagrant/cluster/apache-tomcat-7.0.62.tar.gz -C /home/vagrant
sudo cp -r /home/vagrant/cluster/tomcat3/* /home/vagrant/apache-tomcat-7.0.62/
sudo cp -r /home/vagrant/cluster/tomcat-webapp/cluster /home/vagrant/apache-tomcat-7.0.62/webapps
# sudo chmod a+rwx -R /home/vagrant/apache-tomcat-7.0.62/logs
sudo chmod -R 777 /home/vagrant/apache-tomcat-7.0.62
/home/vagrant/apache-tomcat-7.0.62/bin/startup.sh
sudo cp /home/vagrant/cluster/tomcat /etc/init.d/
sudo chmod 755 /etc/init.d/tomcat
sudo update-rc.d -f tomcat defaults

#成功后，添加到系统自服务：update-rc.d -f tomcat defaults
#删除自启动：sudo update-rc.d -f tomcat remove
#cp -r /home/vagrant/cluster/tomcat1/* /home/vagrant/apache-tomcat-7.0.62/
#cp -r /home/vagrant/cluster/tomcat2/* /home/vagrant/apache-tomcat-7.0.62/
#cp -r /home/vagrant/cluster/tomcat3/* /home/vagrant/apache-tomcat-7.0.62/
#vagrant package tomcat1 tomcat_base
#ps -ef|grep tomcat
#vagrant package tomcat1 --output tomcat_base