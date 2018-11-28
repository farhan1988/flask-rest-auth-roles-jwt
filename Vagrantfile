# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANT_API_VERSION     = "2"
LOCAL_DEV_IP            = "192.168.30.1"
# Please don't change it unless you know what you're doing.
Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box_download_insecure   = true
  config.vm.hostname                = "flask-rest-auth-roles-jwt"
  config.vm.box                     = "centos/7"

  config.ssh.insert_key             = false
  config.ssh.forward_agent          = true
  config.ssh.forward_agent          = ['~/.vagrant.d/insecure_private_key']
  
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.network "private_network", ip: LOCAL_DEV_IP
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/src", type: "virtualbox", mount_options: ["dmode=775,fmode=664"]

  config.vm.provider "virtualbox" do |vb|
    vb.name   = "GITHUB - Auth JWT Flask MySQL"
    vb.memory = "1024"
    vb.cpus   = "1"
  end
end
