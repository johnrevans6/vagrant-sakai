Vagrant.configure("2") do |config|
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "sakai.local"

  config.vm.network :forwarded_port, guest: 8080, host: 8888
  config.vm.network :forwarded_port, guest: 8000, host: 9999

  JDK = "jdk-8u271-linux-x64"
  config.vm.provision :shell, privileged: true, :path => "helpers/apt.sh"
  config.vm.provision :shell, privileged: true, :path => "helpers/install_java.sh", :args => JDK
  config.vm.provision :shell, privileged: true, :path => "helpers/install_maven.sh"
end
