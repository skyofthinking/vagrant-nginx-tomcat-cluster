# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Nginx + Tomcat Cluster
  config.vm.define :nginx do |nginx|
    nginx.vm.box = "ubuntu-trusty-server"
    # nginx.vm.network :forwarded_port, guest: 80, host: 80
    # nginx.vm.network :public_network, ip: "192.168.1.140"
    nginx.vm.network :private_network, ip: "66.66.66.10"
    nginx.vm.synced_folder "./cluster", "/home/vagrant/cluster", :mount_options => ["dmode=777","fmode=777"]
    nginx.vm.provision :shell, :path => "nginx.sh"
    nginx.vm.provider :virtualbox do |vb|
      vb.name = "nginx"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
    end
  end

  config.vm.define :nginxbak do |nginxbak|
    nginxbak.vm.box = "ubuntu-trusty-server"
    # nginxbak.vm.network :forwarded_port, guest: 80, host: 80
    # nginxbak.vm.network :public_network, ip: "192.168.1.140"
    nginxbak.vm.network :private_network, ip: "66.66.66.11"
    nginxbak.vm.synced_folder "./cluster", "/home/vagrant/cluster", :mount_options => ["dmode=777","fmode=777"]
    nginxbak.vm.provision :shell, :path => "nginxbak.sh"
    nginxbak.vm.provider :virtualbox do |vb|
      vb.name = "nginxbak"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
    end
  end

  # Tomcat1
  config.vm.define :tomcat1 do |tomcat1|
    tomcat1.vm.box = "ubuntu-trusty-server"
    # tomcat1.vm.network :forwarded_port, guest: 8005, host: 8005
    # tomcat1.vm.network :forwarded_port, guest: 8080, host: 8080
    tomcat1.vm.network :public_network, ip: "192.168.1.141"
    tomcat1.vm.network :private_network, ip: "66.66.66.20"
    tomcat1.vm.synced_folder "./cluster", "/home/vagrant/cluster", :mount_options => ["dmode=777","fmode=777"]
    tomcat1.vm.provision :shell, :path => "tomcat1.sh"
    tomcat1.vm.provider :virtualbox do |vb|
      vb.name = "tomcat1"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
    end
  end

  # Tomcat2
  config.vm.define :tomcat2 do |tomcat2|
    tomcat2.vm.box = "ubuntu-trusty-server"
    # tomcat2.vm.network :forwarded_port, guest: 8005, host: 8005
    # tomcat2.vm.network :forwarded_port, guest: 8080, host: 8080
    # tomcat2.vm.network :public_network, ip: "192.168.1.142"
    tomcat2.vm.network :private_network, ip: "66.66.66.30"
    tomcat2.vm.synced_folder "./cluster", "/home/vagrant/cluster", :mount_options => ["dmode=777","fmode=777"]
    tomcat2.vm.provision :shell, :path => "tomcat2.sh"
    tomcat2.vm.provider :virtualbox do |vb|
      vb.name = "tomcat2"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
    end
  end

  # Tomcat3
  config.vm.define :tomcat3 do |tomcat3|
    tomcat3.vm.box = "ubuntu-trusty-server"
    # tomcat3.vm.network :forwarded_port, guest: 8005, host: 8005
    # tomcat3.vm.network :forwarded_port, guest: 8080, host: 8080
    # tomcat3.vm.network :public_network, ip: "192.168.1.143"
    tomcat3.vm.network :private_network, ip: "66.66.66.40"
    tomcat3.vm.synced_folder "./cluster", "/home/vagrant/cluster", :mount_options => ["dmode=777","fmode=777"]
    tomcat3.vm.provision :shell, :path => "tomcat3.sh"
    tomcat3.vm.provider :virtualbox do |vb|
      vb.name = "tomcat3"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
    end
  end

end