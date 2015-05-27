# encoding : utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "centos65-x86_64-20140116"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.network "private_network", ip: "192.168.33.102"
  config.vm.network :forwarded_port, guest:5432, host:55432
  config.vm.hostname = "postgresql-server"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "main.yml"
  end
end
