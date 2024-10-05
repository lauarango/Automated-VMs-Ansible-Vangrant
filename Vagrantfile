# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = "generic/ubuntu2004"
    subconfig.vm.hostname = "master"
    subconfig.vm.provider "virtualbox"

    subconfig.vm.network "public_network", bridge: "BRIDGE"
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "2048" # Allocate 2GB of RAM
      vb.cpus = 2        # Allocate 2 CPUs
    end

    subconfig.vm.provision "ansible" do |a|
      a.verbose = "v"
      a.playbook = "master_playbook.yaml"
    end
  end # End of master VM

  config.vm.define "auxiliar" do |subconfig| # Move auxiliar definition outside of master
    subconfig.vm.box = "generic/ubuntu2004"
    subconfig.vm.hostname = "auxiliar"
    subconfig.vm.provider "virtualbox"

    subconfig.vm.network "public_network", bridge: "BRIDGE"
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "2048" # Allocate 2GB of RAM
      vb.cpus = 2        # Allocate 2 CPUs
    end

    subconfig.vm.provision "ansible" do |a|
      a.verbose = "v"
      a.playbook = "auxiliar_playbook.yaml" # You might want to have a separate playbook for auxiliar
    end
  end # End of auxiliar VM
end # End of Vagrant configuration
