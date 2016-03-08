# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder "../.", "/home/vagrant/projects"

  config.vm.provider "virtualbox" do |v|
    v.name = "MF Vagrant Machine"
    v.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # Use [berkshelf](http://berkshelf.com/)
  config.berkshelf.enabled = true

  config.vm.network :forwarded_port, guest: 80, host: 8888

  # Update the list of packages
  config.vm.provision :shell, :inline => "sudo apt-get update -y"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "nginx"
    chef.add_recipe "nodejs"
    chef.add_recipe "mongodb"

    chef.json = { :nginx => { :default_site_enabled => true } }
  end

  # Run Shell Scripts
  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end

end
