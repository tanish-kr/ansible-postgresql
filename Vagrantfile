# encoding : utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"
  config.vm.network "private_network", ip: "192.168.33.102"
  config.vm.network :forwarded_port, guest:5432, host:55432
  config.vm.hostname = "postgresql-server"

  # virtualbox customize
  config.vm.provider "virtualbox" do |v|
    v.name = "postgresql-server"
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = {
      user: "vagrant",
      dbuser: "sample-ansible",
      dbpass: "abcdefg",
      dbname: "ansible-db"
    }
    ansible.playbook = "postgresql-playbook.yml"
  end
end
