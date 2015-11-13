# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/wily64"
  # The url from where the 'config.vm.box' box will be fetched if it doesn't exist
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/wily/current/wily-server-cloudimg-amd64-vagrant-disk1.box"
  #config.vm.hostname = 'UbuntuWily64'
  config.vm.provision :shell, inline: "hostnamectl set-hostname UbuntuWily64" #Workaround to set hostname

  #config.vbguest.auto_update = true

  #config.vm.network :forwarded_port, guest: 3000, host: 3000
  #config.vm.network :forwarded_port, guest: 9200, host: 9200

  config.vm.provision :shell, path: 'bootstrap/bootstrap.sh', keep_color: true
end
