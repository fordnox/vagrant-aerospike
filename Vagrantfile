Vagrant.configure("2") do |config|

  config.vm.box = "chef/centos-6.5"
  
  config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  config.vm.define "monitor" do |monitor|
    monitor.vm.network "private_network", ip: "10.20.30.10"
    monitor.vm.provision :shell, :path => "./monitor.sh"
  end

  config.vm.define "node1" do |node1|
    node1.vm.network "private_network", ip: "10.20.30.11"
    node1.vm.provision :shell, :path => "./node.sh"
  end

  config.vm.define "node2" do |node2|
    node2.vm.network "private_network", ip: "10.20.30.12"
    node2.vm.provision :shell, :path => "./node.sh"
  end

end
