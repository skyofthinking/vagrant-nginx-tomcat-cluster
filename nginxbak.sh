# 更新包 
# http://ju.outofmemory.cn/entry/107009
# sudo cp /home/vagrant/cluster/sources.list /etc/apt/
sudo cp /etc/apt/sources.list /home/vagrant/cluster/01back/nginx/
sudo apt-get update
# 安装Nginx
sudo apt-get install python-software-properties
sudo apt-get update
sudo apt-get install -y nginx
sudo cp /etc/nginx/nginx.conf /home/vagrant/cluster/01back/nginx/
sudo cp /home/vagrant/cluster/nginx.conf /etc/nginx/
sudo service nginx reload

# 虚拟IP
sudo ifconfig  eth1:0 66.66.66.19 netmask 66.66.66.255

# 配置keepalived.conf
sudo apt-get install -y keepalived
sudo cp /home/vagrant/cluster/nginx/backup/keepalived.conf /etc/keepalived/
sudo cp /home/vagrant/cluster/nginx/backup/check_nginx.sh /etc/keepalived/
sudo chmod 777 -R /etc/keepalived/
sudo service keepalived reload

