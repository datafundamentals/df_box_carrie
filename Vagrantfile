# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.hostname = "df-box-carrie-berkshelf"

  config.vm.box = "CentOS 6.4 x86_64 Minimal"

  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"

  config.vm.network :private_network, ip: "192.168.33.44"


  # config.vm.network :public_network


   config.vm.synced_folder "/vagrant/binaries", "/vagrant/binaries"

  # Example for VirtualBox:
  #
  # config.vm.provider :virtualbox do |vb|
  #   vb.gui = true
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # information on available options.


  # config.berkshelf.berksfile_path = "./Berksfile"

  config.berkshelf.enabled = true

  # config.berkshelf.only = []

  # config.berkshelf.except = []

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[df_box_carrie::default]"
    ]
  end
end
