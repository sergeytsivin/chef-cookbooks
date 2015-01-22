# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network :private_network, type: :dhcp

    # Share an additional folder to the guest VM. 
    config.vm.synced_folder "/www", "/www"
    config.vm.hostname = "mytest"
    config.omnibus.chef_version = "11.12.2"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048"]
    end

    # Enable provisioning with chef solo, specifying a cookbooks path, roles
    # path, and data_bags path (all relative to this Vagrantfile), and adding
    # some recipes and/or roles.
    #
    config.vm.provision :chef_solo do |chef|
        chef.log_level = "info"
        chef.cookbooks_path = ["recipes/cookbooks", "recipes/site-cookbooks" ]
        chef.add_recipe "apt"
        chef.add_recipe "timezone"
        # You may also specify custom JSON attributes:
        chef.json = {
            :tz => 'Europe/Moscow'
        }
    end

end
