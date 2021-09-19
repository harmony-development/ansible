Vagrant.configure("2") do |config|
    config.vm.box = "fedora/33-cloud-base"
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "vagrant.yml"
        ansible.become = true
    end
end