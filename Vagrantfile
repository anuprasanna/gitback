# This vagrant box can be used to test the GitBack script independently before installing in to any servers.
#
# NOTE: Make sure you have the ubuntu/xenial64 base box installed with below command
# > vagrant box add ubuntu/xenial64

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.hostname = "ubuntu-xenial"
    config.vm.network :private_network, ip: "192.168.10.10"
  
    config.vm.provider :virtualbox do |vb|
      vb.customize [
        "modifyvm", :id,
        "--cpuexecutioncap", "40",
        "--memory", "1024",
      ]
    end

    config.vm.provision :shell, :path => "vagrantbox_bootstrap.sh"

    config.vm.provision "file", source: "gitback.py", destination: "gitback/gitback.py"
    config.vm.provision "file", source: "setup.py", destination: "gitback/setup.py"

  end