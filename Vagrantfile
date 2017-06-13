# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The '2' in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # config.env.enable
  config.vm.box = 'ubuntu/trusty64' unless ENV['VAGRANT_BOX']
  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 1313, host: 1313
  config.vm.synced_folder '.', '/vagrant', nfs: true
    # Customize the amount of memory on the VM:
  memory = ENV['GO_VM_MEMORY'] ? ENV['GO_VM_MEMORY'] : 6024
  cpus = ENV['GO_VM_CPU'] ? ENV['GO_VM_CPU'] : 2
  name = ENV['GO_VM_NAME'] ? ENV['GO_VM_NAME'] : 'hugo_development'

  config.vm.provider 'virtualbox' do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    vb.memory = memory
    vb.name = name
    vb.cpus = cpus
  end
  puts ' ---------------------------------------------------------------------'\
    '-----------------------------------'
  puts '               memory                             name                '\
    '             CPUS               '
  puts ' ---------------------------------------------------------------------'\
    '-----------------------------------'
  puts "                 #{memory}                         #{name}           "\
    "               #{cpus}           "
  puts ' --------------------------------------------------------------------'\
    '------------------------------------'
  config.vm.provision 'shell', path: 'provision/install_utils.sh'
  config.vm.provision 'shell', path: 'provision/install_go.sh', privileged: false
  config.vm.provision 'shell', path: 'provision/install_hugo.sh',  privileged: false
end
