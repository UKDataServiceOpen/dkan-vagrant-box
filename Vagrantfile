# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.box = "mohnjatthews/lamp"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "private_network", ip: "192.168.33.10"
    
    # Run the install scripts.
    config.vm.provision :shell, path: "bootstrap.sh"
    
    # Sync THIS folder (where Vagrantfile is located) with /var/www INSIDE the virtual machine.
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    
    # Increase RAM available to virtual machine to 2GB.
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
    end
end
